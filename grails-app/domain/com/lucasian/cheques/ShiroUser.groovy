package com.lucasian.cheques
class ShiroUser {
    String username
    String passwordHash
    
    static belongsTo = [rol: Rol]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
        rol(nullable: true)
    }
    static mapping = {
        tablePerHierarchy false
    }
}
