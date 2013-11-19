
<%@ page import="com.lucasian.cheques.Vendedor" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'vendedor.label', default: 'Vendedor')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
 <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="show-vendedor" class="content scaffold-show " role="main">
          
          <div class="span12 well"> 
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
              <div class="alert  alert-danger">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <ol class="property-list vendedor">

              <g:if test="${vendedorInstance?.username}">
                <li class="fieldcontain">
                  <span id="username-label" class="property-label"><g:message code="vendedor.username.label" default="Username" /></span>
  
                <span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${vendedorInstance}" field="username"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${vendedorInstance?.rol}">
                <li class="fieldcontain">
                  <span id="rol-label" class="property-label"><g:message code="vendedor.rol.label" default="Rol" /></span>
  
                <span class="property-value" aria-labelledby="rol-label"><g:link controller="rol" action="show" id="${vendedorInstance?.rol?.id}">${vendedorInstance?.rol?.encodeAsHTML()}</g:link></span>
    
                </li>
              </g:if>
  
              <g:if test="${vendedorInstance?.nombre}">
                <li class="fieldcontain">
                  <span id="nombre-label" class="property-label"><g:message code="vendedor.nombre.label" default="Nombre" /></span>
  
                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${vendedorInstance}" field="nombre"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${vendedorInstance?.apellidoPaterno}">
                <li class="fieldcontain">
                  <span id="apellidoPaterno-label" class="property-label"><g:message code="vendedor.apellidoPaterno.label" default="Apellido Paterno" /></span>
  
                <span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${vendedorInstance}" field="apellidoPaterno"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${vendedorInstance?.apellidoMaterno}">
                <li class="fieldcontain">
                  <span id="apellidoMaterno-label" class="property-label"><g:message code="vendedor.apellidoMaterno.label" default="Apellido Materno" /></span>
  
                <span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${vendedorInstance}" field="apellidoMaterno"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${vendedorInstance?.email}">
                <li class="fieldcontain">
                  <span id="email-label" class="property-label"><g:message code="vendedor.email.label" default="Email" /></span>
  
                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${vendedorInstance}" field="email"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${vendedorInstance?.passwordHash}">
                <li class="fieldcontain">
                  <span id="passwordHash-label" class="property-label"><g:message code="vendedor.passwordHash.label" default="Password Hash" /></span>
  
                <span class="property-value" aria-labelledby="passwordHash-label"><g:fieldValue bean="${vendedorInstance}" field="passwordHash"/></span>
    
                </li>
              </g:if>
  
            </ol>
            <g:form url="[resource:vendedorInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${vendedorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
