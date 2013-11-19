<%@ page import="com.lucasian.cheques.Cheque" %>

<div class="fieldcontain form-group ${hasErrors(bean: chequeInstance, field: 'clave', 'error')} ">
	<label class="col-sm-3 control-label no-padding-right" for="clave">
		<g:message code="cheque.clave.label" default="Clave" />
              <span class="required-indicator">*</span>
		
	</label>
  <div class="col-sm-9">
	<g:textField class="col-xs-10 col-sm-10" name="clave" required="" maxLength="100" value="${chequeInstance?.clave}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: chequeInstance, field: 'descripcion', 'error')} required">
	<label class="col-sm-3 control-label no-padding-right" for="descripcion">
		<g:message code="cheque.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-sm-9">
	<g:textArea class="col-xs-10 col-sm-10" name="descripcion" cols="40" rows="5" maxlength="255" required="" value="${chequeInstance?.descripcion}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: chequeInstance, field: 'tienda', 'error')} required">
	<label class="col-sm-3 control-label no-padding-right" for="tienda">
		<g:message code="cheque.tienda.label" default="Tienda" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-sm-9">
	<g:select  id="tienda" name="tienda.id" from="${com.lucasian.cheques.Tienda.list()}" optionKey="id" required="" value="${chequeInstance?.tienda?.id}" class="many-to-one"/>
  </div>
</div>

<g:if test="${nuevo}">
  	<g:hiddenField id="serie" name="serie.id" value="${params.serie.id}" class="many-to-one"/>

</g:if>
<g:else>
	<g:hiddenField id="serie" name="serie.id" value="${chequeInstance?.serie?.id}" class="many-to-one"/>
</g:else>



