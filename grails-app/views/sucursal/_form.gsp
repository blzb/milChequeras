<%@ page import="com.lucasian.cheques.Sucursal" %>



<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'direccion', 'error')} required">
  <label for="direccion">
    <g:message code="sucursal.direccion.label" default="Direccion" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="direccion" required="" value="${sucursalInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'clave', 'error')} required">
  <label for="clave">
    <g:message code="sucursal.clave.label" default="Clave" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="clave" required="" value="${sucursalInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'nombre', 'error')} required">
  <label for="nombre">
    <g:message code="sucursal.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="nombre" required="" value="${sucursalInstance?.nombre}"/>
</div>

<!--div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'cheques', 'error')} ">
       <label for="cheques">
<g:message code="sucursal.cheques.label" default="Cheques" />
              
       </label>
       
<ul class="one-to-many">
<g:each in="${sucursalInstance?.cheques?}" var="c">
    <li><g:link controller="cheque" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cheque" action="create" params="['sucursal.id': sucursalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cheque.label', default: 'Cheque')])}</g:link>
</li>
</ul>

</div-->

