import org.apache.shiro.crypto.hash.Sha256Hash
import com.lucasian.cheques.*
class BootStrap {

    def init = { servletContext ->
        def admin = new Rol(name: "administrador")
        admin.addToPermissions("*:*")
        admin.save()
        def empleado = new Rol(name: "empleado")
        empleado.addToPermissions("*:*")
        empleado.save()
        def usuario = new Rol(name:"usuario")
        usuario.addToPermissions("*:*")
        usuario.save()
        def adminUser = new ShiroUser(username: "user123", passwordHash: new Sha256Hash("password").toHex())
        adminUser.setRol(admin)
        adminUser.save()
        
        def establecimiento = new Establecimiento(categoria: "Alimentos", nombre:"Carl´s Jr.")
        establecimiento.save()
        def sucursal = new Sucursal(direccion:"Magdalena 37", clave:"MA2")
        sucursal.setEstablecimiento(establecimiento)
        sucursal.save()
        def empleadoUser = new Empleado(username: "carls", passwordHash: new Sha256Hash("password").toHex(), puesto:"Gerente", email:"angelpmza@gmail.com", nombre:"Carlos Navarrete")
        empleadoUser.setRol(empleado);
        empleadoUser.setSucursal(sucursal)
        empleadoUser.save()
        System.out.println("EMPLEADO USER:"+empleadoUser.id)
        
        def usuarioComun = new Usuario(username:"comun", passwordHash: new Sha256Hash("password").toHex(), nombre:"Angel", apellidos:"Pimentel")
        usuarioComun.setRol(usuario)
        usuarioComun.save(flush:true, failOnError:true)
        System.out.println("USUARIO COMUN:"+usuarioComun.id)
        
        def serie = new Serie(clave: "W2013", nombre:"Invierno 2013", vigencia: new Date())
        serie.save()
        System.out.println(serie.id)
        
        def cheque1 = new Cheque(texto: "Descuento de 25%")
        cheque1.setSucursal(sucursal)
        cheque1.setSerie(serie)
        cheque1.save()
        
        def cheque2 = new Cheque(texto: "Descuento de 50%")
        cheque2.setSucursal(sucursal) 
        cheque2.setSerie(serie)
        cheque2.save()
        
        def cheque3 = new Cheque(texto: "Descuento de 75%")
        cheque3.setSucursal(sucursal)
        cheque3.setSerie(serie)
        cheque3.save()
        
        def chequera = new Chequera(numeroSerie:"A12")
        chequera.setSerie(serie)
        chequera.setUsuario(usuarioComun)
        chequera.save()
        
        
    }
    def destroy = {
    }
}
