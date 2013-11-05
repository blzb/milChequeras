<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Administrador')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="create-usuario" class="content scaffold-create" role="main">                                
          
          <div class="span12 well">                       
            <h2><g:message code="default.create.label" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
              <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${usuarioInstance}">
              <ul class="errors" role="alert">
                <g:eachError bean="${usuarioInstance}" var="error">
                  <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
              </ul>
            </g:hasErrors>
            <g:form class="" url="[resource:usuarioInstance, action:'save']" >
                    <fieldset class="form">
                <g:render template="form"/>
              </fieldset>
              <br/>
              <fieldset class="">
                <g:submitButton name="create" class="btn btn-large btn-theme btn-rounded" value="${message(code: 'default.button.create.label', default: 'Create')}" /><g:link action="index"  class="btn btn-large btn-theme btn-rounded">Cancelar</g:link>
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
