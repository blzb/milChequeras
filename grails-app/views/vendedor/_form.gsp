<%@ page import="com.lucasian.cheques.Vendedor" %>



<div class="fieldcontain form-group ${hasErrors(bean: vendedorInstance, field: 'username', 'error')} required">
	<label class="col-sm-3 control-label no-padding-right" for="username">
		<g:message code="vendedor.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-sm-9">
	<g:textField class="col-xs-10 col-sm-10" name="username" required="" maxLength="50" value="${vendedorInstance?.username}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: vendedorInstance, field: 'nombre', 'error')} required">
	<label class="col-sm-3 control-label no-padding-right" for="nombre">
		<g:message code="vendedor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-sm-9">
	<g:textField class="col-xs-10 col-sm-10" name="nombre" required="" maxLength="100" value="${vendedorInstance?.nombre}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: vendedorInstance, field: 'apellidoPaterno', 'error')} required">
	<label class="col-sm-3 control-label no-padding-right" for="apellidoPaterno">
		<g:message code="vendedor.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-sm-9">
	<g:textField class="col-xs-10 col-sm-10" name="apellidoPaterno" required="" maxLength="100" value="${vendedorInstance?.apellidoPaterno}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: vendedorInstance, field: 'apellidoMaterno', 'error')} ">
	<label class="col-sm-3 control-label no-padding-right" for="apellidoMaterno">
		<g:message code="vendedor.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
  <div class="col-sm-9">
	<g:textField class="col-xs-10 col-sm-10" name="apellidoMaterno" maxLength="100" value="${vendedorInstance?.apellidoMaterno}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: vendedorInstance, field: 'email', 'error')} required">
	<label class="col-sm-3 control-label no-padding-right" for="email">
		<g:message code="vendedor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-sm-9">
	<g:field class="col-xs-10 col-sm-10" type="email" name="email" required="" maxLength="255" value="${vendedorInstance?.email}"/>
  </div>
</div>

<div class="fieldcontain form-group required ${hasErrors(bean: vendedorInstance, field: 'passwordHash', 'error')}">
	<label class="col-sm-3 control-label no-padding-right" for="passwordHash">
		<g:message code="vendedor.passwordHash.label" default="Password" />
        <span class="required-indicator">*</span>
	</label>
  <div class="col-sm-9">
	<g:passwordField class="col-xs-10 col-sm-10" name="passwordHash" required="" value=""/>
  </div>
</div>


<div class="fieldcontain form-group required" >
    <label class="col-sm-3 control-label no-padding-right" for="passwordConfirmHash">
        <g:message code="vendedor.passwordConfirmHash.label" default="Confirmar Password" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-9">
        <g:passwordField class="col-xs-10 col-sm-10" name="passwordConfirmHash" value="" required=""/>
    </div>
</div>