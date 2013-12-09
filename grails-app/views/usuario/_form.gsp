<%@ page import="com.lucasian.cheques.Usuario" %>



<div class="fieldcontain form-group ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="username">
    <g:message code="usuario.username.label" default="Username" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="username" required="" maxLength="50" value="${usuarioInstance?.username}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="nombre">
    <g:message code="usuario.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="nombre" required="" maxLength="100" value="${usuarioInstance?.nombre}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: usuarioInstance, field: 'apellidoPaterno', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="apellidoPaterno">
    <g:message code="usuario.apellidoPaterno.label" default="Apellido Paterno" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="apellidoPaterno" required="" maxLength="100" value="${usuarioInstance?.apellidoPaterno}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: usuarioInstance, field: 'apellidoMaterno', 'error')} ">
  <label class="col-sm-3 control-label no-padding-right" for="apellidoMaterno">
    <g:message code="usuario.apellidoMaterno.label" default="Apellido Materno" />

  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="apellidoMaterno" maxLength="100" value="${usuarioInstance?.apellidoMaterno}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="email">
    <g:message code="usuario.email.label" default="Email" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:field class="col-xs-10 col-sm-10" type="email" name="email" required="" maxLength="255" value="${usuarioInstance?.email}"/>
  </div>
</div>


<div class="fieldcontain form-group ${hasErrors(bean: usuarioInstance, field: 'passwordHash', 'error')} ">
  <label class="col-sm-3 control-label no-padding-right" for="passwordHash">
    <g:message code="usuario.passwordHash.label" default="Password" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:passwordField class="col-xs-10 col-sm-10" name="passwordHash" value="" required=""/>
  </div>
</div>

<div class="fieldcontain form-group required">
  <label class="col-sm-3 control-label no-padding-right" for="passwordConfirmHash">
    <g:message code="usuario.passwordHash.label" default="Confirmar Password" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:passwordField class="col-xs-10 col-sm-10" name="passwordConfirmHash" value="" required=""/>
  </div>
</div>


