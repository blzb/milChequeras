
<%@ page import="com.lucasian.cheques.Chequera" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'chequera.label', default: 'Chequera')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>	
<g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:['Chequeras']), 'boton':'Activar Chequera', 'accion':'create' ]"/>
<section id="content">
  <div class="container-fluid">
    <div class="row-fluid" style="margin-top: 20px;">
      <div id="list-chequera" class="content scaffold-list span12" role="main">
        <g:if test="${flash.message}">
          <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
        </g:if>
        <table class="table table-striped dataTable">
          <thead>
            <tr>

          <g:sortableColumn property="numero" title="${message(code: 'chequera.numero.label', default: 'Numero')}" />

          <g:sortableColumn property="nombre" title="${message(code: 'chequera.nombre.label', default: 'Nombre')}" />            

          <g:sortableColumn property="apellidos" title="${message(code: 'chequera.apellidos.label', default: 'Apellidos')}" />
          <th>Registrado por</th>
          <th >
          </th>
          </tr>
          </thead>
          <tbody>
          <g:each in="${chequeraInstanceList}" status="i" var="chequeraInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

              <td>${fieldValue(bean: chequeraInstance, field: "numero")}</td>


              <td>${fieldValue(bean: chequeraInstance, field: "nombre")}</td>

              <td>${fieldValue(bean: chequeraInstance, field: "apellidos")}</td>

              
              <td>
                  ${fieldValue(bean: chequeraInstance, field: "registradoPor")}
              </td>
              <td>
            <g:form url="[resource:chequeraInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;"  style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class=" btn" action="edit" resource="${chequeraInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>                
            </td>
            </tr>
          </g:each>
          </tbody>
        </table>
        <div class="pagination">
          <g:paginate total="${chequeraInstanceCount ?: 0}" />
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
