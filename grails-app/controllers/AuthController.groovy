import org.apache.shiro.SecurityUtils
import org.apache.shiro.authc.AuthenticationException
import org.apache.shiro.authc.UsernamePasswordToken
import org.apache.shiro.web.util.SavedRequest
import org.apache.shiro.web.util.WebUtils
import org.apache.shiro.crypto.hash.Sha256Hash
import com.lucasian.cheques.Usuario
import grails.plugin.mail.*
import org.apache.commons.lang.RandomStringUtils

class AuthController {
       def shiroSecurityManager
       MailService mailService

       def index = { redirect(action: "login", params: params) }

       def login = {
              return [ username: params.username, rememberMe: (params.rememberMe != null), targetUri: params.targetUri ]
       }
       def cambiar ={
           
       }
       def recuperar = {
           
       }
       def enviarRecuperacion = {
              def usuario = Usuario.findByUsernameAndEmail(params.usuario, params.email)
              if(usuario?.email){
                     int randomStringLength = 12
                     String charset = (('a'..'z') + ('A'..'Z') + ('0'..'9')).join()
                     String randomPassword = RandomStringUtils.random(randomStringLength, charset.toCharArray())
                     mailService.sendMail {     
                            to usuario.email
                            subject "Recupera tu contraseña"
                            html( view:"/auth/email",model:[password: randomPassword, usuario:usuario])
                     }
                     usuario.passwordHash = new Sha256Hash(randomPassword).toHex()
                     flash.message = "Se ha enviado un correo a la direccion indicada con instrucciones para recuperar tu contraseña"
              }else{                  
                     flash.message = "No tenemos registro el usuario que indicaste"
              }           
       }
       def guardar ={
              if(params.password == "" || params.confirmPassword == "" || params.oldPassword == ""){
                     flash.message = message(code: "La constraseña no puede ser vacia")
                     redirect(action: "cambiar")
              }
              if(params.password == params.confirmPassword){
                     def usuario = Usuario.findByUsername(SecurityUtils.subject.principal)
                     if(usuario.passwordHash == new Sha256Hash(params.oldPassword).toHex()){
                            usuario.passwordHash = new Sha256Hash(params.password).toHex()
                            redirect(uri: "/")
                     }else{
                            flash.message = message(code: "Tu password actual no es correcto")
                            redirect(action: "cambiar")  
                     }
              }else{
                     flash.message = message(code: "La confirmacion no es igual, verifica")
                     redirect(action: "cambiar")
              }
       }
       def signIn = {
              def authToken = new UsernamePasswordToken(params.username, params.password as String)

              // Support for "remember me"
              if (params.rememberMe) {
                     authToken.rememberMe = true
              }
        
              // If a controller redirected to this page, redirect back
              // to it. Otherwise redirect to the root URI.
              def targetUri = params.targetUri ?: "/"
        
              // Handle requests saved by Shiro filters.
              SavedRequest savedRequest = WebUtils.getSavedRequest(request)
              if (savedRequest) {
                     targetUri = savedRequest.requestURI - request.contextPath
                     if (savedRequest.queryString) targetUri = targetUri + '?' + savedRequest.queryString
              }
        
              try{
                     // Perform the actual login. An AuthenticationException
                     // will be thrown if the username is unrecognised or the
                     // password is incorrect.
                     println(targetUri)
                     SecurityUtils.subject.login(authToken)
                     if(SecurityUtils.subject.hasRole("empleado")){
                            redirect(controller: "consulta", action: "index")
                     }else if(SecurityUtils.subject.hasRole("administrador")){
                            if(targetUri=="/"){
                                   redirect(controller: "dashboard", action:"index")
                            }else{
                                   redirect(uri: targetUri)
                            }                   
                     }else{
                            redirect(uri: targetUri)
                     }
                     log.info "Redirecting to '${targetUri}'."            
              }
              catch (AuthenticationException ex){
                     // Authentication failed, so display the appropriate message
                     // on the login page.
                     flash.message = "usuario/password invalido";
                     log.info "Authentication failure for user '${params.username}'."

                     // Keep the username and "remember me" setting so that the
                     // user doesn't have to enter them again.
                     def m = [ username: params.username ]
                     if (params.rememberMe) {
                            m["rememberMe"] = true
                     }

                     // Remember the target URI too.
                     if (params.targetUri) {
                            m["targetUri"] = params.targetUri
                     }

                     // Now redirect back to the login page.
                     redirect(action: "login", params: m)
              }
       }

       def signOut = {
              // Log the user out of the application.
              SecurityUtils.subject?.logout()
              webRequest.getCurrentRequest().session = null

              // For now, redirect back to the home page.
              redirect(uri: "/")
       }

       def unauthorized = {
        
       }
}
