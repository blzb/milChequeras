
<%@ page import="com.lucasian.cheques.Cheque" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'cheque.label', default: 'Cheque')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>	
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-cheque" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert alert-error">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="descripcion" title="${message(code: 'cheque.descripcion.label', default: 'Descripcion')}" />
      
            <g:sortableColumn property="clave" title="${message(code: 'cheque.clave.label', default: 'Clave')}" />
      
                <th><g:message code="cheque.serie.label" default="Serie" /></th>
      
                <th><g:message code="cheque.tienda.label" default="Tienda" /></th>
      
            </tr>
            </thead>
            <tbody>
            <g:each in="${chequeInstanceList}" status="i" var="chequeInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td>${fieldValue(bean: chequeInstance, field: "descripcion")}</td>
    
              <td>${fieldValue(bean: chequeInstance, field: "clave")}</td>
      
              <td>${fieldValue(bean: chequeInstance, field: "serie")}</td>
      
              <td>${fieldValue(bean: chequeInstance, field: "tienda")}</td>
      
              <td>
              <g:form url="[resource:chequeInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${chequeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>                
              </td>
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
