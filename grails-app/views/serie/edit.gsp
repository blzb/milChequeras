<%@ page import="com.lucasian.cheques.Serie" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'serie.label', default: 'Series')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label.fem',args:['Serie']), 'accion':'create' ]"/>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="edit-serie" class="content scaffold-edit" role="main">

          <div class="span12 well">  
            <h2 class="header smaller lighter blue"><g:message code="default.edit.label" args="['Serie']" /></h2>
            <g:if test="${flash.message}">
              <div class="alert  alert-danger">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${serieInstance}">
              <ul class="errors" role="alert">
                <g:eachError bean="${serieInstance}" var="error">
                  <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
              </ul>
            </g:hasErrors>
            <g:form class="form-horizontal" url="[resource:serieInstance, action:'update']" method="PUT" >
              <g:hiddenField name="version" value="${serieInstance?.version}" />
              <fieldset class="form">
                <g:render template="form"/>
              </fieldset>
              <fieldset class="buttons">
                <g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /> <g:link action="index" class="btn btn-danger">Cancelar</g:link>
              </fieldset>
            </g:form>

            <br/>
            <div class="fieldcontain form-group ${hasErrors(bean: serieInstance, field: 'cheques', 'error')} ">
              <label class="col-sm-3 control-label no-padding-right" for="cheques">
                <g:message code="serie.cheques.label" default="Cheques" />
                <g:link class="btn" controller="cheque" action="create" params="['serie.id': serieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cheque.label', default: 'Cheque')])}</g:link>
              </label>
                <br/>
              <table class="table table-striped dataTable">
                <thead>
                  <tr>

                <g:sortableColumn property="descripcion" title="${message(code: 'cheque.descripcion.label', default: 'Descripci\u00F3n')}" />

                <th><g:message code="cheque.tienda.label" default="Tienda" /></th>
                  <th></th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${serieInstance?.cheques?}" status="i" var="chequeInstance">
                  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td>${fieldValue(bean: chequeInstance, field: "descripcion")}</td>


                    <td>${fieldValue(bean: chequeInstance, field: "tienda")}</td>

                    <td>
                  <g:form class="form-horizontal" url="[resource:chequeInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
                    <fieldset class="buttons">
                      <g:link class="edit btn" action="edit" resource="${chequeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                      <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                  </g:form>
                  </td>

                  </tr>
                </g:each>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
