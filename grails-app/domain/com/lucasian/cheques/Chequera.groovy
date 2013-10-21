package com.lucasian.cheques

class Chequera {
    static belongsTo = [serie: Serie, usuario: Usuario]
    String numeroSerie        
    static constraints = {
    }
    String toString(){
           return numeroSerie
    }
}
