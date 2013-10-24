package com.lucasian.cheques

import org.apache.shiro.SecurityUtils

class ConsultaController {
       ConsultaService consultaService
       def index() { 
       }
       def buscar(){           
              def chequera = Chequera.findByNumero(params.serie)
              if(chequera != null){
                     if(SecurityUtils.subject.hasRole("empleado")){
                            //results = Cheque.executeQuery("from Cheque c where c.serie.chequeras in (:cheq)", [cheq: chequeras])           
                            def parametros = [claveSucursal: SecurityUtils.subject.principal.tienda, idSerie: chequera.serie.id]
                            println("LOS PARAMETROS::"+parametros)
                            def result = Cheque.executeQuery("from Cheque c where c.sucursal.clave = :claveSucursal and c.serie.id = :idSerie",parametros )
                            [cheques: result, serie: params.serie]
                     }              
              }else{
                     render(view: "/consulta/index", model: [mensaje: "La chequera no existe"])
              }
       }
       def usar(){
              println(params.usar);       
              def resultado = consultaService.usarCheque(params.usar,params.serie, params.referencia)
              if(resultado == true){
                     [mensaje: "El cheque ha sido usado satisfactoriamente"]
              }else{
                     [mensaje: "El cheque que intenta usar ya ha sido usado el "+resultado.dateCreated+" con referencia: "+resultado.referencia]
              }
       }
}
