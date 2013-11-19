package com.lucasian.cheques

class Empleado extends Usuario {    
    static belongsTo = [tienda: Tienda]
    String puesto
   
    static constraints = {
           puesto (nullable: false, blank: false, size:1..100)
           
    }
}
