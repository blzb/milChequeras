<!DOCTYPE html>
<html>
  <head>
    <title><g:if env="development">Runtime Exception</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="home" />  
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':'500']"/>   

  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="alert alert-error">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Error de sistema</strong><br/> Ha ocurrido un error, contacta al administrador
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
