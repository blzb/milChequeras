<%@ page import="com.lucasian.cheques.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'username', 'error')} required">
  <label for="username">
    <g:message code="empleado.username.label" default="Username" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="username" required="" value="${empleadoInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'puesto', 'error')} required">
  <label for="puesto">
    <g:message code="empleado.puesto.label" default="Puesto" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="puesto" required="" value="${empleadoInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} required">
  <label for="email">
    <g:message code="empleado.email.label" default="Email" />
    <span class="required-indicator">*</span>
  </label>
  <g:field class="span12" type="email" name="email" required="" value="${empleadoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
  <label for="nombre">
    <g:message code="empleado.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="nombre" required="" value="${empleadoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellidoPaterno', 'error')} required">
  <label for="apellidoPaterno">
    <g:message code="empleado.apellidoPaterno.label" default="Apellido Paterno" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="apellidoPaterno" required="" value="${empleadoInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellidoMaterno', 'error')} required">
  <label for="apellidoMaterno">
    <g:message code="empleado.apellidoMaterno.label" default="Apellido Materno" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="apellidoMaterno" value="${empleadoInstance?.apellidoMaterno}"/>
</div>


  <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'passwordHash', 'error')} ">
    <label for="passwordHash">
      <g:message code="empleado.passwordHash.label" default="Password" />

    </label>
    <g:textField class="span12" name="passwordHash" value=""/>
  </div>
  
  <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'tienda', 'error')} required">
    <g:hiddenField  id="tienda" name="tienda.id" value="${empleadoInstance?.tienda?.id}" />
  </div>




