package com.lucasian.cheques

class Usuario extends ShiroUser{
    
    String nombre    
    String apellidos
    static constraints = {
    }
    String toString(){
       return nombre
    }
}
