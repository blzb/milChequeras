
<%@ page import="com.lucasian.cheques.Cheque" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'cheque.label', default: 'Cheque')}" />
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
        <div id="list-cheque" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="texto" title="${message(code: 'cheque.texto.label', default: 'Texto')}" />
      
                <th><g:message code="cheque.serie.label" default="Serie" /></th>
      
                <th><g:message code="cheque.sucursal.label" default="Sucursal" /></th>
      
            </tr>
            </thead>
            <tbody>
            <g:each in="${chequeInstanceList}" status="i" var="chequeInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td><g:link action="edit" id="${chequeInstance.id}">${fieldValue(bean: chequeInstance, field: "texto")}</g:link></td>
    
              <td>${fieldValue(bean: chequeInstance, field: "serie")}</td>
      
              <td>${fieldValue(bean: chequeInstance, field: "sucursal")}</td>
      
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="${chequeInstanceCount ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
