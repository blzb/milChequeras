
<%@ page import="com.lucasian.cheques.Chequera" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'chequera.label', default: 'Chequera')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <section id="inner-headline">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
          <div class="inner-heading">
            <h2><g:message code="default.list.label" args="[entityName]" /></h2>
          </div>
        </div>	
        <div class="span3" style="margin-top: 30px;">
          <g:link class="btn btn-large btn-theme btn-rounded" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
        </div>				
      </div>		
      <!--div class="row-fluid">
        <div class="span12">	
          <ul class="breadcrumb">
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/><i class="icon-home"></i></a> <i class="icon-angle-right"></i></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link><i class="icon-angle-right"></i></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
          </ul>
        </div>
      </div-->
    </div>
  </section>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="show-chequera" class="content scaffold-show " role="main">
          
          <div class="span12 well"> 
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
              <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <ol class="property-list chequera">

              <g:if test="${chequeraInstance?.numero}">
                <li class="fieldcontain">
                  <span id="numero-label" class="property-label"><g:message code="chequera.numero.label" default="Numero" /></span>
  
                <span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${chequeraInstance}" field="numero"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.email}">
                <li class="fieldcontain">
                  <span id="email-label" class="property-label"><g:message code="chequera.email.label" default="Email" /></span>
  
                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${chequeraInstance}" field="email"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.nombre}">
                <li class="fieldcontain">
                  <span id="nombre-label" class="property-label"><g:message code="chequera.nombre.label" default="Nombre" /></span>
  
                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${chequeraInstance}" field="nombre"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.apellidos}">
                <li class="fieldcontain">
                  <span id="apellidos-label" class="property-label"><g:message code="chequera.apellidos.label" default="Apellidos" /></span>
  
                <span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${chequeraInstance}" field="apellidos"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.fechaNacimiento}">
                <li class="fieldcontain">
                  <span id="fechaNacimiento-label" class="property-label"><g:message code="chequera.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
  
                <span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${chequeraInstance?.fechaNacimiento}" /></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.sexo}">
                <li class="fieldcontain">
                  <span id="sexo-label" class="property-label"><g:message code="chequera.sexo.label" default="Sexo" /></span>
  
                <span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${chequeraInstance}" field="sexo"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.colonia}">
                <li class="fieldcontain">
                  <span id="colonia-label" class="property-label"><g:message code="chequera.colonia.label" default="Colonia" /></span>
  
                <span class="property-value" aria-labelledby="colonia-label"><g:fieldValue bean="${chequeraInstance}" field="colonia"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.telefono}">
                <li class="fieldcontain">
                  <span id="telefono-label" class="property-label"><g:message code="chequera.telefono.label" default="Telefono" /></span>
  
                <span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${chequeraInstance}" field="telefono"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.facebook}">
                <li class="fieldcontain">
                  <span id="facebook-label" class="property-label"><g:message code="chequera.facebook.label" default="Facebook" /></span>
  
                <span class="property-value" aria-labelledby="facebook-label"><g:fieldValue bean="${chequeraInstance}" field="facebook"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.serie}">
                <li class="fieldcontain">
                  <span id="serie-label" class="property-label"><g:message code="chequera.serie.label" default="Serie" /></span>
  
                <span class="property-value" aria-labelledby="serie-label"><g:link controller="serie" action="show" id="${chequeraInstance?.serie?.id}">${chequeraInstance?.serie?.encodeAsHTML()}</g:link></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeraInstance?.twitter}">
                <li class="fieldcontain">
                  <span id="twitter-label" class="property-label"><g:message code="chequera.twitter.label" default="Twitter" /></span>
  
                <span class="property-value" aria-labelledby="twitter-label"><g:fieldValue bean="${chequeraInstance}" field="twitter"/></span>
    
                </li>
              </g:if>
  
            </ol>
            <g:form url="[resource:chequeraInstance, action:'delete']" method="DELETE">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${chequeraInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
