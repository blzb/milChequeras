<%@ page import="com.lucasian.cheques.Tienda" %>



<div class="fieldcontain ${hasErrors(bean: tiendaInstance, field: 'local', 'error')} required">
  <label for="local">
    <g:message code="tienda.local.label" default="Local" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="local" required="" maxLength="100" value="${tiendaInstance?.local}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tiendaInstance, field: 'clave', 'error')} required">
  <label for="clave">
    <g:message code="tienda.clave.label" default="Clave" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="clave" required="" maxLength="100" value="${tiendaInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tiendaInstance, field: 'nombre', 'error')} required">
  <label for="nombre">
    <g:message code="tienda.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="nombre" required="" maxLength="100" value="${tiendaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tiendaInstance, field: 'imagen', 'error')}">
  <label for="imagen">
    <g:message code="tienda.imagen.label" default="Imagen" />
  </label>
  <input type="file" name="imagen"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tiendaInstance, field: 'imagen', 'error')}">
  <g:if test="${tiendaInstance.imagen != null}">
    <img  src="${createLink(controller:'tienda', action:'showPayload', id:"${tiendaInstance.id}")}" 
  </g:if>
</div>

<!--div class="fieldcontain ${hasErrors(bean: tiendaInstance, field: 'cheques', 'error')} ">
       <label for="cheques">
<g:message code="tienda.cheques.label" default="Cheques" />
              
       </label>
       
<ul class="one-to-many">
<g:each in="${tiendaInstance?.cheques?}" var="c">
    <li><g:link controller="cheque" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cheque" action="create" params="['tienda.id': tiendaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cheque.label', default: 'Cheque')])}</g:link>
</li>
</ul>

</div-->

