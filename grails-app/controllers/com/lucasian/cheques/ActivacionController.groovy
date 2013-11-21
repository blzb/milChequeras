package com.lucasian.cheques
import grails.transaction.Transactional
class ActivacionController {
       ActivationService activationService
       def index() { 
              respond new Chequera(params)
       }
       @Transactional   
       def activar(Chequera chequeraInstance) {
              if (chequeraInstance == null) {
                     notFound()
                     return
              }
              chequeraInstance.clearErrors()
              chequeraInstance.fechaNacimiento = Date.parse("dd/MM/yyyy", params.fechaNacimiento)
              chequeraInstance.validate()
              def partes = params.numero.split("-")
              Serie serie = Serie.findByClave(partes[0])               
              if(serie != null){
                     Chequera chequera = Chequera.findByNumeroAndSerie(partes[1], serie)
                     if(chequera != null){
                            chequeraInstance.clearErrors()
                            flash.message = "La chequera que intentas registrar ya ha sido registrada anteriomente. Verificar el numero de tu chequera"
                            respond chequeraInstance.errors, view:'index'
                            return 
                     }
                     chequeraInstance.clearErrors()
                     chequeraInstance.serie = serie
                     chequeraInstance.numero = partes[1]                     
                     chequeraInstance.validate()
                     if (chequeraInstance.hasErrors()) {
                            respond chequeraInstance.errors, view:'index'
                            return
                     }        
                     activationService.activar(chequeraInstance)
              }else{
                     chequeraInstance.clearErrors()
                     flash.message = "El numero de la chequera que desea activar no se pudo verificar dentro del sistema, revise el numero que utilizo"
                     respond chequeraInstance.errors, view:'index'
                     return 
              }
       }

}
