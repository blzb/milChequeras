
<%@ page import="com.lucasian.cheques.Cheque" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'cheque.label', default: 'Cheque')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
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
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link><i class="icon-angle-right"></i></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
          </ul>
        </div>
      </div-->
    </div>
  </section>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="show-cheque" class="content scaffold-show " role="main">
          
          <div class="span12 well"> 
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
              <div class="alert alert-error">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <ol class="property-list cheque">

              <g:if test="${chequeInstance?.descripcion}">
                <li class="fieldcontain">
                  <span id="descripcion-label" class="property-label"><g:message code="cheque.descripcion.label" default="Descripcion" /></span>
  
                <span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${chequeInstance}" field="descripcion"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeInstance?.clave}">
                <li class="fieldcontain">
                  <span id="clave-label" class="property-label"><g:message code="cheque.clave.label" default="Clave" /></span>
  
                <span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${chequeInstance}" field="clave"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeInstance?.serie}">
                <li class="fieldcontain">
                  <span id="serie-label" class="property-label"><g:message code="cheque.serie.label" default="Serie" /></span>
  
                <span class="property-value" aria-labelledby="serie-label"><g:link controller="serie" action="show" id="${chequeInstance?.serie?.id}">${chequeInstance?.serie?.encodeAsHTML()}</g:link></span>
    
                </li>
              </g:if>
  
              <g:if test="${chequeInstance?.sucursal}">
                <li class="fieldcontain">
                  <span id="sucursal-label" class="property-label"><g:message code="cheque.sucursal.label" default="Sucursal" /></span>
  
                <span class="property-value" aria-labelledby="sucursal-label"><g:link controller="sucursal" action="show" id="${chequeInstance?.sucursal?.id}">${chequeInstance?.sucursal?.encodeAsHTML()}</g:link></span>
    
                </li>
              </g:if>
  
            </ol>
            <g:form url="[resource:chequeInstance, action:'delete']" method="DELETE">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${chequeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
