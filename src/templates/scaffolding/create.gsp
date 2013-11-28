<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName])]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="create-${domainClass.propertyName}" class="content scaffold-create" role="main">                                
          
          <div class="span12 well">                       
            <h2 class="header smaller lighter blue"><g:message code="default.create.label" args="[entityName]" /></h2>
            <g:if test="\${flash.message}">
              <div class="alert  alert-danger">                 <button type="button" class="close" data-dismiss="alert">×</button>\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${${propertyName}}">
              <ul class="errors" role="alert">
                <g:eachError bean="\${${propertyName}}" var="error">
                  <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
              </ul>
            </g:hasErrors>
            <g:form class="form-horizontal" url="[resource:${propertyName}, action:'save']" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
                    <fieldset class="form">
                <g:render template="form"/>
              </fieldset>
              <br/>
              <fieldset class="">
                <g:submitButton name="create" class="btn btn-large btn-theme btn-rounded" value="\${message(code: 'default.button.create.label', default: 'Create')}" />
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
