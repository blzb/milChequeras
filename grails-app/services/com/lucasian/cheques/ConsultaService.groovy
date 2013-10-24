package com.lucasian.cheques

import grails.transaction.Transactional

@Transactional
class ConsultaService {

       def usarCheque(idCheque, serie, referencia) {
              Cheque cheque = Cheque.get(idCheque)
              Chequera chequera = Chequera.findByNumero(serie)
              def results = ChequesUsados.executeQuery("from ChequesUsados cu where cu.chequera = :chequera and cu.cheque= :cheque", [chequera: chequera, cheque:cheque])
              if(results != null ){
                     return results
              }else{
                     ChequesUsados chequesUsados = new ChequesUsados(chequera:chequera, cheque:cheque, referencia: referencia)
                     chequesUsados.save()
                     return true
              }              
       }
}
