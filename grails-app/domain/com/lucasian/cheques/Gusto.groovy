package com.lucasian.cheques

class Gusto {
    String gusto

    static belongsTo = Chequera
    static hasMany = [chequeras:Chequera]




    static constraints = {
        gusto(nullable: false, blank: false, size: 1..50)
    }
    static mapping = {
        chequeras joinTable: [name:"mm_chequera_gustos", key:'mm_gusto_id']
    }

    @Override
    public java.lang.String toString() {
        return "Gusto{" +
                "id=" + id +
                ", gusto='" + gusto + '\'' +
                ", version=" + version +
                '}';
    }
}

