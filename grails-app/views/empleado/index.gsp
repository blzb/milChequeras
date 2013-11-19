
<%@ page import="com.lucasian.cheques.Empleado" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>				
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-empleado" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped dataTable">
            <thead>
              <tr>

            <g:sortableColumn property="username" title="${message(code: 'empleado.username.label', default: 'Username')}" />
      
            <g:sortableColumn property="puesto" title="${message(code: 'empleado.puesto.label', default: 'Puesto')}" />
      
            <g:sortableColumn property="email" title="${message(code: 'empleado.email.label', default: 'Email')}" />
      
            <g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
      
            <g:sortableColumn property="apellidos" title="${message(code: 'empleado.apellidos.label', default: 'Apellidos')}" />
      
            <g:sortableColumn property="passwordHash" title="${message(code: 'empleado.passwordHash.label', default: 'Password Hash')}" />
            <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${empleadoInstanceList}" status="i" var="empleadoInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td><g:link action="edit" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "username")}</g:link></td>
    
              <td>${fieldValue(bean: empleadoInstance, field: "puesto")}</td>
      
              <td>${fieldValue(bean: empleadoInstance, field: "email")}</td>
      
              <td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
      
              <td>${fieldValue(bean: empleadoInstance, field: "apellidos")}</td>
      
              <td>${fieldValue(bean: empleadoInstance, field: "passwordHash")}</td>
      
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${empleadoInstanceCount ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
