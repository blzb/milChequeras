<%@ page import="com.lucasian.cheques.Serie" %>



<div class="fieldcontain form-group ${hasErrors(bean: serieInstance, field: 'clave', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="clave">
    <g:message code="serie.clave.label" default="Clave" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
  <g:textField class="col-xs-10 col-sm-10" name="clave" required="" maxLength="100" value="${serieInstance?.clave}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: serieInstance, field: 'nombre', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="nombre">
    <g:message code="serie.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
  <g:textField class="col-xs-10 col-sm-10" name="nombre" required="" maxLength="100" value="${serieInstance?.nombre}"/>
  </div>
</div>


<div class="fieldcontain form-group ${hasErrors(bean: serieInstance, field: 'inicioVigencia', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="inicioVigencia">
    <g:message code="serie.inicioVicengiavigencia.label" default="Inicio de Vigencia" />
    <span class="required-indicator">*</span>
  </label>  
  <div class="col-sm-9">
      <g:textField name="inicioVigencia" class="date-picker col-xs-3 col-sm-3" required="true" value="${formatDate(format:'dd/MM/yyyy',date:serieInstance?.inicioVigencia)}" data-date-format="dd/mm/yyyy" />
      <span class="input-group-addon" style="display:table">
          <i class="icon-calendar bigger-120  "></i>
      </span>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: serieInstance, field: 'vigencia', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="vigencia">
    <g:message code="serie.vigencia.label" default="Fin de Vigencia" />
    <span class="required-indicator">*</span>
  </label>  
  <div class="col-sm-9">
    <g:textField name="vigencia" class="date-picker col-xs-3 col-sm-3" required="true" value="${formatDate(format:'dd/MM/yyyy',date:serieInstance?.vigencia)}" data-date-format="dd/mm/yyyy" />
      <span class="input-group-addon" style="display:table">
          <i class="icon-calendar bigger-120  "></i>
      </span>
  </div>
   <script type="text/javascript">
     $('#inicioVigencia').datepicker({
       autoclose:true
     }).next().on(ace.click_event, function(){
                                   $(this).prev().focus();
                            });
     $('#vigencia').datepicker({
       autoclose:true,
       startDate: new Date()
     }).next().on(ace.click_event, function(){
                                   $(this).prev().focus();
                            });
                            
  </script>
<!--g:datePicker name="vigencia" precision="day"  value="${serieInstance?.vigencia}"  /-->
</div>



<!--div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'chequeras', 'error')} ">
       <label class="col-sm-3 control-label no-padding-right" for="chequeras">
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


