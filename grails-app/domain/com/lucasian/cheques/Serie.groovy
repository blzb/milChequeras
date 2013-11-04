package com.lucasian.cheques

class Serie {
    String clave
    String nombre
    Date vigencia
    static hasMany = [chequeras: Chequera, cheques: Cheque]
    static constraints = {
           clave (nullable: false, blank: false, size:1..100)
           nombre (nullable: false, blank: false, size: 1..100)
           vigencia (nullable: false)
    }
    String toString(){
           return nombre+"("+clave+")"
    }
}
