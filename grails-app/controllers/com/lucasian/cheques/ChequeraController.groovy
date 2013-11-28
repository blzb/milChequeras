package com.lucasian.cheques

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class ChequeraController {
    ActivationService activationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Chequera.list(params), model: [chequeraInstanceCount: Chequera.count()]
    }

    def show(Chequera chequeraInstance) {
        respond chequeraInstance
    }

    def create() {
        Chequera chequera = new Chequera()
        respond chequera, model: [isCreate: true]
    }

    @Transactional
    def save(Chequera chequeraInstance) {
        if (chequeraInstance == null) {
            notFound()
            return
        }
        def idsGustos = params.list("gusto.id")
        def listaGustos = Gusto.getAll(idsGustos)
        chequeraInstance.gustos = listaGustos
        chequeraInstance.clearErrors()
        chequeraInstance.fechaNacimiento = Date.parse("dd/MM/yyyy", params.fechaNacimiento)
        chequeraInstance.validate()
        if (chequeraInstance.hasErrors()) {
            respond chequeraInstance.errors, view: 'create'
            return
        }
        activationService.activar(chequeraInstance)
        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chequeraInstance.label', default: 'Chequera'), chequeraInstance.numero])
                redirect(view: "index")
            }
            '*' { respond chequeraInstance, [status: CREATED] }
        }
    }

    /**
     *
     * @param chequeraInstance
     * @return
     */
    def edit(Chequera chequeraInstance) {
        def gustosChequera = chequeraInstance.gustos
        def gustosChequeraMap = gustosChequera.collectEntries {
            [(it.id): it]
        }
        def listaGustosTodos = Gusto.list()
        def listaFinal = listaGustosTodos.collect{
            if (gustosChequeraMap[it.id]) {
                [gusto: it, gusta: true]
            } else {
                [gusto: it]
            }
        }
        respond chequeraInstance, model: [listaFinal: listaFinal]
    }

    @Transactional
    def update(Chequera chequeraInstance) {
        if (chequeraInstance == null) {
            notFound()
            return
        }
        def idsGustos = params.list("gusto.id1")
        def listaGustos = Gusto.getAll(idsGustos)
        chequeraInstance.setGustos(listaGustos)

        chequeraInstance.clearErrors()
        chequeraInstance.fechaNacimiento = Date.parse("dd/MM/yyyy", params.fechaNacimiento)
        chequeraInstance.validate()

        if (chequeraInstance.hasErrors()) {
            respond chequeraInstance.errors, view: 'edit'
            return
        }

        chequeraInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Chequera.label', default: 'Chequera'), chequeraInstance.numero])
                redirect(view: "index")
            }
            '*' { respond chequeraInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Chequera chequeraInstance) {

        if (chequeraInstance == null) {
            notFound()
            return
        }

        chequeraInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Chequera.label', default: 'Chequera'), chequeraInstance.numero])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chequeraInstance.label', default: 'Chequera'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
