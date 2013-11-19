
<%@ page import="com.lucasian.cheques.Usuario" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Administrador')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>	
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-usuario" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped dataTable">
            <thead>
              <tr>


                        <g:sortableColumn property="nombre" title="${message(code: 'usuario.nombre.label', default: 'Nombre')}" />
      
            <g:sortableColumn property="apellidoPaterno" title="${message(code: 'usuario.apellidoPaterno.label', default: 'Apellido Paterno')}" />
      
            <g:sortableColumn property="apellidoMaterno" title="${message(code: 'usuario.apellidoMaterno.label', default: 'Apellido Materno')}" />
            <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

              <td>${fieldValue(bean: usuarioInstance, field: "nombre")}</td>
      
              <td>${fieldValue(bean: usuarioInstance, field: "apellidoPaterno")}</td>
      
              <td>${fieldValue(bean: usuarioInstance, field: "apellidoMaterno")}</td>
   
      
              <td>
              <g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>                
              </td>
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${usuarioInstanceCount ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
