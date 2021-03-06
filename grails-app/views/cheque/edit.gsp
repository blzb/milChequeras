<%@ page import="com.lucasian.cheques.Cheque" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'cheque.label', default: 'Cheque')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="edit-cheque" class="content scaffold-edit" role="main">
          
          <div class="span12 well">  
            <h2 class="header smaller lighter blue"><g:message code="default.edit.label" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
              <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${chequeInstance}">
              <ul class="errors" role="alert">
                <g:eachError bean="${chequeInstance}" var="error">
                  <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
              </ul>
            </g:hasErrors>
            <g:form class="form-horizontal" url="[resource:chequeInstance, action:'update']" method="PUT" >
                    <g:hiddenField name="version" value="${chequeInstance?.version}" />
              <fieldset class="form">
                <g:render template="form"/>
              </fieldset>
              <fieldset class="buttons">
                <g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /> <g:link controller="serie" action="edit" id="${chequeInstance.serie.id}" class="btn btn-danger">Cancelar</g:link>
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
