package com.lucasian.cheques



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TiendaController {  

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tienda.list(params), model:[tiendaInstanceCount: Tienda.count()]
    }

    def show(Tienda tiendaInstance) {
        respond tiendaInstance
    }

    def create() {
        respond new Tienda(params)
    }

    @Transactional
    def save(Tienda tiendaInstance) {
        if (tiendaInstance == null) {
            notFound()
            return
        }

        if (tiendaInstance.imagen.length == 0){
            tiendaInstance.imagen=null
        }

        if (tiendaInstance.hasErrors()) {
            respond tiendaInstance.errors, view:'create'
            return
        }
        tiendaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tiendaInstance.label', default: 'Tienda'), tiendaInstance.nombre+"("+tiendaInstance.clave+")"])
                redirect(view:"index") 
            }
            multipartForm{
                flash.message = message(code: 'default.created.message', args: [message(code: 'tiendaInstance.label', default: 'Tienda'), tiendaInstance.nombre+"("+tiendaInstance.clave+")"])
                redirect(view:"index") 
            }
            '*' { respond tiendaInstance, [status: CREATED] }
        }
        
    }

    def edit(Tienda tiendaInstance) {
        respond tiendaInstance
    }


    def update(Tienda tiendaInstance) {
        if (tiendaInstance == null) {
            notFound()
            return
        }
        if (tiendaInstance.hasErrors()) {
            respond tiendaInstance.errors, view:'edit'
            return
        }

        if (tiendaInstance.imagen.length == 0){
            tiendaInstance.imagen=null
        }

        tiendaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tienda.label', default: 'Tienda'), tiendaInstance.nombre+"("+tiendaInstance.clave+")"])
                redirect(view:"index")
            }
            multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tienda.label', default: 'Tienda'), tiendaInstance.nombre+"("+tiendaInstance.clave+")"])
                redirect(view:"index")
            }
            
            '*'{ respond tiendaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tienda tiendaInstance) {
        println ('tiendaInstance.toString():::' + tiendaInstance.toString())
        if (tiendaInstance == null) {
            notFound()
            return
        }

        tiendaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tienda.label', default: 'Tienda'), tiendaInstance.nombre+"("+tiendaInstance.clave+")"])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
    
    
    def showPayload() {
        println("EN SHOW PAY LOAD")
        def tiendaInstance = Tienda.get(params.id)
        if(tiendaInstance!=null){
            response.outputStream << tiendaInstance.imagen // write the image to the outputstream
            response.outputStream.flush()
        }

    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tiendaInstance.label', default: 'Tienda'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
