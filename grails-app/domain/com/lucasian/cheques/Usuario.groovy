package com.lucasian.cheques

class Usuario extends ShiroUser{
    static hasMany = [chequeras: Chequera]
    String nombre    
    String apellidos
    static constraints = {
    }
    String toString(){
       return nombre
    }
}
