package com.lucasian.cheques

class Empleado extends ShiroUser {    
    static belongsTo = [sucursal: Sucursal]
    String puesto
    String email
    String nombre
    String apellidos
    static constraints = {
           puesto (nullable: false, blank: false)
           email (nullable: false, blank: false, email:true)
           nombre (nullable: false, blank: false)
           apellidos (nullable: false, blank: false)
    }
}
