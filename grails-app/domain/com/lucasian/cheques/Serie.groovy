package com.lucasian.cheques

class Serie {
    String clave
    String nombre
    Date vigencia
    static hasMany = [chequeras: Chequera, cheques: Cheque]
    static constraints = {
    }
    String toString(){
           return nombre+"("+clave+")"
    }
}
