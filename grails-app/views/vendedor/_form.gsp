<%@ page import="com.lucasian.cheques.Vendedor" %>



<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="vendedor.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" maxLength="50" value="${vendedorInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="vendedor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" maxLength="100" value="${vendedorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="vendedor.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" maxLength="100" value="${vendedorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="vendedor.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" maxLength="100" value="${vendedorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="vendedor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" maxLength="255" value="${vendedorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'passwordHash', 'error')} ">
	<label for="passwordHash">
		<g:message code="vendedor.passwordHash.label" default="Password" />
		
	</label>
	<g:textField name="passwordHash" value=""/>
</div>

