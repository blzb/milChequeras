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
    <section id="inner-headline">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span10">
            <div class="inner-heading">
              <h2>Buscar Numero de Chequera</h2>
            </div>
          </div>	                       
        </div>			
      </div>
    </section>
    <section id="content">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <g:if test="${mensaje != null}">
              <div class="alert alert-error">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>${mensaje}</strong>
              </div>

            </g:if>
            <br/>
            <br/>
              <br/>
            <g:form action="buscar">                  
              <div class="row-fluid">
                <div class="span2">
                </div>
                <div class="span8">
                  <g:textField  name="serie" class="span12 input-medium search-query">
                  </g:textField>
                </div>
              </div>
              <div class="row-fluid">
                <div class="span2">
                </div>
                <div class="span8">
                  <input type="submit" value="Buscar" class="btn btn-large btn-theme btn-rounded span12">
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
