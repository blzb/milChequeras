package com.lucasian.cheques

import grails.transaction.Transactional

@Transactional
class ConsultaService {

       def usarCheque(idCheque, serie) {
              Cheque cheque = Cheque.get(idCheque)
              Chequera chequera = Chequera.findByNumeroSerie(serie)
              def results = ChequesUsados.executeQuery("from ChequesUsados cu where cu.chequera = :chequera and cu.cheque= :cheque", [chequera: chequera, cheque:cheque])
              if(results != null && results.size >0){
                     return false
              }else{
                     ChequesUsados chequesUsados = new ChequesUsados(chequera:chequera, cheque:cheque)
                     chequesUsados.save()
                     return true
              }              
       }
}
