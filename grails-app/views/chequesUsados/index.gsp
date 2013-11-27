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
                <div class="align-center">
                Serie:&nbsp;<input type="text" size="10" name="serie" value="" id="inputSerie"
                                       onkeyup="${remoteFunction(action: 'index', controller: 'chequesUsados', params: '\'serie=\' + document.getElementById(\'inputSerie\').value + \'&propietario=\' + document.getElementById(\'inputPropietario\').value + \'&numChequera=\' + document.getElementById(\'inputNumChequera\').value + \'&numCheque=\' + document.getElementById(\'inputNumCheque\').value', options: '[asynchronous: true]', update: 'tablaChequesUsados')}"/>&nbsp;&nbsp;&nbsp;
                Chequera:&nbsp;<input type="text" size="10" name="numeroChequera" value="" id="inputNumChequera"
                                      onkeyup="${remoteFunction(action: 'index', controller: 'chequesUsados', params: '\'serie=\' + document.getElementById(\'inputSerie\').value + \'&propietario=\' + document.getElementById(\'inputPropietario\').value + \'&numChequera=\' + document.getElementById(\'inputNumChequera\').value + \'&numCheque=\' + document.getElementById(\'inputNumCheque\').value', options: '[asynchronous: true]', update: 'tablaChequesUsados')}"/>&nbsp;
                Cheque:&nbsp;<input type="text" size="10" name="numeroChequera" value="" id="inputNumCheque"
                                        onkeyup="${remoteFunction(action: 'index', controller: 'chequesUsados', params: '\'serie=\' + document.getElementById(\'inputSerie\').value + \'&propietario=\' + document.getElementById(\'inputPropietario\').value +  \'&numChequera=\' + document.getElementById(\'inputNumChequera\').value + \'&numCheque=\' + document.getElementById(\'inputNumCheque\').value', options: '[asynchronous: true]', update: 'tablaChequesUsados')}"/>&nbsp;&nbsp;&nbsp;
                Propietario:&nbsp;<input type="text" size="25" name="propietario" value="" id="inputPropietario"
                                         onkeyup="${remoteFunction(action: 'index', controller: 'chequesUsados', params: '\'serie=\' + document.getElementById(\'inputSerie\').value + \'&propietario=\' + document.getElementById(\'inputPropietario\').value +  \'&numChequera=\' + document.getElementById(\'inputNumChequera\').value + \'&numCheque=\' + document.getElementById(\'inputNumCheque\').value', options: '[asynchronous: true]', update: 'tablaChequesUsados')}"/>&nbsp;&nbsp;&nbsp;
                </div>
                <div id="tablaChequesUsados">
                    <g:form>
                        <fieldset class="form">
                            <g:render template="tabla"/>
                        </fieldset>
                    </g:form>
                </div>
                <g:link action="index" class="btn btn-large btn-theme btn-rounded align-center">Regresar</g:link>
                <br/>
            </div>
        </div>
    </div>
</section>
</body>
</html>
