<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main"/>
    <title>Sample title</title>
    <meta name="description" content="overview &amp; stats">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<g:render template="/headers/header" model="['titulo': 'Cheques Usados']"/>
<section id="content">
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="content scaffold-list span12">
                <g:form action="usar">
                    <input type="hidden" name="serie" value="${serie}"/>
                    <input type="hidden" name="usar" id="usar" value=""/>
                    <table class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th class="" style="text-align: center; width: 73px;">
                                Clave
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
                                Clave Serie
                            </th>
                            <th class="" style="text-align: center; width: 73px;">
                                Nombre Serie
                            </th>
                            <th class="" style="text-align: center; width: 73px;">
                                Nombre Chequera
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
                                </tr>
                        </g:each>
                        </tbody>
                    </table>
                    <div class="pagination-centered align-center">
                        <g:paginate total="${chequesUsadosInstanceCount}" />
                    </div>
                </g:form>
                <g:link action="index" class="btn btn-large btn-theme btn-rounded align-center" >Regresar</g:link>
                <br/>
            </div>
        </div>
    </div>
</section>
</body>
</html>
