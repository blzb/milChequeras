<%@ page import="com.lucasian.cheques.Tienda" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'tienda.label', default: 'Tienda')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
  <script type="text/javascript" src="http://www.google.com/jsapi"></script>
</head>
<body>
<g:render  template="/headers/header" model="['titulo':message(code:'default.report.tienda.label',args:[entityName])]"/>   
<section id="content">
  <div class="container-fluid">
    <div class="row-fluid" style="margin-top: 20px;">
      <div id="reporte-tienda" class="content scaffold-edit" role="main">
        <div class="span12 well">  
          
          <g:if test="${flash.message}">
            <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <g:hasErrors bean="${tiendaInstance}">
            <ul class="errors" role="alert">
              <g:eachError bean="${tiendaInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
              </g:eachError>
            </ul>
          </g:hasErrors>
          <g:form url="[resource:tiendaInstance]">
            <g:hiddenField name="version" value="${tiendaInstance?.version}" />
            <fieldset class="form">
              <g:render template="chart"/>
            </fieldset>
            <fieldset class="buttons" align="center">
              <g:link action="index" class="btn btn-large btn-theme btn-rounded">Cerrar</g:link>
            </fieldset>
          </g:form>         
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
