<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main" />
    <title>Sample title</title>
  </head>
  <body>
  <g:render  template="/headers/header" model="['titulo':'Cheques encontrados']"/>   
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <g:form action="usar">    
            <input type="hidden" name="serie" value="${serie}"/>
            <input type="hidden" name="usar" id="usar" value=""/>
            <div class="modal hide fade"  id="referenciaModal" style="border-radius: 12px !important;">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Referencia</h3>
              </div>
              <div class="modal-body">
                <g:field type="text" name="referencia" required="" class="span12"/>
              </div>
              <div class="modal-footer" style="border-radius: 0px 0px 12px 12px;">
                <input type="submit" value="Usar" class="btn btn-large btn-theme btn-rounded">
              </div>
            </div>            
            <table class="table table-striped table-bordered" >
              <thead>
                <tr>
                  <th class="" style="text-align: center;">
                    Promocion
                  </th>
                  <th class="" style="text-align: center; width: 73px;">
                    Estatus
                  </th>
                  <th class="" style="text-align: center; width: 120px;">
                    Acciones
                  </th>
                </tr>
              </thead>
              <tbody>
              <g:each in="${cheques}" >
                <g:if test="${it.usado}">
                  <tr>
                    <td style="vertical-align: middle;">
${it.cheque.clave}: ${it.cheque.descripcion}
                    </td>
                    <td style="text-align: center; ">
                      <i class="icon-circled icon-64 icon-ban-circle"></i>
                    </td>
                    <td style="vertical-align: middle;">
                      <a class="btn btn-inverse btn-large span12" href="#" onclick="detalle('${it.usado.dateCreated.format('dd/MMMM/yyyy HH:mm:ss')}','${it.usado.referencia}');">
                        Detalle
                      </a>
                    </td>
                  </tr>   
                </g:if>
                <g:else>
                  <tr>
                    <td style="vertical-align: middle;">
                      <b>${it.cheque.clave}: ${it.cheque.descripcion}</b>
                    </td>
                    <td  style="text-align: center;">
                      <i class="icon-circled icon-64 icon-ok active"></i>                      
                    </td>
                    <td style="vertical-align: middle;">
                      <!--input type="radio" name="usar" value="${it.cheque.id}" onclick="('#myModal').modal('show')"/-->
                      <a class="btn btn-color btn-large span12" href="#" onclick="usarCheque('${it.cheque.id}');">
                        Usar
                      </a>
                    </td>
                  </tr>  
                </g:else>

              </g:each>
              </tbody>
            </table>  
          </g:form>
          <g:link action="index" class="btn btn-large btn-theme btn-rounded">Regresar</g:link>
          <br/>
        </div>
      </div>
    </div>
  </section>
  <div class="modal hide fade"  id="detalleModal" style="border-radius: 12px !important;">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <h3>Detalle de Uso</h3>
    </div>
    <div class="modal-body">
      Fecha Uso:
      <br/>
      <h3 id="detalleFecha"></h3>
      <br/>
      Referencia:
      <br/>
      <h3 id="detalleReferencia" ></h3>
      <br/>
    </div>
  </div>
  <script>
    function usarCheque(id){        
        $('#referenciaModal').modal('show');
        $('#usar').val(id);
    }
    function detalle(fecha, referencia){
$('#detalleFecha').html(fecha);
$('#detalleReferencia').html(referencia);
$('#detalleModal').modal('show');
}
</script>
</body>
</html>
