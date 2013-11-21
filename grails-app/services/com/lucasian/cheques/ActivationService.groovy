package com.lucasian.cheques

import grails.transaction.Transactional
import grails.plugin.mail.*
import org.apache.shiro.SecurityUtils

@Transactional
class ActivationService {
       MailService mailService
       def serviceMethod() {
       }
       def activar(Chequera chequera){
              Usuario registrador = Usuario.findByUsername(SecurityUtils.subject.principal)
              chequera.registrador = registrador
              chequera.save flush:true
              if(chequera?.email){
                     mailService.sendMail {     
                            to chequera.email
                            subject "Activacion de Chequera"
                            html( view:"/chequera/email",model:[chequera:chequera])
                     }
              }else{
                     
              }
              
       }
}
