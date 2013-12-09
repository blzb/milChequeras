package com.lucasian.cheques

class AcumuladoDeChequesController {
       def AcumuladoDeChequesUsadosService acumuladoDeChequesUsadosService
    def index() {
           model:[datos:acumuladoDeChequesUsadosService.getGroupByTiendaAndSerie()]
    }
}
