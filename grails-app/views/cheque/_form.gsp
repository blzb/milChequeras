<%@ page import="com.lucasian.cheques.Cheque" %>

<div class="fieldcontain ${hasErrors(bean: chequeInstance, field: 'clave', 'error')} ">
	<label for="clave">
		<g:message code="cheque.clave.label" default="Clave" />
              <span class="required-indicator">*</span>
		
	</label>
	<g:textField name="clave" required="" value="${chequeInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="cheque.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="span12" name="descripcion" cols="40" rows="5" maxlength="255" required="" value="${chequeInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeInstance, field: 'sucursal', 'error')} required">
	<label for="sucursal">
		<g:message code="cheque.sucursal.label" default="Sucursal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sucursal" name="sucursal.id" from="${com.lucasian.cheques.Sucursal.list()}" optionKey="id" required="" value="${chequeInstance?.sucursal?.id}" class="many-to-one"/>
</div>

<g:if test="${nuevo}">
  	<g:hiddenField id="serie" name="serie.id" value="${params.serie.id}" class="many-to-one"/>

</g:if>
<g:else>
	<g:hiddenField id="serie" name="serie.id" value="${chequeInstance?.serie?.id}" class="many-to-one"/>
</g:else>



