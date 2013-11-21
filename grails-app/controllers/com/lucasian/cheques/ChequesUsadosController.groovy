package com.lucasian.cheques

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

import static org.springframework.http.HttpStatus.NOT_FOUND

class ChequesUsadosController {
    ChequesUsadosService chequesUsadosService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        params.remove("action")
        params.remove("format")
        params.remove("controller")

        def flag = validarFiltros(params)
        def flagPag = validarPaginacion(params)

        if (flagPag) {
            if (params.q.length() > 2 || params.p.length() > 2 || params.n.length() > 2 || params.c.length() > 2) {
                params.serie = params.q
                params.propietario = params.p
                params.numChequera = params.n
                params.numCheque = params.c
                params.remove("q")
                params.remove("p")
                params.remove("n")
                params.remove("c")
                def chequesUsados = chequesUsadosService.obtenerChequesUsadosFiltro(params)
                def totalRegistos = chequesUsadosService.obtenerCountChequesUsadosFiltro(params)
                render(view: 'index', template: 'tabla', model: [chequesUsados: chequesUsados, chequesUsadosInstanceCount: totalRegistos])
                return
            }
        }


        if (!flag || params.q.equals("%%") || params.p.equals("%%") || params.n.equals("%%") || params.c.equals("%%")){//si todos los filtros vienen vacios
            params.remove("q")
            params.remove("p")
            params.remove("n")
            params.remove("c")
            params.serie = (params.serie == null) ? '%%' : '%' + params.serie + '%'//hacer lo mismo para propietario y etc
            params.propietario = (params.propietario == null) ? '%%' : '%' + params.propietario + '%'//
            params.numChequera = (params.numChequera == null) ? '%%' : '%' + params.numChequera + '%'//
            params.numCheque = (params.numCheque == null) ? '%%' : '%' + params.numCheque + '%'//
            def chequesUsados = chequesUsadosService.obtenerChequesUsados(params)
            def totalRegistos = chequesUsadosService.obtenerCountChequesUsados()

            render(view: 'index', model: [chequesUsados: chequesUsados, chequesUsadosInstanceCount: totalRegistos])
        } else {
            params.remove("q")
            params.remove("p")
            params.remove("n")
            params.remove("c")
            params.serie = (params.serie == null) ? '%%' : '%' + params.serie + '%'
            params.propietario = (params.propietario == null) ? '%%' : '%' + params.propietario + '%'
            params.numChequera = (params.numChequera == null) ? '%%' : '%' + params.numChequera + '%'
            params.numCheque = (params.numCheque == null) ? '%%' : '%' + params.numCheque + '%'
            def chequesUsados = chequesUsadosService.obtenerChequesUsadosFiltro(params)
            def totalRegistos = chequesUsadosService.obtenerCountChequesUsadosFiltro(params)
            render(template: 'tabla', model: [chequesUsados: chequesUsados, chequesUsadosInstanceCount: totalRegistos])
        }
    }


    boolean validarFiltros(GrailsParameterMap params){
        if (params.serie!=null || params.propietario !=null || params.numChequera != null || params.numCheque){
            return true
        }
    }

    boolean validarPaginacion(GrailsParameterMap params){
        if(params.p!=null || params.q!=null || params.n!=null || params.c!=null){
            return true
        }
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
