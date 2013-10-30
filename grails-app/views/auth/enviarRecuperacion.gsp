<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="home" />
    <title>Login</title>
  </head>
  <body>
    <section id="inner-headline">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span5">
            <div class="inner-heading">
              <h2>Recupera tu contraseña</h2>
            </div>
          </div>	                       
        </div>			
      </div>
    </section>
      <section id="content">
        <div class="container-fluid">
          <div class="row-fluid">
      <g:form action="enviarRecuperacion">
        <div class="form-horizontal span12">
           <g:if test="${flash.message}">
            <div class="alert alert-info">
            <button type="button" class="close" data-dismiss="alert">×</button>
            ${flash.message}
            </div>           
          </g:if>          
        </div>        
      </g:form>
          </div>
        </div>
      </section>


</body>
</html>
