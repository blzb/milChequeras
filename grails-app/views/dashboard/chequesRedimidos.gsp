
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
  <gvisualization:lineCoreChart  
    elementId="linechart"       
    width="100%" height="${500}"
    columns="${columnas}" 
    data="${datos}" pointSize="${10}"/>
<g:render  template="/headers/header" model="['titulo':'Dashboard de Cheques Redimidos']"/>   
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
     
      <g:form action="chequesRedimidos">
        <g:submitButton name="dia" value="Ultimas 24 Hrs" class="btn  btn-primary btn-lg"/>
        <g:submitButton name="semana" value="Ultima Semana" class="btn btn-lg btn-primary"/>
        <g:submitButton name="mes" value="Ultimo Mes" class="btn btn-lg btn-primary"/>
      </g:form>

    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div id="linechart"></div>
    </div>
  </div>
</body>
</html>
