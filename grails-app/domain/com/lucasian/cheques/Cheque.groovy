package com.lucasian.cheques

class Cheque {
    static belongsTo = [serie: Serie, sucursal: Sucursal]    
    static constraints = {
           texto (nullable: false, blank: false)
    }
    String texto
    String toString(){           
           return texto;
    }
}
