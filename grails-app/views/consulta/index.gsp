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
    <g:render  template="/headers/header" model="['titulo':'Buscar Numero de Chequera']"/>   
    <section id="content" >
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <g:if test="${noEncontrado}">
              <div class="alert  alert-danger">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <h4>La chequera no fue encontrada dentro del sistema</h4>
              </div>
            </g:if>
             <g:if test="${noVigente}">
              <div class="alert  alert-danger">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <h4>La chequera <strong>ya no se encuentra vigente</strong></h4>  <br/>
                vigencia: (${formatDate(format:'dd/MMMM/yyyy',date:inicioVigencia)} - ${formatDate(format:'dd/MMMM/yyyy',date:finVigencia)})
              </div>
            </g:if>
            <br/>
            <br/>
            <g:form action="buscar">                  
              <div class="row-fluid">
                <div class="col-xs-12">
                  <g:textField  name="serie" required="" class="col-xs-12 " style=" font-size: 2.5em; min-height: 2em;">
                  </g:textField>
                </div>
              </div>
              <br/>
              <div class="row-fluid">
                <div class="col-xs-12">
                  <input type="submit" value="Buscar" class="btn btn-lg btn-theme btn-rounded col-xs-12">
                </div>
              </div>
              <br/>


              <br/>
              
            </g:form>
          </div>
        </div>
      </div>
    </section>  
  </body>
</html>
