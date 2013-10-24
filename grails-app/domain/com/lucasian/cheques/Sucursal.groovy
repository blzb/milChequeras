package com.lucasian.cheques

class Sucursal {
    static hasMany = [cheques: Cheque, empleados: Empleado]
    String direccion
    String clave    
    String nombre
    
    static constraints = {
           direccion (nullable: false, blank: false)
           clave (nullable: false, blank: false)
           nombre (nullable: false, blank: false)
    }
    String toString(){
           return nombre+"("+clave+")"
    }
}
