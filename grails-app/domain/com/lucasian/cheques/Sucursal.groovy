package com.lucasian.cheques

class Sucursal {
    static hasMany = [cheques: Cheque, empleados: Empleado]
    static belongsTo = [establecimiento: Establecimiento]
    String direccion
    String clave    
    static constraints = {
    }
}
