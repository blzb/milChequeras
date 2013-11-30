<%@ page import="com.lucasian.cheques.Chequera" %>



<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'numero', 'error')} required ">
  <label class="col-sm-3 control-label no-padding-right" for="numero">
    <g:message code="chequera.numero.label" default="N\u00FAmero" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="numero" required=""  maxLength="100"  value="${chequeraInstance?.numero}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'nombre', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="nombre">
    <g:message code="chequera.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="nombre" required="" maxLength="100" value="${chequeraInstance?.nombre}"/>
  </div>
</div>

<div class="fieldcontain  form-group ${hasErrors(bean: chequeraInstance, field: 'apellidos', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="apellidos">
    <g:message code="chequera.apellidos.label" default="Apellidos" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
  <g:textField class="col-xs-10 col-sm-10" name="apellidos" required="" maxLength="200" value="${chequeraInstance?.apellidos}"/>
  </div>
</div>




<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'email', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="email">
    <g:message code="chequera.email.label" default="Email" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:field class="col-xs-10 col-sm-10" type="email" name="email" required=""  maxLength="255" value="${chequeraInstance?.email}"/>
  </div>
</div>



<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'fechaNacimiento', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="fechaNacimiento">
    <g:message code="chequera.fechaNacimiento.label" default="Fecha Nacimiento" />
    <span class="required-indicator">*</span>
  </label>
  <!--g:datePicker name="fechaNacimiento" precision="day"  value="${chequeraInstance?.fechaNacimiento}"  /-->
  <div class="col-sm-9">
    <g:textField  name="fechaNacimiento" class="date-picker col-xs-3 col-sm-3" required="true" value="${formatDate(format:'dd/MM/yyyy',date:chequeraInstance?.fechaNacimiento)}" data-date-format="dd/mm/yyyy" />      
    <script type="text/javascript">
      $('.date-picker').datepicker({autoclose:true}).next().on(ace.click_event, function(){
                                   $(this).prev().focus();
                            });

    </script>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'sexo', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="sexo">
    <g:message code="chequera.sexo.label" default="Sexo" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:select class="col-xs-3 col-sm-3" name="sexo" from="${chequeraInstance.constraints.sexo.inList}" required=""  value="${chequeraInstance?.sexo}" valueMessagePrefix="chequera.sexo"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'codigoPostal', 'error')} ">
  <label class="col-sm-3 control-label no-padding-right" for="codigoPostal">
    <g:message code="chequera.codigoPostal.label" default="C\u00F3digo Postal" />

  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="codigoPostal" maxLength="100" value="${chequeraInstance?.codigoPostal}"/>
  </div>
</div>


<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'facebook', 'error')} ">
  <label class="col-sm-3 control-label no-padding-right" for="facebook">
    <g:message code="chequera.facebook.label" default="Facebook" />

  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="facebook" maxLength="255" value="${chequeraInstance?.facebook}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'twitter', 'error')} ">
  <label class="col-sm-3 control-label no-padding-right" for="twitter">
    <g:message code="chequera.twitter.label" default="Twitter" />

  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="twitter" maxLength="255" value="${chequeraInstance?.twitter}"/>
  </div>
</div>


<div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'serie', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="serie">
    <g:message code="chequera.serie.label" default="Serie" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:select id="serie" name="serie.id" from="${com.lucasian.cheques.Serie.list()}" optionKey="id" required="" value="${chequeraInstance?.serie?.id}" class="many-to-one  col-xs-3 col-sm-3"/>
  </div>
</div>


<g:if test="${isCreate}">
    <div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'gustos', 'error')} required">
        <label class="col-sm-3 control-label no-padding-right" for="gustoLabel">
            <g:message code="chequera.serie.label" default="Gusto"/>
        </label>
        <div class="col-sm-9" id="gustoLabel">
            <g:each in="${com.lucasian.cheques.Gusto.list()}" var="gustoInstance" status="i">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <g:checkBox name="gusto.id" id="gusto"  value="${gustoInstance?.id}" checked="false" optionKey="id"/>
                <label for="gusto">${gustoInstance?.gusto}</label>
            </g:each>
        </div>
    </div>
</g:if>
<g:else>
    <div class="fieldcontain form-group ${hasErrors(bean: chequeraInstance, field: 'gustos', 'error')} required">
        <label class="col-sm-3 control-label no-padding-right" for="gustoLabel1">
            <g:message code="chequera.serie.label" default="Gusto"/>
        </label>
        <div class="col-sm-9" id="gustoLabel1">
            <g:each in="${listaFinal}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <g:if test="${it.gusta}">
                    <g:checkBox name="gusto.id1" id="gusto1"  value="${it.gusto.id}" checked="true" optionKey="idk"/>
                    <label for="gusto1">${it.gusto.gusto}</label>
                </g:if>
                <g:else>
                    <g:checkBox name="gusto.id1" id="gusto1"  value="${it.gusto.id}" checked="false" optionKey="idk"/>
                    <label for="gusto1">${it.gusto.gusto}</label>
                </g:else>
            </g:each>
        </div>
    </div>
</g:else>



