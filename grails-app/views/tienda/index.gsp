
<%@ page import="com.lucasian.cheques.Tienda" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'tienda.label', default: 'Tiendas')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>				
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label.fem',args:['Tienda']), 'accion':'create' ]"/>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-tienda" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped dataTable">
            <thead>
              <tr>
            <g:sortableColumn property="nombre" title="${message(code: 'tienda.nombre.label', default: 'Nombre')}" />

      
            <g:sortableColumn property="clave" title="${message(code: 'tienda.clave.label', default: 'Clave')}" />
      
            <th >
            </th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${tiendaInstanceList}" status="i" var="tiendaInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

              <td>${fieldValue(bean: tiendaInstance, field: "nombre")}</td>
    
              <td>${fieldValue(bean: tiendaInstance, field: "clave")}</td>
      
              <td>
                <g:form url="[resource:tiendaInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${tiendaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>
              </td>
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${tiendaInstanceCount ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
