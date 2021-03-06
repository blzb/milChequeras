package com.lucasian.cheques


import org.apache.shiro.crypto.hash.Sha256Hash
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmpleadoController {

       static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

       def index(Integer max) {
              params.max = Math.min(max ?: 10, 100)
              respond Empleado.list(params), model:[empleadoInstanceCount: Empleado.count()]
       }

       def show(Empleado empleadoInstance) {
              respond empleadoInstance
       }

       def create() {
              respond new Empleado(params)
       }

       @Transactional
       def save(Empleado empleadoInstance) {
              if(params.passwordHash != params.passwordConfirmHash){
                     flash.message = message(code: "La confirmación no es igual, verifica")
                     respond empleadoInstance.errors, view:'create'
                     return
              }

              empleadoInstance.rol = Rol.findByName("empleado")
              if (empleadoInstance == null) {
                     notFound()
                     return
              }

              if (empleadoInstance.hasErrors()) {
                     respond empleadoInstance.errors, view:'create'
                     return
              }
              empleadoInstance.passwordHash = new Sha256Hash(params.passwordHash).toHex()
              empleadoInstance.save flush:true

              request.withFormat {
                     form {
                            flash.message = message(code: 'default.created.message', args: [message(code: 'empleadoInstance.label', default: 'Empleado'), empleadoInstance.nombre+" "+empleadoInstance.apellidos])
                            redirect (controller:"tienda", action:"edit", id:empleadoInstance.tienda.id)
                     }
            '*' { respond empleadoInstance, [status: CREATED] }
              }
       }

       def edit(Empleado empleadoInstance) {
              respond empleadoInstance
       }

       @Transactional
       def update(Empleado empleadoInstance) {
              if(params.passwordHash != params.passwordConfirmHash){
                     flash.message = message(code: "La confirmación no es igual, verifica")
                     respond empleadoInstance.errors, view:'create'
                     return
              }

              if (empleadoInstance == null) {
                     notFound()
                     return
              }

              if (empleadoInstance.hasErrors()) {
                     respond empleadoInstance.errors, view:'edit'
                     return
              }
              empleadoInstance.passwordHash = new Sha256Hash(params.passwordHash).toHex()
              empleadoInstance.save flush:true

              request.withFormat {
                     form {
                            flash.message = message(code: 'default.updated.message', args: [message(code: 'Empleado.label', default: 'Empleado'),empleadoInstance.nombre+" "+empleadoInstance.apellidos])
                            redirect (controller:"tienda", action:"edit", id:empleadoInstance.tienda.id)
                     }
            '*'{ respond empleadoInstance, [status: OK] }
              }
       }

       @Transactional
       def delete(Empleado empleadoInstance) {

              if (empleadoInstance == null) {
                     notFound()
                     return
              }
              def idTienda = empleadoInstance.tienda.id
              empleadoInstance.delete flush:true

              request.withFormat {
                     form {
                            flash.message = message(code: 'default.deleted.message', args: [message(code: 'Empleado.label', default: 'Empleado'), empleadoInstance.nombre+" "+empleadoInstance.apellidos])
                            redirect (controller:"tienda", action:"edit", id:idTienda)
                     }
            '*'{ render status: NO_CONTENT }
              }
       }

       protected void notFound() {
              request.withFormat {
                     form {
                            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoInstance.label', default: 'Empleado'), params.id])
                            redirect action: "index", method: "GET"
                     }
            '*'{ render status: NOT_FOUND }
              }
       }
}
