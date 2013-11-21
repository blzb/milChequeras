package com.lucasian.cheques

import org.apache.shiro.SecurityUtils

class ConsultaController {
       ConsultaService consultaService
       def index() { 
       }
       def buscar(){ 
              params.serie = params.serie.trim()
              def partes = params.serie.split("-")
              def isCompuesto =params.serie.contains("-")
              println(partes)
              def chequera = Chequera.findByNumero(partes[0])              
              if(chequera != null){
                     if(SecurityUtils.subject.hasRole("empleado")){
                            //results = Cheque.executeQuery("from Cheque c where c.serie.chequeras in (:cheq)", [cheq: chequeras])           
                            def usados = ChequesUsados.executeQuery("from ChequesUsados c where c.chequera.id = :idChequera", [idChequera: chequera.id])                                                        
                            def usadosMap = usados.collectEntries { 
                                   [(it.cheque.id): it]
                            }
                            def result
                            def parametros
                            if(isCompuesto){
                                   parametros = [claveTienda: SecurityUtils.subject.principal.tienda.clave, idSerie: chequera.serie.id, claveCheque:partes[1]]
                                   result = Cheque.executeQuery("from Cheque c where c.tienda.clave = :claveTienda and c.serie.id = :idSerie and c.clave=:claveCheque",parametros )                            
                            }else{
                                   parametros = [claveTienda: SecurityUtils.subject.principal.tienda.clave, idSerie: chequera.serie.id]
                                   result = Cheque.executeQuery("from Cheque c where c.tienda.clave = :claveTienda and c.serie.id = :idSerie",parametros )                            

                            }                            
                            def cheques = result.collect{
                                   if(usadosMap[it.id]){
                                          [cheque: it, usado: usadosMap[it.id]]
                                   }else{
                                          [cheque: it]
                                   }
                            }
                            [cheques: cheques, serie: params.serie, chequera:chequera]                            
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
                     [usado: true, serie: params.serie]
              }else{
                     [usado:false, chequera: resultado, serie: params.serie]
              }
       }
}
