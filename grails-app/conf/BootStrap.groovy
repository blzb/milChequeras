import org.apache.shiro.crypto.hash.Sha256Hash
import com.lucasian.cheques.*
class BootStrap {

    def init = { servletContext ->
        def admin = new Rol(name: "administrador")
        admin.addToPermissions("*:*")
        admin.save()
        def empleado = new Rol(name: "empleado")
        empleado.addToPermissions("consulta:*")
        empleado.addToPermissions("chequesUsados:*")
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
        
        def tienda = new Tienda(local:"Magdalena 37", clave:"MA2", nombre:"Carls Jr")
        tienda.save()
        def empleadoUser = new Empleado(username: "carls", passwordHash: new Sha256Hash("password").toHex(), puesto:"Gerente", email:"angelpmza@gmail.com", nombre:"Carlos", apellidoPaterno:"Navarrete")
        empleadoUser.setRol(empleado);
        empleadoUser.setTienda(tienda)
        empleadoUser.save()
        System.out.println("EMPLEADO USER:"+empleadoUser.id)
        
        def tienda1 = new Tienda(local:"Mexico tacuba 76", clave:"MT3", nombre:"Mexico Store")
        tienda1.save()
        
        def serie = new Serie(clave: "W2013", nombre:"Invierno 2013", vigencia: new Date())
        serie.save()
        System.out.println(serie.id)
        
        def serie1 = new Serie(clave: "Serie A", nombre:"Demo", vigencia: new Date())
        serie1.save()
        System.out.println(serie1.id)
        
        def serie2 = new Serie(clave: "Serie B", nombre:"Demostracion", vigencia: new Date())
        serie2.save()
        System.out.println(serie2.id)
        
        def serie3 = new Serie(clave: "Serie C", nombre:"serie c", vigencia: new Date())
        serie3.save()
        System.out.println(serie3.id)
        
        def cheque1 = new Cheque(descripcion: "Descuento de 25%", clave:"A1")
        cheque1.setTienda(tienda)
        cheque1.setSerie(serie)
        cheque1.save()
        
        def cheque2 = new Cheque(descripcion: "Descuento de 50%", clave:"A2")
        cheque2.setTienda(tienda) 
        cheque2.setSerie(serie)
        cheque2.save()
        
        def cheque3 = new Cheque(descripcion: "Descuento de 75%", clave:"A3")
        cheque3.setTienda(tienda)
        cheque3.setSerie(serie)
        cheque3.save()
        
        def cheque4 = new Cheque(descripcion: "Cheque 4", clave:"C4")
        cheque4.setTienda(tienda)
        cheque4.setSerie(serie1)
        cheque4.save()
        
        
        def cheque5 = new Cheque(descripcion: "Cheque 5", clave:"C5")
        cheque5.setTienda(tienda)
        cheque5.setSerie(serie1)
        cheque5.save()
        
        def cheque6 = new Cheque(descripcion: "Cheque 6", clave:"C6")
        cheque6.setTienda(tienda)
        cheque6.setSerie(serie2)
        cheque6.save()
        
        def cheque7 = new Cheque(descripcion: "Cheque 7", clave:"C7")
        cheque7.setTienda(tienda)
        cheque7.setSerie(serie2)
        cheque7.save()
        
        def cheque8 = new Cheque(descripcion: "Cheque 8", clave:"C8")
        cheque8.setTienda(tienda)
        cheque8.setSerie(serie3)
        cheque8.save()
        
        def cheque9 = new Cheque(descripcion: "Cheque 9", clave:"C9")
        cheque9.setTienda(tienda1)
        cheque9.setSerie(serie)
        cheque9.save()
        
        def chequera = new Chequera(numero:"A12", nombre:"Angel", 
               apellidoPaterno:"Pimentel", apellidoMaterno:"Meza", email:"angelpmza@gmail.com", facebook:"angel.pimentel.90",
               twitter: "blzb", fechaNacimiento: new Date(), sexo:"Hombre")
        chequera.setSerie(serie)
        chequera.save()
        Locale.setDefault(new Locale("es","MX")) 
        
        
        def chequeUsado= new ChequesUsados(referencia:"Referencia 1")
        chequeUsado.setChequera(chequera)
        chequeUsado.setCheque(cheque1)
        chequeUsado.save()
        
        def chequeUsado1= new ChequesUsados(referencia:"Referencia 2")
        chequeUsado1.setChequera(chequera)
        chequeUsado1.setCheque(cheque2)
        chequeUsado1.save()
        
        def chequeUsado3= new ChequesUsados(referencia:"Referencia 3")
        chequeUsado3.setChequera(chequera)
        chequeUsado3.setCheque(cheque9)
        chequeUsado3.save()
    }
    def destroy = {
    }
}
