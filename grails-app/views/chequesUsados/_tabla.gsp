<br/>
<table class="table table-striped table-bordered" id="chequesUs">
    <thead>
    <tr>
        <th class="" style="text-align: center; width: 73px;">
            Clave Cheque
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Descripcion
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Fecha Uso
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Referencia
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Serie
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Nombre Serie
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Propietario Chequera
        </th>
        <th class="" style="text-align: center; width: 73px;">
            Chequera
        </th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${chequesUsados}">
        <tr>
            <td style="text-align: center;">
                ${it.cheque.clave}
            </td>
            <td style="text-align: center;">
                ${it.cheque.descripcion}
            </td>
            <td style="text-align: center;">
                ${it.dateCreated}
            </td>
            <td style="text-align: center;">
                ${it.referencia}
            </td>
            <td style="text-align: center;">
                ${it.cheque.serie.clave}
            </td>
            <td style="text-align: center;">
                ${it.cheque.serie.nombre}
            </td>
            <td style="text-align: center;">
                ${it.chequera.nombre}
            </td>
            <td style="text-align: center;">
                ${it.chequera.numero}
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
<div class="pagination-centered align-center">
    <g:paginate total="${chequesUsadosInstanceCount}" params="[q: params.serie, p:params.propietario, n:params.numChequera, c:params.numCheque]" />
</div>