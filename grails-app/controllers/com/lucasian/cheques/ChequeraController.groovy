package com.lucasian.cheques



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ChequeraController {
    ActivationService activationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Chequera.list(params), model:[chequeraInstanceCount: Chequera.count()]
    }

    def show(Chequera chequeraInstance) {
        respond chequeraInstance
    }

    def create() {
        respond new Chequera(params)
    }

    @Transactional
    def save(Chequera chequeraInstance) {
        if (chequeraInstance == null) {
            notFound()
            return
        }

        if (chequeraInstance.hasErrors()) {
            respond chequeraInstance.errors, view:'create'
            return
        }

        chequeraInstance.save flush:true
        activationService.activar(chequeraInstance)
        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chequeraInstance.label', default: 'Chequera'), chequeraInstance.numero])
                redirect(view:"index")
            }
            '*' { respond chequeraInstance, [status: CREATED] }
        }
    }

    def edit(Chequera chequeraInstance) {
        respond chequeraInstance
    }

    @Transactional
    def update(Chequera chequeraInstance) {
        if (chequeraInstance == null) {
            notFound()
            return
        }

        if (chequeraInstance.hasErrors()) {
            respond chequeraInstance.errors, view:'edit'
            return
        }

        chequeraInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Chequera.label', default: 'Chequera'), chequeraInstance.numero])
                redirect(view:"index")
            }
            '*'{ respond chequeraInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Chequera chequeraInstance) {

        if (chequeraInstance == null) {
            notFound()
            return
        }

        chequeraInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Chequera.label', default: 'Chequera'), chequeraInstance.numero])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chequeraInstance.label', default: 'Chequera'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
