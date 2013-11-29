package com.lucasian.cheques
import  groovy.time.TimeCategory

class DashboardController {
       def ChequesRedimidosService chequesRedimidosService
       def TopRedimidosService topRedimidosService
       def ConcentradoService concentradoService

       def index() {
           def Date now = new Date()
           use(TimeCategory) {
               if(params.mes){
                   model:[columnas:[['string', 'Dia'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byDayForInterval(now-1.months, now), chequerasRegistradas:concentradoService.getChequerasRegistradas(), chequesUsados:concentradoService.getChequesUsados(), porcentaje: concentradoService.getPorcentajeChequesRedimidos(), columnasTop:[['string', 'Cheque'], ['number', 'Redimidos']], datosTop:topRedimidosService.getTop(5)]
               }else if(params.semana){
                   model:[columnas:[['string', 'Dia'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byDayForInterval(now-1.weeks, now), chequerasRegistradas:concentradoService.getChequerasRegistradas(), chequesUsados:concentradoService.getChequesUsados(), porcentaje: concentradoService.getPorcentajeChequesRedimidos(), columnasTop:[['string', 'Cheque'], ['number', 'Redimidos']], datosTop:topRedimidosService.getTop(5)]
               }else {
                   model:[columnas:[['string', 'Hora'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byHourForInterval(now-1.days, now), chequerasRegistradas:concentradoService.getChequerasRegistradas(), chequesUsados:concentradoService.getChequesUsados(), porcentaje: concentradoService.getPorcentajeChequesRedimidos(), columnasTop:[['string', 'Cheque'], ['number', 'Redimidos']], datosTop:topRedimidosService.getTop(5)]
               }
           }
           //darle continuidad al model :D
       }
    
       def dashboard() { }
    
       def chequesRedimidos(){
              def Date now = new Date()      
              use(TimeCategory) {
                     if(params.mes){
                            model:[columnas:[['string', 'Dia'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byDayForInterval(now-1.months, now), chequerasRegistradas:concentradoService.getChequerasRegistradas(), chequesUsados:concentradoService.getChequesUsados(), porcentaje: concentradoService.getPorcentajeChequesRedimidos(), columnasTop:[['string', 'Cheque'], ['number', 'Redimidos']], datosTop:topRedimidosService.getTop(5)]
                     }else if(params.semana){
                            model:[columnas:[['string', 'Dia'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byDayForInterval(now-1.weeks, now), chequerasRegistradas:concentradoService.getChequerasRegistradas(), chequesUsados:concentradoService.getChequesUsados(), porcentaje: concentradoService.getPorcentajeChequesRedimidos(), columnasTop:[['string', 'Cheque'], ['number', 'Redimidos']], datosTop:topRedimidosService.getTop(5)]
                     }else {
                            model:[columnas:[['string', 'Hora'], ['number', 'Cheques Redimidos']], datos:chequesRedimidosService.byHourForInterval(now-1.days, now), chequerasRegistradas:concentradoService.getChequerasRegistradas(), chequesUsados:concentradoService.getChequesUsados(), porcentaje: concentradoService.getPorcentajeChequesRedimidos(), columnasTop:[['string', 'Cheque'], ['number', 'Redimidos']], datosTop:topRedimidosService.getTop(5)]
                     }
              }
           
       }
       def top(){
              model:[columnasTop:[['string', 'Cheque'], ['number', 'Redimidos']], datosTop:topRedimidosService.getTop(5)]
       }
}
