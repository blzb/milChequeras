<!DOCTYPE html>
<html>
  <head>
    <title><g:if env="development">Runtime Exception</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="home" />  
</head>
<body>
  <g:render  template="/headers/header" model="['titulo':'No encontrado']"/> 
  
  <section id="content">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="alert  alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>404</strong><br/> El recurso que esta buscando no existe
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
