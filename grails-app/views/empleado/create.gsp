<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName])]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="create-empleado" class="content scaffold-create" role="main">                                
          
          <div class="span12 well">                       
            <h2 class="header smaller lighter blue"><g:message code="default.create.label" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
              <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${empleadoInstance}">
              <ul class="errors" role="alert">
                <g:eachError bean="${empleadoInstance}" var="error">
                  <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
              </ul>
            </g:hasErrors>
            <g:form class="form-horizontal" url="[resource:empleadoInstance, action:'save']" >
                    <fieldset class="form">
                <g:render template="form" model="[empleadoInstance:empleadoInstance, nuevo:true]"/>
              </fieldset>
              <br/>
              <fieldset class="">
                <g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" /> <g:link controller="tienda" action="edit" id="${params.tienda.id}" class="btn btn-danger">Cancelar</g:link>
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
