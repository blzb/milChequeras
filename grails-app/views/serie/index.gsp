
<%@ page import="com.lucasian.cheques.Serie" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'serie.label', default: 'Series')}" />
  <title><g:message code="default.list.label" args="['Series']" /></title>
</head>
<body>				
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label.fem',args:['Serie']), 'accion':'create' ]"/>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-serie" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert  alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped dataTable">
            <thead>
              <tr>

            <g:sortableColumn property="clave" title="${message(code: 'serie.clave.label', default: 'Clave')}" />
      
            <g:sortableColumn property="nombre" title="${message(code: 'serie.nombre.label', default: 'Nombre')}" />
            
            <g:sortableColumn  class="hidden-phone" property="inicioVigencia" title="${message(code: 'serie.inicioVigencia.label', default: 'Inicio de Vigencia')}" />
      
            <g:sortableColumn  class="hidden-phone" property="vigencia" title="${message(code: 'serie.vigencia.label', default: 'Fin de Vigencia')}" />            
            
            <th >
            </th>
      
            </tr>
            </thead>
            <tbody>
            <g:each in="${serieInstanceList}" status="i" var="serieInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td>${fieldValue(bean: serieInstance, field: "clave")}</td>
    
              <td>${fieldValue(bean: serieInstance, field: "nombre")}</td>
              <td  class="hidden-phone"><g:formatDate format="dd/MMMM/yyyy"  date="${serieInstance.inicioVigencia}" /></td>
              <td  class="hidden-phone"><g:formatDate format="dd/MMMM/yyyy"  date="${serieInstance.vigencia}" /></td>
              <td>
                 <g:form url="[resource:serieInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${serieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>
              </td>
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${serieInstanceCount ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
