package com.lucasian.cheques

class Cheque {
    static belongsTo = [serie: Serie, sucursal: Sucursal]    
    static constraints = {
    }
    String texto
}
