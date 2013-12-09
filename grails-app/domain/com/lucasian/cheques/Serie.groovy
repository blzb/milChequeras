package com.lucasian.cheques

class Serie {
       String clave
       String nombre
       Date vigencia
       Date inicioVigencia
       static hasMany = [chequeras: Chequera, cheques: Cheque]
       static constraints = {
              clave (nullable: false, blank: false, size:1..100)
              nombre (nullable: false, blank: false, size: 1..100)
              vigencia (nullable: false)
              inicioVigencia(nullable:false)
              vigencia validator: { value, instancia -> 
                     return value && value >= instancia.inicioVigencia
              }
       }
       String toString(){
              return nombre+"("+clave+")"
       }
       def beforeInsert() {
              vigencia.set(hourOfDay:23, minute:59, second:59)
              inicioVigencia.set(hourOfDay:0, minute:0, second:0)
       }
       def beforeUpdate() {
              vigencia.set(hourOfDay:23, minute:59, second:59)
              inicioVigencia.set(hourOfDay:0, minute:0, second:0)
       }
}
