<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="home" />
    <title>Login</title>
  </head>
  <body>
    <g:render  template="/headers/header" model="['titulo':'Error de permisos']"/> 
      <section id="content">
        <div class="container-fluid">
          <div class="row-fluid">     
            <div class="alert alert-error">
            <button type="button" class="close" data-dismiss="alert">×</button>
            No cuentas con <strong>los permisos suficientes</strong> para acceder este recurso            
          </div>
          </div>
          <div class="row-fluid">
            <g:link class="btn btn-large btn-theme btn-rounded " uri="/">Regresar</g:link>
          </div>
        </div>
      </section>


</body>
</html>
