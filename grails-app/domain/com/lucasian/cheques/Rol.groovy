package com.lucasian.cheques
class Rol {
    String name

    static hasMany = [ users: Usuario, permissions: String ]
    static belongsTo = Usuario

    static constraints = {
        name(nullable: false, blank: false, unique: true, size:5..50)
    }
    String toString(){
           return name
    }
}
