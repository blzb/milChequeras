<%@ page import="com.lucasian.cheques.ShiroUser" %>



<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="shiroUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${shiroUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'rol', 'error')} ">
	<label for="rol">
		<g:message code="shiroUser.rol.label" default="Rol" />
		
	</label>
	<g:select id="rol" name="rol.id" from="${com.lucasian.cheques.Rol.list()}" optionKey="id" value="${shiroUserInstance?.rol?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="shiroUser.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${shiroUserInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="shiroUser.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${shiroUserInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="shiroUser.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${shiroUserInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="shiroUser.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${shiroUserInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'passwordHash', 'error')} ">
	<label for="passwordHash">
		<g:message code="shiroUser.passwordHash.label" default="Password Hash" />
		
	</label>
	<g:textField name="passwordHash" value="${shiroUserInstance?.passwordHash}"/>
</div>

