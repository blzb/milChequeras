package com.lucasian.cheques

class Establecimiento {
    static hasMany =[sucursales: Sucursal]
    String nombre
    String categoria
    static constraints = {
    }
}
