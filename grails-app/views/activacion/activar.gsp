<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.lucasian.cheques.Chequera" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="serenityMain" />
    <title>Sample title</title>
  </head>
  <body>
    <section id="subintro">
      <div class="jumbotron subhead" id="overview">
        <div class="container-fluid">
          <div class="row-fluid">
            <div class="span12">
              <div class="centered">
                <h3>Gracias</h3>
              </div>
            </div>
          </div>          
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container-fluid">
        <div class="row-fluid" style="margin-top: 20px;">
          <div id="create-chequera" class="content scaffold-create" role="main">
            <div class="span8 offset2 well">
              <h2>Tu chequera ha sido registrada. Espera un email de confirmacion</h2>
              Siguenos en:
              <br/>
              <a href="https://twitter.com/Mil_Chequeras" target="_blank" title="Twitter"><i class="icon-rounded icon-64 icon-twitter" style="margin-bottom: 0px;"></i></a>
              <a href="https://www.facebook.com/milchequeras" target="_blank" title="Facebook"><i class="icon-rounded icon-64 icon-facebook" style="margin-bottom: 0px;"></i></a>
              <br/>
              <g:link uri="/" class="btn">Regresar</g:link>
            </div>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
