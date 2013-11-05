package com.lucasian.cheques

class Cheque {
    static belongsTo = [serie: Serie, tienda: Tienda]    
    static hasMany = [usados: ChequesUsados]
    static constraints = {
           descripcion (nullable: false, blank: false, size:1..255)
           clave (nullable:false, blank: false, size: 1..100)
    }
    String descripcion
    String clave
    
    String toString(){           
           return descripcion;
    }
}
