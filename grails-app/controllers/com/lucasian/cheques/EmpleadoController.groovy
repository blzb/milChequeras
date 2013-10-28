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
        println("*************"+ Rol.findByName("empleado"))
        empleadoInstance.rol = Rol.findByName("empleado")
        if (empleadoInstance == null) {
            notFound()
            return
        }

        if (empleadoInstance.hasErrors()) {
            respond empleadoInstance.errors, view:'create'
            return
        }
        empleadoInstance.passwordHash = new Sha256Hash(empleadoInstance.passwordHash).toHex()
        empleadoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'empleadoInstance.label', default: 'Empleado'), empleadoInstance.nombre+" "+empleadoInstance.apellidos])
                redirect (controller:"sucursal", action:"edit", id:empleadoInstance.sucursal.id)
            }
            '*' { respond empleadoInstance, [status: CREATED] }
        }
    }

    def edit(Empleado empleadoInstance) {
        respond empleadoInstance
    }

    @Transactional
    def update(Empleado empleadoInstance) {
        if (empleadoInstance == null) {
            notFound()
            return
        }

        if (empleadoInstance.hasErrors()) {
            respond empleadoInstance.errors, view:'edit'
            return
        }

        empleadoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Empleado.label', default: 'Empleado'),empleadoInstance.nombre+" "+empleadoInstance.apellidos])
                redirect (controller:"sucursal", action:"edit", id:empleadoInstance.sucursal.id)
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
        def idSucursal = empleadoInstance.sucursal.id
        empleadoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Empleado.label', default: 'Empleado'), empleadoInstance.nombre+" "+empleadoInstance.apellidos])
                redirect (controller:"sucursal", action:"edit", id:idSucursal)
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
