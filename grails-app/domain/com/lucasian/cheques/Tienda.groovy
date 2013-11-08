package com.lucasian.cheques

class Tienda {
    static hasMany = [cheques: Cheque, empleados: Empleado]
    String local
    String clave    
    String nombre
    byte[] imagen
    
    static constraints = {
           local (nullable: false, blank: false, size: 1..100)
           clave (nullable: false, blank: false, size: 1..100)
           nombre (nullable: false, blank: false, size:1..100)
           imagen(nullable:true, maxSize: 1024 * 1024)
    }
    String toString(){
           return nombre+"("+clave+")"+"("+imagen+")"
    }
}
