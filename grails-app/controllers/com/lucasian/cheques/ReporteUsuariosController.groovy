package com.lucasian.cheques

class ReporteUsuariosController {
       def ReporteAdquirientesService reporteAdquirientesService
       def ReporteUnChequeUsadoService reporteUnChequeUsadoService
       def index() { 
           
       }
       def adquirientes(){
              model:[
                     columnasBarras:[['string', 'Sexo'], ['number', 'Hombres'], ['number', 'Mujeres']], 
                     datosBarras:reporteAdquirientesService.getGroupByEdad(),
                     columnasPastel: [['string', 'Sexo'], ['number', 'Contador']],
                     datosPastel: reporteAdquirientesService.getGroupBySexo()]
       }
       def unChequeUsado(){
              model:[
                     columnasBarras:[['string', 'Sexo'], ['number', 'Hombres'], ['number', 'Mujeres']], 
                     datosBarras:reporteUnChequeUsadoService.getGroupByEdad(),
                     columnasPastel: [['string', 'Sexo'], ['number', 'Contador']],
                     datosPastel: reporteUnChequeUsadoService.getGroupBySexo()]
       }
}
