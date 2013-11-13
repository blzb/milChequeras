<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'tienda.label', default: 'Tienda')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<g:render  template="/headers/header" model="['titulo':message(code:'default.report.label')]"/>   
<section id="content">
  <div class="container-fluid">
    <div class="row-fluid" style="margin-top: 20px;">
      <div id="list-tienda" class="content scaffold-create" role="main">                                
        <g:if test="${flash.message}">
          <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
        </g:if>
        <table class="table table-striped">
          <thead>
            <tr>
          <g:sortableColumn property="nombre" title="${message(code: 'tienda.nombre.label', default: 'Nombre')}" />


          <g:sortableColumn property="clave" title="${message(code: 'tienda.clave.label', default: 'Clave')}" />

          <th class="acciones">
          </th>
          </tr>
          </thead>
          <tbody>
          <g:each in="${tiendaInstanceList}" status="i" var="tiendaInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

              <td>${fieldValue(bean: tiendaInstance, field: "nombre")}</td>

              <td>${fieldValue(bean: tiendaInstance, field: "clave")}</td>

              <td>

                <fieldset class="buttons">
                  <g:link class="btn"  url="[action:'report',controller:'reporte',id:"${tiendaInstance.id}"]"><g:message code="default.report.view" default="Ver" /></g:link>
                </fieldset>

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
