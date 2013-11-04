package com.lucasian.cheques

class Chequera {
    static belongsTo = [serie: Serie]
    static hasMany = [usados: ChequesUsados]
    String numero
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    Date fechaNacimiento
    String sexo    
    String email
    String facebook
    String twitter
    String colonia
    String telefono
    static constraints = {
           numero (nullable: false, blank: false, size:1..100)
           email (nullable: false, blank: false, email:true, size: 1..255)
           nombre (nullable: false, blank: false, size: 1..100)
           apellidoPaterno (nullable: false, blank: false, size: 1..100)
           apellidoMaterno(nullable: true, size:0..100)
           fechaNacimiento (nullable:false)
           sexo(inList:['Hombre','Mujer'], blank:false, nullable: false)
           colonia (nullable:true, size: 0..100)
           telefono (nullable: true, size: 0..20)
           facebook(nullable:true, size: 0..255)
           twitter(nullable:true, size:0..255)
    }
    String getApellidos(){
           if(apellidoMaterno){
                  apellidoPaterno+" "+apellidoMaterno
           }else{
                  apellidoPaterno
           }
           
    }
    static transients = ['apellidos']
    String toString(){
           return numero+"("+nombre+" "+apellidos+")"
    }
}
