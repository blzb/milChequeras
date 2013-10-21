package com.lucasian.cheques

class Empleado extends ShiroUser {    
    static belongsTo = [sucursal: Sucursal]
    String puesto
    String email
    String nombre
    static constraints = {
    }
}
