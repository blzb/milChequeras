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
           numero (nullable: false, blank: false)
           email (nullable: false, blank: false, email:true)
           nombre (nullable: false, blank: false)
           apellidoPaterno (nullable: false, blank: false)
           apellidoMaterno(nullable: true)
           fechaNacimiento (nullable:false)
           sexo(inList:['Hombre','Mujer'], blank:false, nullable: false)
           colonia (nullable:true)
           telefono (nullable: true)
           facebook(nullable:true)
           twitter(nullable:true)
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
