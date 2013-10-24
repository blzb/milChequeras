package com.lucasian.cheques

class Chequera {
    static belongsTo = [serie: Serie]
    String numero
    String nombre
    String apellidos
    String facebook
    String twitter
    String email
    static constraints = {
           numero (nullable: false, blank: false)
           email (nullable: false, blank: false, email:true)
           nombre (nullable: false, blank: false)
           apellidos (nullable: false, blank: false)
    }
    String toString(){
           return numero+"("+nombre+" "+apellidos+")"
    }
}
