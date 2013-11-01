<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main" />
    <title>Sample title</title>
  </head>
  <body>
    <g:if test="${usado}">
      <g:render  template="/headers/header" model="['titulo':'El cheque fue usado satisfactoriamente']"/>   
    </g:if>
    <g:else>
      <g:render  template="/headers/header" model="['titulo':'El cheque que desea usar ya fue utilizado']"/>   
    </g:else>    
    <section id="content">
      <div class="container-fluid">
        <div class="row-fluid">
          <g:if test="${usado}">
          </g:if>
          <g:else>
            <div class="span12">
              <div class="well">
                <h4>Fecha de uso: <g:formatDate format="dd/MMMM/yyyy HH:mm:ss" date="${chequera.dateCreated}"/></h4><br/>
                <h4>Referencia:${chequera.referencia}</h4>
              </div>
            </div>
          </g:else>
          <g:link action="index" class="btn btn-large btn-theme btn-rounded">Regresar</g:link>
        </div>
      </div>
    </section>  
  </body>
</html>
