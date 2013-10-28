package com.lucasian.cheques



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SucursalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sucursal.list(params), model:[sucursalInstanceCount: Sucursal.count()]
    }

    def show(Sucursal sucursalInstance) {
        respond sucursalInstance
    }

    def create() {
        respond new Sucursal(params)
    }

    @Transactional
    def save(Sucursal sucursalInstance) {
        if (sucursalInstance == null) {
            notFound()
            return
        }

        if (sucursalInstance.hasErrors()) {
            respond sucursalInstance.errors, view:'create'
            return
        }

        sucursalInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sucursalInstance.label', default: 'Sucursal'), sucursalInstance.nombre+"("+sucursalInstance.clave+")"])
                redirect(view:"index")
            }
            '*' { respond sucursalInstance, [status: CREATED] }
        }
    }

    def edit(Sucursal sucursalInstance) {
        respond sucursalInstance
    }

    @Transactional
    def update(Sucursal sucursalInstance) {
        if (sucursalInstance == null) {
            notFound()
            return
        }

        if (sucursalInstance.hasErrors()) {
            respond sucursalInstance.errors, view:'edit'
            return
        }

        sucursalInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sucursal.label', default: 'Sucursal'), sucursalInstance.nombre+"("+sucursalInstance.clave+")"])
                redirect(view:"index")
            }
            '*'{ respond sucursalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sucursal sucursalInstance) {

        if (sucursalInstance == null) {
            notFound()
            return
        }

        sucursalInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sucursal.label', default: 'Sucursal'), sucursalInstance.nombre+"("+sucursalInstance.clave+")"])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sucursalInstance.label', default: 'Sucursal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
