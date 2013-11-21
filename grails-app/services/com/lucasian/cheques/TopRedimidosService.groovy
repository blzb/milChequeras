package com.lucasian.cheques

import grails.transaction.Transactional

@Transactional
class TopRedimidosService {

    def getTop(quantity){
           ChequesUsados.executeQuery("select c.cheque, count(c) as contador from ChequesUsados c group by c.cheque.id order by contador desc ", [max: quantity])
    }
}
