
<%@ page import="com.lucasian.cheques.Chequera" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'chequera.label', default: 'Chequera')}" />
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
        <div id="list-chequera" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="numero" title="${message(code: 'chequera.numero.label', default: 'Numero')}" />
      
            <g:sortableColumn property="email" title="${message(code: 'chequera.email.label', default: 'Email')}" />
      
            <g:sortableColumn property="nombre" title="${message(code: 'chequera.nombre.label', default: 'Nombre')}" />
      
            <g:sortableColumn property="apellidos" title="${message(code: 'chequera.apellidos.label', default: 'Apellidos')}" />
      
            <g:sortableColumn property="facebook" title="${message(code: 'chequera.facebook.label', default: 'Facebook')}" />
      
                <th><g:message code="chequera.serie.label" default="Serie" /></th>
      
            </tr>
            </thead>
            <tbody>
            <g:each in="${chequeraInstanceList}" status="i" var="chequeraInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td><g:link action="edit" id="${chequeraInstance.id}">${fieldValue(bean: chequeraInstance, field: "numero")}</g:link></td>
    
              <td>${fieldValue(bean: chequeraInstance, field: "email")}</td>
      
              <td>${fieldValue(bean: chequeraInstance, field: "nombre")}</td>
      
              <td>${fieldValue(bean: chequeraInstance, field: "apellidos")}</td>
      
              <td>${fieldValue(bean: chequeraInstance, field: "facebook")}</td>
      
              <td>${fieldValue(bean: chequeraInstance, field: "serie")}</td>
      
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
