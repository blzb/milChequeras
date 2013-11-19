
<%@ page import="com.lucasian.cheques.Serie" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'serie.label', default: 'Serie')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="show-serie" class="content scaffold-show " role="main">
          
          <div class="span12 well"> 
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
              <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <ol class="property-list serie">

              <g:if test="${serieInstance?.clave}">
                <li class="fieldcontain">
                  <span id="clave-label" class="property-label"><g:message code="serie.clave.label" default="Clave" /></span>
  
                <span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${serieInstance}" field="clave"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${serieInstance?.nombre}">
                <li class="fieldcontain">
                  <span id="nombre-label" class="property-label"><g:message code="serie.nombre.label" default="Nombre" /></span>
  
                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${serieInstance}" field="nombre"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${serieInstance?.vigencia}">
                <li class="fieldcontain">
                  <span id="vigencia-label" class="property-label"><g:message code="serie.vigencia.label" default="Vigencia" /></span>
  
                <span class="property-value" aria-labelledby="vigencia-label"><g:formatDate date="${serieInstance?.vigencia}" /></span>
    
                </li>
              </g:if>
  
              <g:if test="${serieInstance?.chequeras}">
                <li class="fieldcontain">
                  <span id="chequeras-label" class="property-label"><g:message code="serie.chequeras.label" default="Chequeras" /></span>
  
                <g:each in="${serieInstance.chequeras}" var="c">
                  <span class="property-value" aria-labelledby="chequeras-label"><g:link controller="chequera" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
                </g:each>
    
                </li>
              </g:if>
  
              <g:if test="${serieInstance?.cheques}">
                <li class="fieldcontain">
                  <span id="cheques-label" class="property-label"><g:message code="serie.cheques.label" default="Cheques" /></span>
  
                <g:each in="${serieInstance.cheques}" var="c">
                  <span class="property-value" aria-labelledby="cheques-label"><g:link controller="cheque" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
                </g:each>
    
                </li>
              </g:if>
  
            </ol>
            <g:form url="[resource:serieInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${serieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
