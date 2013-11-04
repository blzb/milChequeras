package com.lucasian.cheques
class Usuario {
       String username
       String passwordHash
       String nombre
       String apellidoPaterno
       String apellidoMaterno
       String email
    
       static belongsTo = [rol: Rol]

       static constraints = {
              username(nullable: false, blank: false, unique: true, size:5..50)
              rol(nullable: true)
              nombre (nullable: false, blank: false, size:1..100)
              apellidoPaterno (nullable: false, blank: false, size: 1..100)
              apellidoMaterno (nullable:true, size: 1..100)
              email (nullable: false, blank: false, email:true, size:1.255)

       }
       static mapping = {
              tablePerHierarchy false
       }
}
