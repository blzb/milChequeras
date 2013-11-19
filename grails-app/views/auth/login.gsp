<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="home" />
    <title>Login</title>
  </head>
  <body>

          <div class="widget-main">
            <h4 class="header blue lighter bigger">
              <i class="icon-coffee green"></i>
              Entrar
            </h4>

            <div class="space-6"></div>

            <g:form action="signIn">
              <g:if test="${flash.message}">
                <div class="alert  alert-danger">
                  <button type="button" class="close" data-dismiss="alert">×</button>
${flash.message}
                </div>           
              </g:if>
              <input type="hidden" name="targetUri" value="${targetUri}" />
              <fieldset>
                <label class="block clearfix">
                  <span class="block input-icon input-icon-right">
                    <input type="text" class="form-control" placeholder="Usuario" name="username" />
                    <i class="icon-user"></i>
                  </span>
                </label>

                <label class="block clearfix">
                  <span class="block input-icon input-icon-right">
                    <input type="password"  name="password" class="form-control" placeholder="Password" />
                    <i class="icon-lock"></i>
                  </span>
                </label>

                <div class="space"></div>

                <div class="clearfix">
                  <label class="inline">
                    <g:checkBox name="rememberMe" value="${rememberMe}" class="ace"/>
                    <span class="lbl">Recordarme</span>
                  </label>
                  <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                    <i class="icon-key"></i>
                    Login
                  </button>
                </div>
              </fieldset>
            </g:form>
          </div><!-- /widget-main -->
          <div class="toolbar clearfix">
            <div>
             <g:link controller="auth" action="recuperar" class="user-signup-link">Recuperar password</g:link>
            </div>
          </div>

  </body>
</html>
