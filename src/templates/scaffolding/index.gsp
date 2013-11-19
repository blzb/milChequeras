<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>	
  <g:render  template="/headers/header" model="['titulo':message(code:'default.list.label',args:[entityName]), 'boton':message(code:'default.new.label',args:[entityName]), 'accion':'create' ]"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid" style="margin-top: 20px;">
        <div id="list-${domainClass.propertyName}" class="content scaffold-list span12" role="main">
          <g:if test="\${flash.message}">
            <div class="alert  alert-danger">                 <button type="button" class="close" data-dismiss="alert">×</button>\${flash.message}</div>
          </g:if>
          <table class="table table-striped dataTable">
            <thead>
              <tr>
<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) }
Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
props.eachWithIndex { p, i ->
  if (i < 6) {
    if (p.isAssociation()) { %>
                <th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
      <%      } else { %>
            <g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
      <%  }   }   } %>
            </tr>
            </thead>
            <tbody>
            <g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
              <tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
<%  props.eachWithIndex { p, i ->
  if (i == 0) { %>
                  <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
    <%      } else if (i < 6) {
    if (p.type == Boolean || p.type == boolean) { %>
                <td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
      <%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
              <td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
      <%          } else { %>
              <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
      <%  }   }   } %>
              <td>
              <g:form url="[resource:${propertyName}, action:'delete']" method="DELETE" style="margin-bottom: 0px;">
              <fieldset class="buttons">
                <g:link class="edit btn" action="edit" resource="\${${propertyName}}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
              </fieldset>
            </g:form>                
              </td>
              </tr>
            </g:each>
            </tbody>
          </table>
          <div class="pagination">
            <g:paginate total="\${${propertyName}Count ?: 0}" />
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
