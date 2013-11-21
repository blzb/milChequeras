<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <h1>¡¡Felicidades!!</h1>
    <p><g:if test="${chequera.sexo=="Hombre"}">Estimado</g:if><g:else>Estimada</g:else> <b>${chequera.nombre} ${chequera.apellidos}</b> se le informa que la chequera con numero <b>${chequera.numero}</b> perteneciente a la serie <b>"${chequera.serie.nombre}"</b> ha quedado registrada a su nombre.</p>
    <p>Su chequera está vigente hasta el dia <b><g:formatDate format="dd/MMMM/yyyy"  date="${chequera.serie.vigencia}" /></b>.</p>    
  </body>
</html>
