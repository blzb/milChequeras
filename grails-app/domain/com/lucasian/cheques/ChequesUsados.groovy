package com.lucasian.cheques

class ChequesUsados {
    static belongsTo =[chequera: Chequera, cheque:Cheque]   
    String referencia
    Date dateCreated
    static constraints = {
           referencia (nullable: false, blank: false, size:1..255)
    }
    String toString(){
           return referencia+"("+dateCreated+")"
    }
}
