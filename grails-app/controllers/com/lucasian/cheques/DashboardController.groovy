package com.lucasian.cheques
import  groovy.time.TimeCategory

class DashboardController {
       def ChequesRedimidosService chequesRedimidosService
       def TopRedimidosService topRedimidosService
       def ConcentradoService concentradoService
       def index() {
              model:[chequerasRegistradas:concentradoService.getChequerasRegistradas(), chequesUsados:concentradoService.getChequesUsados(), porcentaje: concentradoService.getPorcentajeChequesRedimidos()  ]
       }
    
       def dashboard() { }
    
       def chequesRedimidos(){
              def Date now = new Date()      
              use(TimeCategory) {
                     if(params.mes){
                            model:[columnas:[['string', 'Dia'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byDayForInterval(now-1.months, now)]
                     }else if(params.semana){
                            model:[columnas:[['string', 'Dia'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byDayForInterval(now-1.weeks, now)]
                     }else {
                            model:[columnas:[['string', 'Hora'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byHourForInterval(now-1.days, now)]
                     }
              }
           
       }
       def top(){
              model:[columnas:[['string', 'Cheque'], ['number', 'Redimidos']], datos:topRedimidosService.getTop(5)]
       }
}
