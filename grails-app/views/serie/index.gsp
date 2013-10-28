
<%@ page import="com.lucasian.cheques.Serie" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'serie.label', default: 'Serie')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>				
  <section id="inner-headline">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
          <div class="inner-heading">
            <h2><g:message code="default.list.label" args="[entityName]" /></h2>
          </div>
        </div>	
        <div class="span3" style="margin-top: 30px;">
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
        <div id="list-serie" class="content scaffold-list span12" role="main">
          <g:if test="${flash.message}">
            <div class="alert alert-info">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
          </g:if>
          <table class="table table-striped">
            <thead>
              <tr>

            <g:sortableColumn property="clave" title="${message(code: 'serie.clave.label', default: 'Clave')}" />
      
            <g:sortableColumn property="nombre" title="${message(code: 'serie.nombre.label', default: 'Nombre')}" />
      
            <g:sortableColumn property="vigencia" title="${message(code: 'serie.vigencia.label', default: 'Vigencia')}" />
            <th class="acciones">
            </th>
      
            </tr>
            </thead>
            <tbody>
            <g:each in="${serieInstanceList}" status="i" var="serieInstance">
              <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                  <td>${fieldValue(bean: serieInstance, field: "clave")}</td>
    
              <td>${fieldValue(bean: serieInstance, field: "nombre")}</td>
      
              <td><g:formatDate format="dd/MMMM/yyyy"  date="${serieInstance.vigencia}" /></td>
              <td>
                 <g:form url="[resource:serieInstance, action:'delete']" method="DELETE">
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
