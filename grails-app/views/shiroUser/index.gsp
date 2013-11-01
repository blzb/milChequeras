
<%@ page import="com.lucasian.cheques.ShiroUser" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'shiroUser.label', default: 'ShiroUser')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>	
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-shiroUser" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert alert-error">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="username" title="${message(code: 'shiroUser.username.label', default: 'Username')}" />
      
                <th><g:message code="shiroUser.rol.label" default="Rol" /></th>
      
            <g:sortableColumn property="nombre" title="${message(code: 'shiroUser.nombre.label', default: 'Nombre')}" />
      
            <g:sortableColumn property="apellidoPaterno" title="${message(code: 'shiroUser.apellidoPaterno.label', default: 'Apellido Paterno')}" />
      
            <g:sortableColumn property="apellidoMaterno" title="${message(code: 'shiroUser.apellidoMaterno.label', default: 'Apellido Materno')}" />
      
            <g:sortableColumn property="email" title="${message(code: 'shiroUser.email.label', default: 'Email')}" />
      
            </tr>
            </thead>
            <tbody>
            <g:each in="${shiroUserInstanceList}" status="i" var="shiroUserInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td>${fieldValue(bean: shiroUserInstance, field: "username")}</td>
    
              <td>${fieldValue(bean: shiroUserInstance, field: "rol")}</td>
      
              <td>${fieldValue(bean: shiroUserInstance, field: "nombre")}</td>
      
              <td>${fieldValue(bean: shiroUserInstance, field: "apellidoPaterno")}</td>
      
              <td>${fieldValue(bean: shiroUserInstance, field: "apellidoMaterno")}</td>
      
              <td>${fieldValue(bean: shiroUserInstance, field: "email")}</td>
      
              <td>
              <g:form url="[resource:shiroUserInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${shiroUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>                
              </td>
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${shiroUserInstanceCount ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
