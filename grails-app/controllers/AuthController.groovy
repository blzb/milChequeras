import org.apache.shiro.SecurityUtils
import org.apache.shiro.authc.AuthenticationException
import org.apache.shiro.authc.UsernamePasswordToken
import org.apache.shiro.web.util.SavedRequest
import org.apache.shiro.web.util.WebUtils
import org.apache.shiro.crypto.hash.Sha256Hash
import com.lucasian.cheques.ShiroUser
import grails.plugin.mail.*

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
           def usuario = ShiroUser.findByUsernameAndEmail(params.usuario, params.email)
           if(usuario?.email){
                  mailService.sendMail {     
                            to usuario.email
                            subject "Recupera tu contraseña"
                            body 'Tu contraseña es'
                     }
                     flash.message = "Se ha enviado un correo a la direccion indicada con instrucciones para recuperar tu contraseña"
           }else{                  
                  flash.message = "No tenemos registro el usuario que indicaste"
           }           
    }
    def guardar ={
           if(params.password == params.confirmPassword){
                  def usuario = ShiroUser.findByUsername(SecurityUtils.subject.principal)
                  usuario.passwordHash = new Sha256Hash(params.password).toHex()
                  redirect(uri: "/")
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
                          redirect(controller: "chequera", action:"index")
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
