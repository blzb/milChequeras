package com.lucasian.cheques

import org.apache.shiro.SecurityUtils

class ConsultaController {
       ConsultaService consultaService
       def index() { 
       }
       def buscar(){           
              def chequera = Chequera.findByNumeroSerie(params.serie)
              if(SecurityUtils.subject.hasRole("empleado")){
                     //results = Cheque.executeQuery("from Cheque c where c.serie.chequeras in (:cheq)", [cheq: chequeras])           
                     def parametros = [claveSucursal: SecurityUtils.subject.principal.tienda, idSerie: chequera.serie.id]
                     println("LOS PARAMETROS::"+parametros)
                     def result = Cheque.executeQuery("from Cheque c where c.sucursal.clave = :claveSucursal and c.serie.id = :idSerie",parametros )
                     [cheques: result, serie: params.serie]
              }              
       }
       def usar(){
              println(params.usar);
              if(consultaService.usarCheque(params.usar,params.serie)){
                     [mensaje: "El cheque ha sido usado satisfactoriamente"]
              }else{
                     [mensaje: "El cheque que intenta usar ya ha sido usado anteriormente"]
              }
       }
}
