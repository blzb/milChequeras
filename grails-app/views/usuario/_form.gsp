<%@ page import="com.lucasian.cheques.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="span12" name="username" required="" value="${usuarioInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="span12" name="nombre" required="" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="usuario.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="span12" name="apellidoPaterno" required="" value="${usuarioInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="usuario.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField class="span12" name="apellidoMaterno" value="${usuarioInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="span12" type="email" name="email" required="" value="${usuarioInstance?.email}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'rol', 'error')} ">
	<label for="rol">
		<g:message code="usuario.rol.label" default="Rol" />
		
	</label>
	<g:select id="rol" name="rol.id" from="${com.lucasian.cheques.Rol.list()}" optionKey="id" value="${usuarioInstance?.rol?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwordHash', 'error')} ">
	<label for="passwordHash">
		<g:message code="usuario.passwordHash.label" default="Password" />
		
	</label>
	<g:textField class="span12" name="passwordHash" value=""/>
</div>

