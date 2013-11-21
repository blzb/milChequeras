
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
  <gvisualization:pieCoreChart elementId="piechart" title="Cheques mas redimidos" width="100%" height="${700}" columns="${columnas}" data="${datos}"  is3D="${true}" chartArea="${new Expando(left: "auto", top:0)}"/>       
  <g:render  template="/headers/header" model="['titulo':'Principales Cheques Redimidos']"/>   
  <div class="row">
    <div class="col-md-4 col-md-offset-3">
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div id="piechart"></div>
    </div>
  </div>
</body>
</html>
