package com.lucasian.cheques



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SerieController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        respond Serie.list(params), model: [serieInstanceCount: Serie.count()]
    }

    def show(Serie serieInstance) {
        respond serieInstance
    }

    def create() {
        respond new Serie(params)
    }

    @Transactional
    def save(Serie serieInstance) {
        if (serieInstance == null) {
            notFound()
            return
        }

        serieInstance.clearErrors()
        serieInstance.vigencia = Date.parse("dd/MM/yyyy", params.vigencia)
        serieInstance.inicioVigencia = Date.parse("dd/MM/yyyy", params.inicioVigencia)

        Date hoy = Date.parse("dd/MM/yyyy", new Date().format("dd/MM/yyyy"))

        /*
        if (serieInstance.inicioVigencia < hoy){
            flash.message = message(code: "La fecha de inicio de vigencia no puede ser menor al dia de hoy")
            respond serieInstance.errors, view:'create'
            return
        }
        */
        if(serieInstance.vigencia < serieInstance.inicioVigencia){
            flash.message = message(code: "La fecha de fin de vigencia debe ser mayor a la de inicio")
            respond serieInstance.errors, view:'create'
            return   
        }        
        

        if (serieInstance.vigencia <= hoy){
            flash.message = message(code: "La fecha de fin de vigencia debe ser mayor al dia de hoy")
            respond serieInstance.errors, view:'create'
            return
        }

        serieInstance.validate()

        if (serieInstance.hasErrors()) {
            respond serieInstance.errors, view: 'create'
            return
        }

        serieInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'serieInstance.label', default: 'Serie'), serieInstance.clave])
                redirect(view: "index")
            }
            '*' { respond serieInstance, [status: CREATED] }
        }
    }

    def edit(Serie serieInstance) {
        respond serieInstance
    }

    @Transactional
    def update(Serie serieInstance) {
        if (serieInstance == null) {
            notFound()
            return
        }

        serieInstance.clearErrors()
        serieInstance.vigencia = Date.parse("dd/MM/yyyy", params.vigencia)

        Date hoy = Date.parse("dd/MM/yyyy", new Date().format("dd/MM/yyyy"))

        if (serieInstance.vigencia <= hoy){
            flash.message = message(code: "La fecha de fin de vigencia debe ser mayor al dia de hoy")
            respond serieInstance.errors, view:'edit'
            return
        }

        serieInstance.validate()

        if (serieInstance.hasErrors()) {
            respond serieInstance.errors, view: 'edit'
            return
        }

        serieInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Serie.label', default: 'Serie'), serieInstance.clave])
                redirect(view: "index")
            }
            '*' { respond serieInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Serie serieInstance) {

        if (serieInstance == null) {
            notFound()
            return
        }

        serieInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Serie.label', default: 'Serie'), serieInstance.clave])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'serieInstance.label', default: 'Serie'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
