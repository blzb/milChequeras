package com.lucasian.cheques

class Usuario {
    String nombre
    static hasMany = [chequeras: Chequera]
    String apellidos
    static constraints = {
    }
}
