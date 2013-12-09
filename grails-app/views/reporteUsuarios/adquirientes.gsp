<%@ page import="com.lucasian.cheques.Chequera" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">

    <title><g:message code="default.dashboard.index"/></title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="description" content="overview &amp; stats">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>

<script type="text/javascript" src="http://www.google.com/jsapi"></script>
 <gvisualization:barCoreChart   elementId="barchart" title="Distribucion de Edades" width="100%" height="${700}" vAxis="${new Expando(title: 'Edades', titleColor: 'red')}" columns="${columnasBarras}" data="${datosBarras}" />
 <gvisualization:pieCoreChart elementId="piechart" title="Distribucion de genero" width="100%" height="${400}" columns="${columnasPastel}" data="${datosPastel}" />       
 <div id="piechart"></div>
 <div id="barchart"></div>
</body>
</html>
