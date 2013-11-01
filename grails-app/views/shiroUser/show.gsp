
<%@ page import="com.lucasian.cheques.ShiroUser" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'shiroUser.label', default: 'ShiroUser')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
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
        <div id="show-shiroUser" class="content scaffold-show " role="main">
          
          <div class="span12 well"> 
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
              <div class="alert alert-error">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
            </g:if>
            <ol class="property-list shiroUser">

              <g:if test="${shiroUserInstance?.username}">
                <li class="fieldcontain">
                  <span id="username-label" class="property-label"><g:message code="shiroUser.username.label" default="Username" /></span>
  
                <span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${shiroUserInstance}" field="username"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${shiroUserInstance?.rol}">
                <li class="fieldcontain">
                  <span id="rol-label" class="property-label"><g:message code="shiroUser.rol.label" default="Rol" /></span>
  
                <span class="property-value" aria-labelledby="rol-label"><g:link controller="rol" action="show" id="${shiroUserInstance?.rol?.id}">${shiroUserInstance?.rol?.encodeAsHTML()}</g:link></span>
    
                </li>
              </g:if>
  
              <g:if test="${shiroUserInstance?.nombre}">
                <li class="fieldcontain">
                  <span id="nombre-label" class="property-label"><g:message code="shiroUser.nombre.label" default="Nombre" /></span>
  
                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${shiroUserInstance}" field="nombre"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${shiroUserInstance?.apellidoPaterno}">
                <li class="fieldcontain">
                  <span id="apellidoPaterno-label" class="property-label"><g:message code="shiroUser.apellidoPaterno.label" default="Apellido Paterno" /></span>
  
                <span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${shiroUserInstance}" field="apellidoPaterno"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${shiroUserInstance?.apellidoMaterno}">
                <li class="fieldcontain">
                  <span id="apellidoMaterno-label" class="property-label"><g:message code="shiroUser.apellidoMaterno.label" default="Apellido Materno" /></span>
  
                <span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${shiroUserInstance}" field="apellidoMaterno"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${shiroUserInstance?.email}">
                <li class="fieldcontain">
                  <span id="email-label" class="property-label"><g:message code="shiroUser.email.label" default="Email" /></span>
  
                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${shiroUserInstance}" field="email"/></span>
    
                </li>
              </g:if>
  
              <g:if test="${shiroUserInstance?.passwordHash}">
                <li class="fieldcontain">
                  <span id="passwordHash-label" class="property-label"><g:message code="shiroUser.passwordHash.label" default="Password Hash" /></span>
  
                <span class="property-value" aria-labelledby="passwordHash-label"><g:fieldValue bean="${shiroUserInstance}" field="passwordHash"/></span>
    
                </li>
              </g:if>
  
            </ol>
            <g:form url="[resource:shiroUserInstance, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="${shiroUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
