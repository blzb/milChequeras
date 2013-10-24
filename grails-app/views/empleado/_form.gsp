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

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellidos', 'error')} required">
  <label for="apellidos">
    <g:message code="empleado.apellidos.label" default="Apellidos" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="apellidos" required="" value="${empleadoInstance?.apellidos}"/>
</div>
<g:if test="${nuevo}">
  <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'passwordHash', 'error')} ">
    <label for="passwordHash">
      <g:message code="empleado.passwordHash.label" default="Password" />

    </label>
    <g:textField class="span12" name="passwordHash" value="${empleadoInstance?.passwordHash}"/>
  </div>
  <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'sucursal', 'error')} required">
    <g:hiddenField  id="sucursal" name="sucursal.id"  value="${params.sucursal.id}" />
  </div>
</g:if>
<g:else>
  <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'sucursal', 'error')} required">
    <g:hiddenField  id="sucursal" name="sucursal.id" value="${empleadoInstance?.sucursal?.id}" />
  </div>
</g:else>



