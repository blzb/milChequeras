package com.lucasian.cheques

import grails.transaction.Transactional
import org.apache.shiro.SecurityUtils
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap


@Transactional
class ChequesUsadosService {

    def serviceMethod() {

    }

    /**
     * Obtiene cheques usados segun la tienda del empleado logueado
     * @return Cheques usados
     */
    def obtenerChequesUsados(GrailsParameterMap params) {
        def idTienda = SecurityUtils.subject.principal.tienda.id
        params.idTienda=idTienda
        def chequesUsados = ChequesUsados.
                executeQuery("from ChequesUsados cu where cu.cheque.tienda.id = :idTienda and lower(cu.cheque.serie.clave) like :serie and  lower(CONCAT(cu.chequera.nombre,' ',cu.chequera.apellidos)) like :propietario   and lower(cu.chequera.numero) like :numChequera and lower(cu.cheque.clave) like :numCheque order by cu.dateCreated desc", params)
        return chequesUsados
    }

    def obtenerChequesUsadosFiltro(GrailsParameterMap params) {
        def idTienda = SecurityUtils.subject.principal.tienda.id
        params.idTienda=idTienda
        def chequesUsados = ChequesUsados.executeQuery("from ChequesUsados cu where cu.cheque.tienda.id = :idTienda and lower(cu.cheque.serie.clave) like :serie and lower(CONCAT(cu.chequera.nombre,' ',cu.chequera.apellidos)) like :propietario  and lower(cu.chequera.numero) like :numChequera and lower(cu.cheque.clave) like :numCheque order by cu.dateCreated desc", params)
        return chequesUsados
    }

    /**
     * Total de cheques usados segun la tienda del empleado logueado.
     * @return
     */
    def obtenerCountChequesUsados() {
        def idTienda = SecurityUtils.subject.principal.tienda.id
        def p = [idTienda: idTienda]
        def countChequesUsados = ChequesUsados.executeQuery("select count(*) from ChequesUsados cu where cu.cheque.tienda.id = :idTienda", p)
        return countChequesUsados[0]
    }

    def obtenerCountChequesUsadosFiltro(GrailsParameterMap params) {
        def idTienda = SecurityUtils.subject.principal.tienda.id
        params.idTienda=idTienda
        params.remove("offset")
        def countChequesUsados = ChequesUsados.executeQuery("select count(*) from ChequesUsados cu where cu.cheque.tienda.id = :idTienda and lower(cu.cheque.serie.clave) like :serie and lower(CONCAT(cu.chequera.nombre,' ',cu.chequera.apellidos)) like :propietario and lower(cu.chequera.numero) like :numChequera and lower(cu.cheque.clave) like :numCheque", params)
        return countChequesUsados[0]
    }

    def revocarChequeUsado(id){
        def p = [idChequeUsado: Long.valueOf(id)]
        def res = ChequesUsados.executeUpdate("delete from ChequesUsados where id = :idChequeUsado", p)
        res = (res>0)?true:false
        return res;
    }
}
