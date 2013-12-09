package com.lucasian.cheques

import grails.transaction.Transactional

@Transactional
class AcumuladoDeChequesUsadosService {

    def getGroupByTiendaAndSerie(){
           ChequesUsados.executeQuery("select c.cheque.serie,  c.cheque.tienda.nombre,count(c) from ChequesUsados c group by c.cheque.serie, c.cheque.tienda.nombre ")
    }
}
