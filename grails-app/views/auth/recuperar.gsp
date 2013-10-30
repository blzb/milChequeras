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
        <div class="form-horizontal span4 offset3">
           <g:if test="${flash.message}">
            <div class="alert alert-error">
            <button type="button" class="close" data-dismiss="alert">×</button>
            ${flash.message}
            </div>           
          </g:if>
          <div class="control-group">
            <label class="control-label" for="inputSigninPassword">Usuario</label>
            <div class="controls">
              <g:textField name="usuario" value="" class="span12" required=""/>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="confirmPassword">Email:</label>
            <div class="controls">
              <g:textField name="email" value="" class="span12" required=""/>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <input type="submit" value="Recuperar" class="btn"/>
            </div>            
          </div>
        </div>        
      </g:form>
          </div>
        </div>
      </section>


</body>
</html>
