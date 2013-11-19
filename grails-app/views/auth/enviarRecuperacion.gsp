<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="home" />
    <title>Login</title>
  </head>
  <body>
    <div class="widget-main">
      <g:if test="${flash.message}">
        <div class="alert alert-info">
          <button type="button" class="close" data-dismiss="alert">×</button>
${flash.message}
        </div>           
      </g:if>   
      <div class="clearfix">            
        <g:link controller="auth" action="recuperar" class="width-35 pull-left btn btn-sm btn-primary btn-prev">Atras</g:link>
      </div>
    </div>        
  </body>
</html>
