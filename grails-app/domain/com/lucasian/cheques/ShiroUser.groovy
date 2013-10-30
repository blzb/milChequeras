package com.lucasian.cheques
class ShiroUser {
       String username
       String passwordHash
       String nombre
       String apellidoPaterno
       String apellidoMaterno
       String email
    
       static belongsTo = [rol: Rol]

       static constraints = {
              username(nullable: false, blank: false, unique: true)
              rol(nullable: true)
              nombre (nullable: false, blank: false)
              apellidoPaterno (nullable: false, blank: false)
              apellidoMaterno (nullable:true)
              email (nullable: false, blank: false, email:true)

       }
       static mapping = {
              tablePerHierarchy false
       }
}
