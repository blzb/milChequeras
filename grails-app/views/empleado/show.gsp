
<%@ page import="com.lucasian.cheques.Empleado" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="show-empleado" class="content scaffold-show " role="main">
          
          <div class="span12 well"> 
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
              <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <ol class="property-list empleado">

              <g:if test="${empleadoInstance?.username}">
                <li class="fieldcontain">
                  <span id="username-label" class="property-label"><g:message code="empleado.username.label" default="Username" /></span>
  
                <span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${empleadoInstance}" field="username"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${empleadoInstance?.puesto}">
                <li class="fieldcontain">
                  <span id="puesto-label" class="property-label"><g:message code="empleado.puesto.label" default="Puesto" /></span>
  
                <span class="property-value" aria-labelledby="puesto-label"><g:fieldValue bean="${empleadoInstance}" field="puesto"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${empleadoInstance?.email}">
                <li class="fieldcontain">
                  <span id="email-label" class="property-label"><g:message code="empleado.email.label" default="Email" /></span>
  
                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empleadoInstance}" field="email"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${empleadoInstance?.nombre}">
                <li class="fieldcontain">
                  <span id="nombre-label" class="property-label"><g:message code="empleado.nombre.label" default="Nombre" /></span>
  
                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoInstance}" field="nombre"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${empleadoInstance?.apellidos}">
                <li class="fieldcontain">
                  <span id="apellidos-label" class="property-label"><g:message code="empleado.apellidos.label" default="Apellidos" /></span>
  
                <span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${empleadoInstance}" field="apellidos"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${empleadoInstance?.passwordHash}">
                <li class="fieldcontain">
                  <span id="passwordHash-label" class="property-label"><g:message code="empleado.passwordHash.label" default="Password Hash" /></span>
  
                <span class="property-value" aria-labelledby="passwordHash-label"><g:fieldValue bean="${empleadoInstance}" field="passwordHash"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${empleadoInstance?.rol}">
                <li class="fieldcontain">
                  <span id="rol-label" class="property-label"><g:message code="empleado.rol.label" default="Rol" /></span>
  
                <span class="property-value" aria-labelledby="rol-label"><g:link controller="rol" action="show" id="${empleadoInstance?.rol?.id}">${empleadoInstance?.rol?.encodeAsHTML()}</g:link></span>
    
                </li>
              </g:if>
  
              <g:if test="${empleadoInstance?.sucursal}">
                <li class="fieldcontain">
                  <span id="sucursal-label" class="property-label"><g:message code="empleado.sucursal.label" default="Sucursal" /></span>
  
                <span class="property-value" aria-labelledby="sucursal-label"><g:link controller="sucursal" action="show" id="${empleadoInstance?.sucursal?.id}">${empleadoInstance?.sucursal?.encodeAsHTML()}</g:link></span>
    
                </li>
              </g:if>
  
            </ol>
            <g:form url="[resource:empleadoInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${empleadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
