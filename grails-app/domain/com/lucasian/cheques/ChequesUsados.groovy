package com.lucasian.cheques

class ChequesUsados {
    static belongsTo =[chequera: Chequera, cheque:Cheque]   
    String referencia
    Date dateCreated
    String dateHour
    String dateDay
    String dateMonth
    String dateYear
    String dateMin
    String dateWeekInMonth
    String dateWeek
    static constraints = {
           referencia (nullable: false, blank: false, size:1..255)
    }
     static mapping = {
        dateHour formula: "FORMATDATETIME(date_created, 'yyyy/MM/dd HH')" // h2 sql
        dateDay formula: "FORMATDATETIME(date_created, 'yyyy/MM/dd')" // h2 sql
        dateMonth formula: "FORMATDATETIME(date_created, 'yyyy/MM')" // h2 sql
        dateYear formula: "FORMATDATETIME(date_created, 'yyyy')" // h2 sql
        dateMin formula: "FORMATDATETIME(date_created, 'yyyy/MM/dd HH:mm')" // h2 sql
        dateWeekInMonth formula: "FORMATDATETIME(date_created, 'yyyy/MM/WW')" // h2 sql
        dateWeek formula: "FORMATDATETIME(date_created, 'yyyy/ww')" // h2 sql
        
        //timeMonth formula: "DATE_FORMAT(time, '%Y-%m')"   // mysql sql
    }
    String toString(){
           return referencia+"("+dateCreated+")"
    }
}
