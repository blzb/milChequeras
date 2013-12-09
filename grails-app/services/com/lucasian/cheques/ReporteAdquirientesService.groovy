package com.lucasian.cheques

import grails.transaction.Transactional

@Transactional
class ReporteAdquirientesService {

       def getGroupBySexo(){
              def contadorSexo = Chequera.executeQuery("select sexo,count(c) from Chequera c group by  sexo order by sexo")
       }
       def getGroupByEdad(){
              def contadorEdades = Chequera.executeQuery("select edad, sexo ,count(c) from Chequera c group by  edad, sexo order by edad, sexo")
              def rangos = [(13..17):[0,0], (18..24):[0,0], (25..34):[0,0], (35..44):[0,0], (45..54):[0,0], (54..64):[0,0], (65..100):[0,0]]
              for ( e in contadorEdades ) {
                     for(rango in rangos){
                            if(rango.key.contains(e[0])){
                                   if(e[1]=="Hombre"){
                                          rango.value[0] = rango.value[0]+e[2]
                                   }else{
                                          rango.value[1] = rango.value[1]+e[2]      
                                   }                                                                    
                            }
                     }
              }
              def resultados = []
              def contador = 0
              for(rango in rangos){
                     resultados[contador] = [rango.key.toString(), rango.value[0], rango.value[1]]
                     contador++
              }
              return resultados
       }
}
