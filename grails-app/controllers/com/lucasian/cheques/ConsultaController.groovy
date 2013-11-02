package com.lucasian.cheques

import org.apache.shiro.SecurityUtils

class ConsultaController {
       ConsultaService consultaService
       def index() { 
       }
       def buscar(){ 
              params.serie = params.serie.trim()
              def chequera = Chequera.findByNumero(params.serie)
              
              if(chequera != null){
                     if(SecurityUtils.subject.hasRole("empleado")){
                            //results = Cheque.executeQuery("from Cheque c where c.serie.chequeras in (:cheq)", [cheq: chequeras])           
                            def parametros = [claveSucursal: SecurityUtils.subject.principal.tienda, idSerie: chequera.serie.id]
                            def usados = ChequesUsados.executeQuery("from ChequesUsados c where c.chequera.id = :idChequera", [idChequera: chequera.id])                                                        
                            def usadosMap = usados.collectEntries { 
                                   [(it.cheque.id): it]
                            }
                            def result = Cheque.executeQuery("from Cheque c where c.sucursal.clave = :claveSucursal and c.serie.id = :idSerie",parametros )
                            def cheques = result.collect{
                                   if(usadosMap[it.id]){
                                          [cheque: it, usado: usadosMap[it.id]]
                                   }else{
                                          [cheque: it]
                                   }
                            }
                            [cheques: cheques, serie: params.serie]                            
                     }              
              }else{
                     render(view: "/consulta/index", model: [noEncontrado: true, serie:params.serie])
              }
       }
       def usar(){
              params.serie=params.serie.trim()
              params.usar=params.usar.trim()
              params.referencia = params.referencia.trim()
              def resultado = consultaService.usarCheque(params.usar,params.serie, params.referencia)
              if(resultado == true){
                     [usado: true]
              }else{
                     [usado:false, chequera: resultado]
              }
       }
}
