
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
<g:render  template="/headers/header" model="['titulo':message(code:'default.dashboard.index') ]"/> 
<section id="content">
  <div class="container-fluid">
    <div class="row-fluid" style="margin-top: 20px;">
      <div id="list-chequera" class="content scaffold-list span12" role="main">


        <g:img dir="images/dashboard" file="graf1.png" width="545" height="170"/>
        <g:img dir="images/dashboard" file="graf2.png" width="378" height="240"/>



      </div>
    </div>
  </div>
</section>
</body>
</html>
