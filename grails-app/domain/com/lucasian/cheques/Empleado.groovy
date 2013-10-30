package com.lucasian.cheques

class Empleado extends ShiroUser {    
    static belongsTo = [sucursal: Sucursal]
    String puesto
    String email
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String getApellidos(){
           if(apellidoMaterno){
                  apellidoPaterno+" "+apellidoMaterno
           }else{
                  apellidoPaterno
           }
           
    }
    static transients = ['apellidos']
    static constraints = {
           puesto (nullable: false, blank: false)
           email (nullable: false, blank: false, email:true)
           nombre (nullable: false, blank: false)
           apellidoPaterno (nullable: false, blank: false)
           apellidoMaterno (nullable:true)
    }
}
