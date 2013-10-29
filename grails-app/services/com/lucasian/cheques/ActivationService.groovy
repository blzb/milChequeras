package com.lucasian.cheques

import grails.transaction.Transactional
import grails.plugin.mail.*

@Transactional
class ActivationService {
       MailService mailService
       def serviceMethod() {

       }
       def activar(Chequera chequera){
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
