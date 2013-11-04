import org.apache.shiro.crypto.hash.Sha256Hash
import com.lucasian.cheques.*
class BootStrap {

    def init = { servletContext ->
        def admin = new Rol(name: "administrador")
        admin.addToPermissions("*:*")
        admin.save()
        def empleado = new Rol(name: "empleado")
        empleado.addToPermissions("consulta:*")
        empleado.save()
        def vendedor = new Rol(name:"vendedor")
        vendedor.addToPermissions("chequera:*")
        vendedor.save()
        def adminUser = new Usuario(username: "user123", passwordHash: new Sha256Hash("password").toHex(), nombre:"Hector", apellidoPaterno:"Fernandez", email:"hector.fernandez@lucasianmexico.com")
        adminUser.setRol(admin)
        adminUser.save()
        def vendedorUser = new Vendedor(username: "vendedor1", passwordHash: new Sha256Hash("password").toHex(), nombre:"Angel", apellidoPaterno:"Pimentel", email:"angelpmza@gmail.com")
        vendedorUser.setRol(vendedor);
        vendedorUser.save()
        
        def sucursal = new Sucursal(direccion:"Magdalena 37", clave:"MA2", nombre:"Carls Jr")
        sucursal.save()
        def empleadoUser = new Empleado(username: "carls", passwordHash: new Sha256Hash("password").toHex(), puesto:"Gerente", email:"angelpmza@gmail.com", nombre:"Carlos", apellidoPaterno:"Navarrete")
        empleadoUser.setRol(empleado);
        empleadoUser.setSucursal(sucursal)
        empleadoUser.save()
        System.out.println("EMPLEADO USER:"+empleadoUser.id)
        
        
        def serie = new Serie(clave: "W2013", nombre:"Invierno 2013", vigencia: new Date())
        serie.save()
        System.out.println(serie.id)
        
        def cheque1 = new Cheque(descripcion: "Descuento de 25%", clave:"A1")
        cheque1.setSucursal(sucursal)
        cheque1.setSerie(serie)
        cheque1.save()
        
        def cheque2 = new Cheque(descripcion: "Descuento de 50%", clave:"A2")
        cheque2.setSucursal(sucursal) 
        cheque2.setSerie(serie)
        cheque2.save()
        
        def cheque3 = new Cheque(descripcion: "Descuento de 75%", clave:"A3")
        cheque3.setSucursal(sucursal)
        cheque3.setSerie(serie)
        cheque3.save()
        
        def chequera = new Chequera(numero:"A12", nombre:"Angel", 
               apellidoPaterno:"Pimentel", apellidoMaterno:"Meza", email:"angelpmza@gmail.com", facebook:"angel.pimentel.90",
               twitter: "blzb", fechaNacimiento: new Date(), sexo:"Hombre")
        chequera.setSerie(serie)
        chequera.save()
        Locale.setDefault(new Locale("es","MX")) 
        
    }
    def destroy = {
    }
}
