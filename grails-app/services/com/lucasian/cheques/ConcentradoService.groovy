package com.lucasian.cheques

import grails.transaction.Transactional

@Transactional
class ConcentradoService {

    def getChequerasRegistradas(){
           Chequera.executeQuery("select count(c) from Chequera c")[0]
    }
    def getChequesUsados(){
           ChequesUsados.executeQuery("select count(c) from ChequesUsados c")[0]
    }
    def getPorcentajeChequesRedimidos(){
           def series = Serie.executeQuery("select s.clave, s.chequeras.size , s.cheques.size   from Serie s")
           def chequesDisponibles= 0
           series.each{
                  chequesDisponibles += it[1]*it[2]
           }
           def chequesUsados = getChequesUsados()
           [disponibles: chequesDisponibles, usados: chequesUsados, porcentaje:(100*chequesUsados)/chequesDisponibles]           
    }

}
