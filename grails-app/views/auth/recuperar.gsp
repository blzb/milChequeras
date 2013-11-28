<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="home" />
    <title>Login</title>
  </head>
  <body>
    <div class="widget-main">
      <h4 class="header blue lighter bigger">
        Recuperar Contraseña
      </h4>
      <div class="space-6"></div>
      <g:form action="enviarRecuperacion">
        <g:if test="${flash.message}">
          <div class="alert  alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
${flash.message}
          </div>           
        </g:if>
        <label class="block clearfix">
          <span class="block input-icon input-icon-righ">            
            <g:textField name="usuario" value="" class="form-control" placeholder="Usuario" required=""/>
          </span>
        </label>
        <label class="block clearfix">
          <span class="block input-icon input-icon-righ">            
            <g:textField name="email" value="" class="form-control" placeholder="Email" required=""/>
          </span>
        </label>
        <div class="clearfix">                  
          <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">                    
            Recuperar
          </button>
          <g:link action="index" class="width-35 pull-left btn btn-sm btn-danger">Cancelar</g:link>
        </div>
      </g:form>
    </div>
  </body>
</html>
