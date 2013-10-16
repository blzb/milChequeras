package com.lucasian.cheques

class Chequera {
    String numeroSerie    
    static belongTo = [serie:Serie, usuario: Usuario]
    static constraints = {
    }
}
