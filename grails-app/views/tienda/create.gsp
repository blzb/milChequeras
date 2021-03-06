<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'tienda.label', default: 'Tienda')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:['Tiendas'])]"/>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="create-tienda" class="content scaffold-create" role="main">                                
          
          <div class="span12 well">                       
            <h2 class="header smaller lighter blue"><g:message code="default.create.label" args="[entityName]" /></h2>
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
            <g:form class="form-horizontal" url="[resource:tiendaInstance, action:'save']"  enctype="multipart/form-data">
                    <fieldset class="form">
                <g:render template="form" model="[tiendaInstance: tiendaInstance, nuevo: true]"/>
              </fieldset>
              <br/>
              <fieldset class="">
                <g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" /> <g:link action="index" class="btn btn-danger">Cancelar</g:link>
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
