<!DOCTYPE html>
<html>
  <head>
    <title><g:if env="development">Runtime Exception</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="home" />  
</head>
<body>
  <section id="inner-headline">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="inner-heading">
            <h2>500</h2>
          </div>
        </div>	                       
      </div>			
    </div>
  </section>

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
