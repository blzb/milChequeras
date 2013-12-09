<%@ page import="com.lucasian.cheques.Empleado" %>



<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'username', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="username">
    <g:message code="empleado.username.label" default="Username" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="username" required="" maxLength="50" value="${empleadoInstance?.username}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'puesto', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="puesto">
    <g:message code="empleado.puesto.label" default="Puesto" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="puesto" required="" maxLength="100" value="${empleadoInstance?.puesto}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="email">
    <g:message code="empleado.email.label" default="Email" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:field class="span12" type="email" name="email" required="" maxLength="255" value="${empleadoInstance?.email}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="nombre">
    <g:message code="empleado.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="nombre" required="" maxLength="100" value="${empleadoInstance?.nombre}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'apellidoPaterno', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="apellidoPaterno">
    <g:message code="empleado.apellidoPaterno.label" default="Apellido Paterno" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="apellidoPaterno" required="" maxLength="100" value="${empleadoInstance?.apellidoPaterno}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'apellidoMaterno', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="apellidoMaterno">
    <g:message code="empleado.apellidoMaterno.label" default="Apellido Materno" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="apellidoMaterno" maxLength="100" value="${empleadoInstance?.apellidoMaterno}"/>
  </div>
</div>


<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'passwordHash', 'error')} ">
  <label class="col-sm-3 control-label no-padding-right" for="passwordHash">
    <g:message code="empleado.passwordHash.label" default="Password" />
  </label>
  <div class="col-sm-9">
    <g:passwordField class="col-xs-10 col-sm-10" name="passwordHash" value=""/>
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

<div class="fieldcontain form-group ${hasErrors(bean: empleadoInstance, field: 'tienda', 'error')} required">
  <g:hiddenField  id="tienda" name="tienda.id" value="${empleadoInstance?.tienda?.id}" />
</div>


