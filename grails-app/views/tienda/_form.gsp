<%@ page import="com.lucasian.cheques.Tienda" %>



<div class=" form-group  fieldcontain ${hasErrors(bean: tiendaInstance, field: 'local', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="local">
    <g:message code="tienda.local.label" default="Local" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
    <g:textField class="col-xs-10 col-sm-10" name="local" required="" maxLength="100" value="${tiendaInstance?.local}"/>
  </div>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: tiendaInstance, field: 'clave', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="clave">
    <g:message code="tienda.clave.label" default="Clave" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
  <g:textField class="col-xs-10 col-sm-10" name="clave" required="" maxLength="100" value="${tiendaInstance?.clave}"/>
  </div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: tiendaInstance, field: 'nombre', 'error')} required">
  <label class="col-sm-3 control-label no-padding-right" for="nombre">
    <g:message code="tienda.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <div class="col-sm-9">
  <g:textField class="col-xs-10 col-sm-10" name="nombre" required="" maxLength="100" value="${tiendaInstance?.nombre}"/>
  </div>
</div>


<div class="fieldcontain form-group ${hasErrors(bean: tiendaInstance, field: 'imagen', 'error')}">
  <label class="col-sm-3 control-label no-padding-right" for="imagen">
    <g:message code="tienda.imagen.label" default="Imagen" />
  </label>
  <div class="col-sm-9">
  <input type="file" name="imagen" id="imagen"/>
      <label for="imagen" class="text-info smaller-80">Máximo 1024 x 1024 píxeles</label>
  </div>
</div>



<g:if test="${tiendaInstance.imagen != null && tiendaInstance.imagen.length>0 }">
    <div class="fieldcontain form-group ${hasErrors(bean: tiendaInstance, field: 'imagen', 'error')}" style="text-align:center">
            <img  src="${createLink(controller:'tienda', action:'showPayload', id:tiendaInstance.id)}" id="imagenId"/>
    </div>
</g:if>
<g:elseif test="${tiendaInstance.imagen == null || tiendaInstance.imagen.length==0 }">
    <div style="text-align:center">
    <img class="nav-user-photo" src="${resource(dir: 'images', file: 'sinImagen.jpg')}"
         alt="A\u00FAn sin imagen" height="200" >
    </div>
</g:elseif>






<!--div class="fieldcontain ${hasErrors(bean: tiendaInstance, field: 'cheques', 'error')} ">
       <label class="col-sm-3 control-label no-padding-right" for="cheques">
<g:message code="tienda.cheques.label" default="Cheques" />
              
       </label>
       
<ul class="one-to-many">
<g:each in="${tiendaInstance?.cheques?}" var="c">
    <li><g:link controller="cheque" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cheque" action="create" params="['tienda.id': tiendaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cheque.label', default: 'Cheque')])}</g:link>
</li>
</ul>

</div-->

