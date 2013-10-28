<%@ page import="com.lucasian.cheques.Chequera" %>



<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="chequera.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="span12" name="numero" required="" value="${chequeraInstance?.numero}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="chequera.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="span12" name="nombre" required="" value="${chequeraInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="chequera.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="span12" name="apellidos" required="" value="${chequeraInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="chequera.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="span12" type="email" name="email" required="" value="${chequeraInstance?.email}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="chequera.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${chequeraInstance?.fechaNacimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="chequera.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${chequeraInstance.constraints.sexo.inList}" required="" value="${chequeraInstance?.sexo}" valueMessagePrefix="chequera.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'colonia', 'error')} ">
	<label for="colonia">
		<g:message code="chequera.colonia.label" default="Colonia" />
		
	</label>
	<g:textField class="span12" name="colonia" value="${chequeraInstance?.colonia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="chequera.telefono.label" default="Telefono" />
		
	</label>
	<g:textField class="span12" name="telefono" value="${chequeraInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'facebook', 'error')} ">
	<label for="facebook">
		<g:message code="chequera.facebook.label" default="Facebook" />
		
	</label>
	<g:textField class="span12" name="facebook" value="${chequeraInstance?.facebook}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'twitter', 'error')} ">
	<label for="twitter">
		<g:message code="chequera.twitter.label" default="Twitter" />
		
	</label>
	<g:textField class="span12" name="twitter" value="${chequeraInstance?.twitter}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'serie', 'error')} required">
	<label for="serie">
		<g:message code="chequera.serie.label" default="Serie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="serie" name="serie.id" from="${com.lucasian.cheques.Serie.list()}" optionKey="id" required="" value="${chequeraInstance?.serie?.id}" class="many-to-one"/>
</div>
