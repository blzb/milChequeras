package com.lucasian.cheques

class ChequesUsados {
    static belongsTo =[chequera: Chequera, cheque:Cheque]   
    static constraints = {
    }
}
