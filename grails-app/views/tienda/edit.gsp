<%@ page import="com.lucasian.cheques.Tienda" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'tienda.label', default: 'Tienda')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="edit-tienda" class="content scaffold-edit" role="main">

          <div class="span12 well">  
            <h2 class="header smaller lighter blue"><g:message code="default.edit.label" args="[entityName]" /></h2>
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
            <g:form class="form-horizontal" url="[resource:tiendaInstance, action:'update']" enctype="multipart/form-data">
              <g:hiddenField name="version" value="${tiendaInstance?.version}" />
              <fieldset class="form">
                <g:render template="form"/>
              </fieldset>
              <fieldset class="buttons">
                <g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /> <g:link action="index" class="btn btn-danger">Cancelar</g:link>
              </fieldset>
            </g:form>
            <div class="fieldcontain form-group ${hasErrors(bean: tiendaInstance, field: 'empleados', 'error')} ">
              <label class="col-sm-3 control-label no-padding-right" for="empleados">
                <g:message code="tienda.empleados.label" default="Empleados" />
                <g:link class="btn" controller="empleado" action="create" params="['tienda.id': tiendaInstance?.id]" class="btn">${message(code: 'default.add.label', args: [message(code: 'empleado.label', default: 'Empleado')])}</g:link>
              </label>

              <table class="table table-striped dataTable">
                <thead>
                  <tr>
                <g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
                <g:sortableColumn property="apellidoPaterno" title="${message(code: 'empleado.apellidoPaterno.label', default: 'Apellido Paterno')}" />
                <g:sortableColumn property="apellidoMaterno" title="${message(code: 'empleado.apellidoMaterno.label', default: 'Apellido Materno')}" />
                <g:sortableColumn property="puesto" title="${message(code: 'empleado.puesto.label', default: 'Puesto')}" />

                </tr>
                </thead>
                <tbody>
                <g:each in="${tiendaInstance?.empleados?}" status="i" var="empleadoInstance">
                  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
                  <td>${fieldValue(bean: empleadoInstance, field: "apellidoPaterno")}</td>
                  <td>${fieldValue(bean: empleadoInstance, field: "apellidoMaterno")}</td>
                  <td>${fieldValue(bean: empleadoInstance, field: "puesto")}</td>
                  <td>
                  <g:form class="form-horizontal" url="[resource:empleadoInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
                    <fieldset class="buttons">
                      <g:link class="edit btn" action="edit" resource="${empleadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
