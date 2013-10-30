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
    <section id="inner-headline">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span5">
            <div class="inner-heading">
              <h2>Cheques encontrados</h2>
            </div>
          </div>	                       
        </div>			
      </div>
    </section>

    <section id="content">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <g:form action="usar">    
              <input type="hidden" name="serie" value="${serie}"/>
              <div class="modal hide fade"  id="myModal" style="border-radius: 12px !important;">
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
            <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th>
                      Promocion
                    </th>
                    <th>
                      Utilizar
                    </th>
                  </tr>
                </thead>
                <tbody>
                <g:each in="${cheques}" >
                  <tr>
                    <td>
                      ${it.clave}: ${it.descripcion}
                    </td>
                    <td>
                      <g:if test="${it.usado}">
                        Ya fue utilizado
                      </g:if>
                      <g:else>
                        <input type="radio" name="usar" value="${it.id}" onclick="$('#myModal').modal('show')"/>
                      </g:else>
                      
                    </td>
                  </tr>              
                </g:each>
                </tbody>
              </table>  
            </g:form>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
