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
    <g:render  template="/headers/header" model="['titulo':'Cheques usados acumulados' ]"/>
    <div class="row">
      <table class="table table-striped dataTable">
        <thead>
          <tr>
            <th>Serie</th>
            <th>
              Tienda
            </th>
            <th>
              Cheques Usados
            </th>
          </tr>
        </thead>
        <tbody>
        <g:each in="${datos}" status="i" var="dato">
          <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td>${dato[0]}</td>
            <td>${dato[1]}</td>
            <td>${dato[2]}</td>
          </tr>          
        </g:each>
        </tbody>
      </table>
    </div>
  </body>
</html>
