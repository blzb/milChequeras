package com.lucasian.cheques

class Chequera {
       static belongsTo = [serie: Serie]
       static hasMany = [usados: ChequesUsados, gustos:Gusto]
       static hasOne = [registrador: Usuario]
       String numero
       String nombre
       Date fechaNacimiento
       String sexo    
       String email
       String facebook
       String twitter
       String codigoPostal
       String apellidos
       List<Gusto> gustos
       int edad
       
       static mapping = {
              gustos joinTable: [name:"mm_chequera_gustos", key:'mm_chequera_id']
              edad formula: "TIMESTAMPDIFF('YEAR', fecha_nacimiento, CURDATE()) " // h2 sql
       }
       static constraints = {
              numero (nullable: false, blank: false, size:1..100)
              email (nullable: false, blank: false, email:true, size: 1..255)
              nombre (nullable: false, blank: false, size: 1..100)
              apellidos(nullable: true, size:0..200)
              fechaNacimiento (nullable:false)
              sexo(inList:['Hombre','Mujer'], blank:false, nullable: false)
              facebook(nullable:true, size: 0..255)
              twitter(nullable:true, size:0..255)
              registrador(nullable: true)
              codigoPostal(nullable: true)
       }    
       static transients = ['registradoPor']

       String toString(){
              return numero+"("+nombre+" "+apellidos+" )"
       }
       String getRegistradoPor(){
              if(registrador != null){
                     return registrador.rol.name.capitalize()+": "+registrador.nombreCompleto
                  
              }else{
                     return "Registro Publico: "+nombre+" "+getApellidos();
              }
       }
    
       
}
