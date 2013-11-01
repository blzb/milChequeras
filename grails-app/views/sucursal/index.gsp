
<%@ page import="com.lucasian.cheques.Sucursal" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'sucursal.label', default: 'Sucursal')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>				
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-sucursal" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>
            <g:sortableColumn property="nombre" title="${message(code: 'sucursal.nombre.label', default: 'Nombre')}" />

      
            <g:sortableColumn property="clave" title="${message(code: 'sucursal.clave.label', default: 'Clave')}" />
      
            <th class="acciones">
            </th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${sucursalInstanceList}" status="i" var="sucursalInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

              <td>${fieldValue(bean: sucursalInstance, field: "nombre")}</td>
    
              <td>${fieldValue(bean: sucursalInstance, field: "clave")}</td>
      
              <td>
                <g:form url="[resource:sucursalInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${sucursalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>
              </td>
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${sucursalInstanceCount ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
