<%@ page import="com.lucasian.cheques.Serie" %>



<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'clave', 'error')} required">
  <label for="clave">
<g:message code="serie.clave.label" default="Clave" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="clave" required="" value="${serieInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'nombre', 'error')} required">
  <label for="nombre">
    <g:message code="serie.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField class="span12" name="nombre" required="" value="${serieInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'vigencia', 'error')} required">
  <label for="vigencia">
    <g:message code="serie.vigencia.label" default="Vigencia" />
    <span class="required-indicator">*</span>
  </label>
  <div id="datetimepicker1" class="input-append date">
    <g:textField  readonly="" class="span12" name="vigencia" required="" data-format="dd/MM/yyyy " value="${formatDate(format:'dd/MM/yyyy',date:serieInstance?.vigencia)}"/>
    <span class="add-on">
      <i data-time-icon="icon-time" data-date-icon="icon-calendar">
      </i>
    </span>
  </div>
  <script type="text/javascript">
    $('#datetimepicker1').datetimepicker({
      language: 'es',
      pickTime: false ,
      startDate: new Date(${(new Date()).time})
    });
</script>
  
  <!--g:datePicker name="vigencia" precision="day"  value="${serieInstance?.vigencia}"  /-->
</div>

<!--div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'chequeras', 'error')} ">
       <label for="chequeras">
<g:message code="serie.chequeras.label" default="Chequeras" />
              
       </label>
       
<ul class="one-to-many">
<g:each in="${serieInstance?.chequeras?}" var="c">
    <li><g:link controller="chequera" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="chequera" action="create" params="['serie.id': serieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'chequera.label', default: 'Chequera')])}</g:link>
</li>
</ul>

</div-->


