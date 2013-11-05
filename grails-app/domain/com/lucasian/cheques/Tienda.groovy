package com.lucasian.cheques

class Tienda {
    static hasMany = [cheques: Cheque, empleados: Empleado]
    String local
    String clave    
    String nombre
    
    static constraints = {
           local (nullable: false, blank: false, size: 1..100)
           clave (nullable: false, blank: false, size: 1..100)
           nombre (nullable: false, blank: false, size:1..100)
    }
    String toString(){
           return nombre+"("+clave+")"
    }
}
