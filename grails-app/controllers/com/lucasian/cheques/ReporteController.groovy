package com.lucasian.cheques

class ReporteController{
    
    def index(Integer max) {
        //println("en el index :D")
        params.max = Math.min(max ?: 10, 100)
        //println("params::: "+ params)
        //println("Tienda.list(params): " + Tienda.list(params))
        respond Tienda.list(params), model:[tiendaInstanceCount: Tienda.count()]
    }//fin de index
     
//    def report(Tienda tiendaInstance) {  
//        println("en report");
//        respond tiendaInstance 
//    } 

 

    
    
    def report(Tienda tiendaInstance) {
        println("en el report :D")
        println ("params: "+params.id)
        println ("tiendaInstance: "+ tiendaInstance.nombre)
        params.id = params.id.trim() 
        //cheques
        def cheques = Cheque.executeQuery("from Cheque c where c.tienda.id = :idTienda", [idTienda: params.id.toLong()])
        println("numero de cheques: " + cheques.size)
        // println("cheques: " + cheques)  
        
        def series= Cheque.executeQuery("select c.serie.clave, count(c.id) from Cheque c where c.tienda.id = :idTienda group by c.serie.clave ", [idTienda: params.id.toLong()])
        println("series de los cheques de la tienda "+params.id +": "+series )  
        println("probando: "+series.size)
        def labls = series.collect{it[0]}
        println("labels: " + labls )
        def values = series.collect{it[1]}
        println("values: " + values)
        
        def chequesUsados = ChequesUsados.executeQuery("select count(cu.id) from ChequesUsados cu where cu.cheque.tienda.id = :idTienda", [idTienda: params.id.toLong()])
        
        println("chequesUsados: "+ chequesUsados)
        
        def seriesColumns = [['string', 'Usados'], ['number', 'Numero de cheques']]
        def seriesData = series//[['Work', 11], ['Eateee', 2], ['Commute', 2], ['Watch TV', 2], ['Sleep', 7]]
        
        def usadosColums = [['string', 'Cheques'], ['number', 'Numero de cheques']]
        def usadosData = [['Usados', chequesUsados[0]], ['No Usados', cheques.size-chequesUsados]]
        
         model: ["seriesColumns": seriesColumns, 
                                    "seriesData": seriesData,
                                            "tiendaInstance":tiendaInstance,
                                            "usadosColums":usadosColums,
                                            "usadosData":usadosData] 
    }
    
    
    def reportgeneral(){ 
        println("en reporte general")
        def cheques = Cheque.executeQuery("from Cheque c")
        //def chequesUsados = ChequesUsados.executeQuery("select count(cu.id) from ChequesUsados cu where cu.dateCreated = :dateCreated", [dateCreated: params.id.toLong()])
        println("Total de cheques: " + cheques.size)
        println("cheques: " + cheques)
        //def chequesUsados = ChequesUsados.executeQuery("select cu from ChequesUsados cu where cu.dateCreated > '2013-11-13 11:30:39.251' and cu.dateCreated < '2013-11-13 11:30:39.632' ")
        //def cheques = Cheque.executeQuery("from Cheque c where c.tienda.id = :idTienda", [idTienda: params.id.toLong()])
        println ("date::: "+ new Date("2013-11-13"))
        def chequesUsados = ChequesUsados.executeQuery("select cu from ChequesUsados cu where cu.dateCreated > :fechaInicio and cu.dateCreated < :fechaFin",[fechaInicio: new Date("2013-11-13 11:30:39.251"), fechaFin: new Date("2013-11-13 11:30:39.632")])
        println("Numer de cheques usados: " + chequesUsados.size)
        println("Todos los cheques usados: " + chequesUsados)
        
        
    }
    
     
}
