package com.lucasian.cheques

class Cheque {
    static belongsTo = [serie: Serie, sucursal: Sucursal]    
    static hasMany = [usados: ChequesUsados]
    static constraints = {
           descripcion (nullable: false, blank: false, maxSize: 255)
           clave (nullable:false, blanl: false)
    }
    String descripcion
    String clave
    boolean usado
    static transients = ['usado']
    String toString(){           
           return descripcion;
    }
}
