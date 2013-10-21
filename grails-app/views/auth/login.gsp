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
              <h2>Entrar a tu cuenta</h2>
            </div>
          </div>	                       
        </div>			
      </div>
    </section>
      <section id="content">
        <div class="container-fluid">
          <div class="row-fluid">
      <g:form action="signIn">
        <input type="hidden" name="targetUri" value="${targetUri}" />
        <div class="form-horizontal span4 offset3">
          <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
          </g:if>
          <div class="control-group">
            <label class="control-label" for="inputText">Usuario</label>
            <div class="controls">
              <input type="text" name="username" value="" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="inputSigninPassword">Password</label>
            <div class="controls">
              <input type="password" name="password" value="" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="inputSigninPassword">Recordarme?</label>
            <div class="controls">
              <g:checkBox name="rememberMe" value="${rememberMe}" />
            </div>
          </div>

          <div class="control-group">
            <div class="controls">
              <input type="submit" value="Entrar" class="btn"/>
            </div>
            <p class="aligncenter margintop20">Olvidaste tu password? <a href="#" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Recuperar</a></p>
          </div>
        </div>        
      </g:form>
          </div>
        </div>
      </section>


</body>
</html>
