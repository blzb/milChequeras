<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="home" />
    <title>Login</title>
  </head>
  <body>

    <div class="widget-main">
      <h4 class="header blue lighter bigger">
        Nueva Contraseña
      </h4>

      <div class="space-6"></div>
      <g:form action="guardar">
        <input type="hidden" name="targetUri" value="${targetUri}" />
        <fieldset>
          <g:if test="${flash.message}">
            <div class="alert  alert-danger">
              <button type="button" class="close" data-dismiss="alert">×</button>
${flash.message}
            </div>           
          </g:if>
          <label class="block clearfix">
            <span class="block input-icon input-icon-righ">            
              <g:passwordField  name="oldPassword" value="" class="form-control" required="" placeholder="Password Actual"/>
            </span>
          </label>
          <label class="block clearfix">
            <span class="block input-icon input-icon-righ">  
              <g:passwordField name="password" value="" class="form-control" required="" placeholder="Nuevo Password"/>
            </span>
          </label>
          <label class="block clearfix">
            <span class="block input-icon input-icon-righ">  
              <g:passwordField name="confirmPassword" value="" class="form-control" required="" placeholder="Confirmar Nuevo Password"/>
            </span>
          </label>
          <div class="clearfix">                  
            <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">                    
              Guardar
            </button>
            <g:link action="index" class="width-35 pull-left btn btn-sm btn-danger">Cancelar</g:link>
          </div>
        </fieldset>        
      </g:form>

    </div><!-- /widget-main -->


  </body>
</html>
