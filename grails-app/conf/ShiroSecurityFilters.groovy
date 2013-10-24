/**
 * Generated by the Shiro plugin. This filters class protects all URLs
 * via access control by convention.
 */
import org.apache.shiro.SecurityUtils
class ShiroSecurityFilters {
       def filters = {             
              all(uri:"/**") {
                     before = {
                            // Ignore direct views (e.g. the default main index page).
                            println("EL CONTROLADOR::"+controllerName)
                            if (!controllerName){
                                   if(SecurityUtils.subject.hasRole("empleado")){
                                          redirect(controller: "consulta", action: "index")
                                   }                      
                                   return true
                            } 
                            // Access control by convention.
                            accessControl()
                     }
              }
       }
}
