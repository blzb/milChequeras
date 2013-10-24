<%@ page import="com.lucasian.cheques.Sucursal" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'sucursal.label', default: 'Sucursal')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <section id="inner-headline">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span6">
          <div class="inner-heading">
            <h2><g:message code="default.list.label" args="[entityName]" /></h2>
          </div>
        </div>	
        <div class="span6" style="margin-top: 30px;">
          <g:link class="btn btn-large btn-theme btn-rounded" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
        </div>				
      </div>		
      <!--div class="row-fluid">
        <div class="span12">	
          <ul class="breadcrumb">
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/><i class="icon-home"></i></a> <i class="icon-angle-right"></i></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link> <i class="icon-angle-right"></i></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
          </ul>
        </div>
      </div-->
    </div>
  </section>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="edit-sucursal" class="content scaffold-edit" role="main">

          <div class="span12 well">  
            <h2><g:message code="default.edit.label" args="[entityName]" /></h2>
            <g:if test="${flash.message}">
              <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${sucursalInstance}">
              <ul class="errors" role="alert">
                <g:eachError bean="${sucursalInstance}" var="error">
                  <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
              </ul>
            </g:hasErrors>
            <g:form url="[resource:sucursalInstance, action:'update']" method="PUT" >
              <g:hiddenField name="version" value="${sucursalInstance?.version}" />
              <fieldset class="form">
                <g:render template="form"/>
              </fieldset>
              <fieldset class="buttons">
                <g:actionSubmit class="save btn btn-large btn-theme btn-rounded" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
              </fieldset>
            </g:form>
            <div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'empleados', 'error')} ">
              <label for="empleados">
                <g:message code="sucursal.empleados.label" default="Empleados" />
                <g:link class="btn" controller="empleado" action="create" params="['sucursal.id': sucursalInstance?.id]" class="btn">${message(code: 'default.add.label', args: [message(code: 'empleado.label', default: 'Empleado')])}</g:link>
              </label>

              <table class="table table-striped">
                <thead>
                  <tr>
                <g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
                <g:sortableColumn property="apellidos" title="${message(code: 'empleado.apellidos.label', default: 'Apellidos')}" />
                <g:sortableColumn property="puesto" title="${message(code: 'empleado.puesto.label', default: 'Puesto')}" />

                </tr>
                </thead>
                <tbody>
                <g:each in="${sucursalInstance?.empleados?}" status="i" var="empleadoInstance">
                  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
                  <td>${fieldValue(bean: empleadoInstance, field: "apellidos")}</td>
                  <td>${fieldValue(bean: empleadoInstance, field: "puesto")}</td>
                  <td>
                  <g:form url="[resource:empleadoInstance, action:'delete']" method="DELETE">
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
