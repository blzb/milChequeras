package com.lucasian.cheques

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

import static org.springframework.http.HttpStatus.*

class ChequesUsadosController {
    ChequesUsadosService chequesUsadosService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        params.remove("action")
        params.remove("format")
        params.remove("controller")
        def chequesUsados = chequesUsadosService.obtenerChequesUsados(params)
        def totalRegistos = chequesUsadosService.obtenerCountChequesUsados()
        model:[chequesUsados:chequesUsados,chequesUsadosInstanceCount:totalRegistos]
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chequesUsadosInstance.label', default: 'ChequesUsados'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
