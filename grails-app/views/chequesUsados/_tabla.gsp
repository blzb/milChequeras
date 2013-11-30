<g:form action="revocar">
    %{--<div>
        <g:if test="${isRevocado}">
            <g:if test="${status}">
                <div class="alert alert-block alert-success">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="icon-remove"></i>
                    </button>
                    <i class="icon-ok green"></i>
                    Exito : <b></b>
                </div>
            </g:if>
            <g:else>
                <div class="alert alert-block alert-error">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="icon-remove"></i>
                    </button>
                    <i class="icon-ok green"></i>
                    Error : <b></b>
                </div>
            </g:else>
        </g:if>
    </div>--}%

    <input type="hidden" name="revocar" id="revocar" value=""/>
    <div class="modal fade"  id="revocarModal" style="border-radius: 12px !important;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3>¿Está seguro de que quiere reactivar éste cheque?</h3>
                </div>
                <div class="modal-footer" style="border-radius: 0px 0px 12px 12px;">
                    <input type="submit" value="Reactivar"  class="btn btn-large btn-theme btn-rounded">
                </div>
            </div>
        </div>
    </div>
    <br/>
<table class="table table-striped table-bordered" id="chequesUs">
    <thead>
    <tr>
        <th class="" style="text-align: center; width: 73px;">
            Serie
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Nombre Serie
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Chequera
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Clave Cheque
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Fecha de Uso
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Propietario Chequera
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Reactivar
        </th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${chequesUsados}">
        <tr>
            <td style="text-align: center;">
                ${it.cheque.serie.clave}
            </td>
            <td style="text-align: center;">
                ${it.cheque.serie.nombre}
            </td>
            <td style="text-align: center;">
                ${it.chequera.numero}
            </td>
            <td style="text-align: center;">
                ${it.cheque.clave}
            </td>
            <td style="text-align: center;">
                ${formatDate(format:'dd/MM/yyyy',date:it.dateCreated)}
            </td>
            <td style="text-align: center;">
                ${it.chequera.nombre}&nbsp;${it.chequera.apellidos}
            </td>
            <td style="text-align: center;">
                <a class="btn  btn-success btn-small span5" href="#" onclick="reactivarCheque('${it.id}');">
                    Reactivar
                </a>
            </td>

        </tr>
    </g:each>
    </tbody>
</table>
<script>
    $(".tip").tooltip();
    function reactivarCheque(id){
        $('#revocarModal').modal('show');
        $('#revocar').val(id);
        console.log("se revocara el cheque: " + id)
    }
</script>
<div class="pagination-centered align-center">
    <g:paginate total="${chequesUsadosInstanceCount}" params="[q: params.serie, p:params.propietario, n:params.numChequera, c:params.numCheque]" />
</div>
</g:form>