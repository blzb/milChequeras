
<%@ page import="com.lucasian.cheques.Tienda" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'tienda.label', default: 'Tienda')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="show-tienda" class="content scaffold-show " role="main">
          
          <div class="span12 well"> 
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
              <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <ol class="property-list tienda">

              <g:if test="${tiendaInstance?.direccion}">
                <li class="fieldcontain">
                  <span id="direccion-label" class="property-label"><g:message code="tienda.direccion.label" default="Direccion" /></span>
  
                <span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${tiendaInstance}" field="direccion"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${tiendaInstance?.clave}">
                <li class="fieldcontain">
                  <span id="clave-label" class="property-label"><g:message code="tienda.clave.label" default="Clave" /></span>
  
                <span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${tiendaInstance}" field="clave"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${tiendaInstance?.nombre}">
                <li class="fieldcontain">
                  <span id="nombre-label" class="property-label"><g:message code="tienda.nombre.label" default="Nombre" /></span>
  
                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${tiendaInstance}" field="nombre"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${tiendaInstance?.cheques}">
                <li class="fieldcontain">
                  <span id="cheques-label" class="property-label"><g:message code="tienda.cheques.label" default="Cheques" /></span>
  
                <g:each in="${tiendaInstance.cheques}" var="c">
                  <span class="property-value" aria-labelledby="cheques-label"><g:link controller="cheque" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
                </g:each>
    
                </li>
              </g:if>
  
              <g:if test="${tiendaInstance?.empleados}">
                <li class="fieldcontain">
                  <span id="empleados-label" class="property-label"><g:message code="tienda.empleados.label" default="Empleados" /></span>
  
                <g:each in="${tiendaInstance.empleados}" var="e">
                  <span class="property-value" aria-labelledby="empleados-label"><g:link controller="empleado" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
                </g:each>
    
                </li>
              </g:if>
  
            </ol>
            <g:form url="[resource:tiendaInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${tiendaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
