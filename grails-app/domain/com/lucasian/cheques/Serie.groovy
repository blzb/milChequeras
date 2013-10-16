package com.lucasian.cheques

class Serie {
    String clave
    String nombre
    Date vigencia
    static hasMany = [chequeras: Chequera]
    static constraints = {
    }
}
