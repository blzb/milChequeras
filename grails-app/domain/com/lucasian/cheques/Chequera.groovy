package com.lucasian.cheques

class Chequera {
    static belongsTo = [serie: Serie]
    String numero
    String nombre
    String apellidos
    Date fechaNacimiento
    String sexo    
    String email
    String facebook
    String twitter
    String colonia
    String telefono
    static constraints = {
           numero (nullable: false, blank: false)
           email (nullable: false, blank: false, email:true)
           nombre (nullable: false, blank: false)
           apellidos (nullable: false, blank: false)
           fechaNacimiento (nullable:false)
           sexo(inList:['Hombre','Mujer'], blank:false, nullable: false)
           colonia (nullable:true)
           telefono (nullable: true)
           facebook(nullable:true)
           twitter(nullable:true)
    }
    String toString(){
           return numero+"("+nombre+" "+apellidos+")"
    }
}
