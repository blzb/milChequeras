package com.lucasian.cheques



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ChequeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cheque.list(params), model:[chequeInstanceCount: Cheque.count()]
    }

    def show(Cheque chequeInstance) {
        respond chequeInstance
    }

    def create() {
        respond new Cheque(params)
    }

    @Transactional
    def save(Cheque chequeInstance) {
        if (chequeInstance == null) {
            notFound()
            return
        }

        if (chequeInstance.hasErrors()) {
            respond chequeInstance.errors, view:'create'
            return
        }

        chequeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chequeInstance.label', default: 'Cheque'), chequeInstance.clave])
                redirect (controller:"serie", action:"edit", id:chequeInstance.serie.id)
            }
            '*' { respond chequeInstance, [status: CREATED] }
        }
    }

    def edit(Cheque chequeInstance) {
        respond chequeInstance
    }

    @Transactional
    def update(Cheque chequeInstance) {
        if (chequeInstance == null) {
            notFound()
            return
        }

        if (chequeInstance.hasErrors()) {
            respond chequeInstance.errors, view:'edit'
            return
        }

        chequeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cheque.label', default: 'Cheque'), chequeInstance.clave])
                redirect (controller:"serie", action:"edit", id:chequeInstance.serie.id)
            }
            '*'{ respond chequeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cheque chequeInstance) {

        if (chequeInstance == null) {
            notFound()
            return
        }
        def idSerie = chequeInstance.serie.id
        chequeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cheque.label', default: 'Cheque'), chequeInstance.clave])
                redirect (controller:"serie", action:"edit", id:idSerie)
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chequeInstance.label', default: 'Cheque'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
