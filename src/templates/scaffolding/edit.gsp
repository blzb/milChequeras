<%=packageName%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
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
      <div class="row-fluid">
        <div class="span12">	
          <ul class="breadcrumb">
            <li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/><i class="icon-home"></i></a> <i class="icon-angle-right"></i></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link> <i class="icon-angle-right"></i></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="edit-${domainClass.propertyName}" class="content scaffold-edit" role="main">
          <div class="span2"></div>
          <div class="span8 well">  
            <h2><g:message code="default.edit.label" args="[entityName]" /></h2>
            <g:if test="\${flash.message}">
              <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${${propertyName}}">
              <ul class="errors" role="alert">
                <g:eachError bean="\${${propertyName}}" var="error">
                  <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
              </ul>
            </g:hasErrors>
            <g:form url="[resource:${propertyName}, action:'update']" method="PUT" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
                    <g:hiddenField name="version" value="\${${propertyName}?.version}" />
              <fieldset class="form">
                <g:render template="form"/>
              </fieldset>
              <fieldset class="buttons">
                <g:actionSubmit class="save btn" action="update" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
              </fieldset>
            </g:form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
