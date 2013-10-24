<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main" />
    <title>Sample title</title>
  </head>
  <body>
    <section id="inner-headline">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <div class="inner-heading">
              <h2>${mensaje}</h2>
            </div>
          </div>	                       
        </div>			
      </div>
    </section>
    <section id="content">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <g:link action="index" class="btn btn-large btn-theme btn-rounded">Regresar</g:link>
          </div>
        </div>
      </div>
    </section>  
  </body>
</html>
