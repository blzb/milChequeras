
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
        <div class="span9">
          <div class="inner-heading">
            <h2><g:message code="default.list.label" args="[entityName]" />s Activas</h2>
          </div>
        </div>	
        <div class="span3" style="margin-top: 30px;">
          <g:link class="btn btn-large btn-theme btn-rounded" action="create"><!--g:message code="default.new.label" args="[entityName]" /-->Activar Chequera</g:link>
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
            <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="numero" title="${message(code: 'chequera.numero.label', default: 'Numero')}" />
            
            <g:sortableColumn property="nombre" title="${message(code: 'chequera.nombre.label', default: 'Nombre')}" />            

            <g:sortableColumn property="apellidoPaterno" title="${message(code: 'chequera.apellidoPaterno.label', default: 'Apellido Paterno')}" />
            <g:sortableColumn property="apellidoMaterno" title="${message(code: 'chequera.apellidoMaterno.label', default: 'Apellido Materno')}" />
            <th class="acciones">
            </th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${chequeraInstanceList}" status="i" var="chequeraInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td>${fieldValue(bean: chequeraInstance, field: "numero")}</td>
    
      
              <td>${fieldValue(bean: chequeraInstance, field: "nombre")}</td>
      
              <td>${fieldValue(bean: chequeraInstance, field: "apellidoPaterno")}</td>
              <td>${fieldValue(bean: chequeraInstance, field: "apellidoMaterno")}</td>
      
              <td>
              <g:form url="[resource:chequeraInstance, action:'delete']" method="DELETE">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${chequeraInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
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
