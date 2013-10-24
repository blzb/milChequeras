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
        
        def sucursal = new Sucursal(direccion:"Magdalena 37", clave:"MA2", nombre:"Carls Jr")
        sucursal.save()
        def empleadoUser = new Empleado(username: "carls", passwordHash: new Sha256Hash("password").toHex(), puesto:"Gerente", email:"angelpmza@gmail.com", nombre:"Carlos", apellidos:"Navarrete")
        empleadoUser.setRol(empleado);
        empleadoUser.setSucursal(sucursal)
        empleadoUser.save()
        System.out.println("EMPLEADO USER:"+empleadoUser.id)
        
        
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
        
        def chequera = new Chequera(numero:"A12", nombre:"Angel", apellidos:"Pimentel", email:"angelpmza@gmail.com", facebook:"angel.pimentel.90", twitter: "blzb")
        chequera.setSerie(serie)
        chequera.save()
        
        
    }
    def destroy = {
    }
}
