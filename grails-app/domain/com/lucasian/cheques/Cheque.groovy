package com.lucasian.cheques

class Cheque {
    static belongsTo = [serie: Serie, sucursal: Sucursal]    
    static constraints = {
           descripcion (nullable: false, blank: false, maxSize: 255)
           clave (nullable:false, blanl: false)
    }
    String descripcion
    String clave
    String toString(){           
           return descripcion;
    }
}
