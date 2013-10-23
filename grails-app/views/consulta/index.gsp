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
          <div class="span5">
            <div class="inner-heading">
              <h2>Buscar Cheque</h2>
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
            <g:form action="buscar"  class="form-search">    
              Numero de Serie de la chequera:              
              <g:textField name="serie" class="input-medium search-query">
              </g:textField>
              <input type="submit" value="Buscar" class="btn">
            </g:form>
          </div>
        </div>
      </div>
    </section>  
  </body>
</html>
