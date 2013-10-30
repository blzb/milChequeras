package com.lucasian.cheques

class Empleado extends ShiroUser {    
    static belongsTo = [sucursal: Sucursal]
    String puesto

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
           
    }
}
