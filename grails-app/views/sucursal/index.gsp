
<%@ page import="com.lucasian.cheques.Sucursal" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'sucursal.label', default: 'Sucursal')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
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
            <li><a href="#"><g:message code="default.list.label" args="[entityName]" /></a> </li>
          </ul>
        </div>
      </div-->
    </div>
  </section> 
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-sucursal" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="direccion" title="${message(code: 'sucursal.direccion.label', default: 'Direccion')}" />
      
            <g:sortableColumn property="clave" title="${message(code: 'sucursal.clave.label', default: 'Clave')}" />
      
            <g:sortableColumn property="nombre" title="${message(code: 'sucursal.nombre.label', default: 'Nombre')}" />
      
            </tr>
            </thead>
            <tbody>
            <g:each in="${sucursalInstanceList}" status="i" var="sucursalInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td><g:link action="edit" id="${sucursalInstance.id}">${fieldValue(bean: sucursalInstance, field: "direccion")}</g:link></td>
    
              <td>${fieldValue(bean: sucursalInstance, field: "clave")}</td>
      
              <td>${fieldValue(bean: sucursalInstance, field: "nombre")}</td>
      
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
