<%@ page import="com.lucasian.cheques.Cheque" %>



<div class="fieldcontain ${hasErrors(bean: chequeInstance, field: 'texto', 'error')} required">
	<label for="texto">
		<g:message code="cheque.texto.label" default="Texto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="span12" name="texto" required="" value="${chequeInstance?.texto}"/>
</div>
<g:if test="${nuevo}">
  	<g:hiddenField id="serie" name="serie.id" value="${params.serie.id}" class="many-to-one"/>
</g:if>
<g:else>
	<g:hiddenField id="serie" name="serie.id" value="${chequeInstance?.serie?.id}" class="many-to-one"/>
</g:else>

<div class="fieldcontain ${hasErrors(bean: chequeInstance, field: 'sucursal', 'error')} required">
	<label for="sucursal">
		<g:message code="cheque.sucursal.label" default="Sucursal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sucursal" name="sucursal.id" from="${com.lucasian.cheques.Sucursal.list()}" optionKey="id" required="" value="${chequeInstance?.sucursal?.id}" class="many-to-one"/>
</div>

