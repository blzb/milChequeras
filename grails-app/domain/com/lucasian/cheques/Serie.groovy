package com.lucasian.cheques

class Serie {
    String clave
    String nombre
    Date vigencia
    static hasMany = [chequeras: Chequera, cheques: Cheque]
    static constraints = {
           clave (nullable: false, blank: false)
           nombre (nullable: false, blank: false)
           vigencia (nullable: false)
    }
    String toString(){
           return nombre+"("+clave+")"
    }
}
