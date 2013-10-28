
<%@ page import="com.lucasian.cheques.Empleado" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
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
            <li><a href="#"><g:message code="default.list.label" args="[entityName]" /></a> </li>
          </ul>
        </div>
      </div-->
    </div>
  </section>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-empleado" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="username" title="${message(code: 'empleado.username.label', default: 'Username')}" />
      
            <g:sortableColumn property="puesto" title="${message(code: 'empleado.puesto.label', default: 'Puesto')}" />
      
            <g:sortableColumn property="email" title="${message(code: 'empleado.email.label', default: 'Email')}" />
      
            <g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
      
            <g:sortableColumn property="apellidos" title="${message(code: 'empleado.apellidos.label', default: 'Apellidos')}" />
      
            <g:sortableColumn property="passwordHash" title="${message(code: 'empleado.passwordHash.label', default: 'Password Hash')}" />
      
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
