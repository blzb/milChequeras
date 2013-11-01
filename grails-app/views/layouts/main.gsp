<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Mil Chequeras</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />    
    <meta name="author" content="" />
    <link href="${resource(dir: 'serenity/css', file: 'bootstrap.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'bootstrap-responsive.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'docs.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'prettyPhoto.css')}" rel="stylesheet">
    <!--link href="${resource(dir: 'serenity/js/google-code-prettify', file: 'prettify.css')}" rel="stylesheet"-->
    <link href="${resource(dir: 'serenity/css', file: 'flexslider.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'sequence.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'font-awesome.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'overwrite.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'style.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/color', file: 'default.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'milchequeras.css')}" rel="stylesheet">
    <link href="${resource(dir: 'serenity/css', file: 'bootstrap-datetimepicker.min.css')}" rel="stylesheet">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <script src="${resource(dir: 'serenity/js', file: 'jquery-1.8.2.min.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'jquery.easing.1.3.js')}"></script>
    <script src="${resource(dir: 'serenity/js/google-code-prettify', file: 'prettify.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'modernizr.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'bootstrap.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'jquery.elastislide.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'jquery.tweet.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'jquery.prettyPhoto.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'application.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'jquery.flexslider.js')}"></script>
    <!-- Portfolio hover -->
    <script src="${resource(dir: 'serenity/js/hover', file: 'jquery-hover-effect.js')}"></script>
    <script src="${resource(dir: 'serenity/js/hover', file: 'setting.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'custom.js')}"></script>
    <script src="${resource(dir: 'serenity/js', file: 'bootstrap-datetimepicker.min.js')}"></script>
    <!-- css -->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
    <link rel="shortcut icon" href="ico/favicon.png" />
  <g:layoutHead/>
  <r:layoutResources />
</head>

<body>
  <div id="wrap" >
    <header>
      <!-- Navbar
          ================================================== -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <!-- logo -->
            <a class="brand logo" href="index.html">
              <img src="${resource(dir: 'serenity/img', file: 'logo.png')}" alt="" style="width: 85px; height: 59px;"/>
            </a>
            <!-- end logo -->
            <!-- top menu -->
            <div class="navigation">
              <nav>
                <ul class="nav topnav">
                  <shiro:authenticated>
                    <li class="visible-tablet">
                      <g:link controller="chequera" class="menu">Chequeras</g:link>
                    </li>
                    <li class="visible-tablet">
                      <g:link controller="serie" class="menu">Series</g:link>
                    </li>
                    <li class="visible-tablet">
                      <g:link controller="sucursal" class="menu">Sucursales</g:link>
                    </li>
                    <li class="visible-tablet">
                       <g:link controller="vendedor" class="menu">Vendedores</g:link>
                    </li>
                    <li class="visible-tablet">
                       <g:link controller="usuario" class="menu">Usuario</g:link>
                    </li>
                    <li>
                    <g:link controller="auth" action="signOut">Salir
                    </g:link>
                    </li>
                    <li>
                    <g:link controller="auth" action="cambiar">Cambiar contraseña
                    </g:link>
                    </li>                    
                  </shiro:authenticated>
                  <shiro:notAuthenticated>
                    <li><a href="index.html#mySignup" data-toggle="modal">Registro</a></li>
                    <li>
<g:link controller="auth" action="index">Entrar
                    </g:link>
                    </li>
                  </shiro:notAuthenticated>
                </ul>
                </ul>
              </nav>
            </div>
            <!-- end menu -->
          </div>
        </div>
      </div>
    </header>
    <shiro:hasRole name="administrador">
      <section id="content">
        <div class="container-fluid">        
          <div class="row-fluid">

            <div class="span2 visible-desktop" style="margin-top: 115px;" >

              <aside class="left-sidebar" data-spy="affix" data-offset-top="0">
                <div class="widget ">
                  <h4>Catalogos</h4>
                  <div class="row-fluid">
                    <div class="span6 centered ">
                      <h6>
                        <g:link controller="chequera" class="menu">
                          <i class="icon-circled active  icon-tags icon-64 pull-left"></i>
                          <br/>Chequeras
                        </g:link>
                      </h6>
                    </div>
                   
                     <div class="span6 centered ">
                      <h6>
                        <g:link controller="serie" class="menu">
                          <i class="icon-circled active  icon-barcode icon-64 pull-left"></i>
                          <br/>Series
                        </g:link>
                      </h6>
                    </div>
                  </div>
                  <div class="row-fluid">
                    <div class="span6 centered">
                      <h6>
                        <g:link controller="sucursal" class="menu">
                          <i class="icon-circled active  icon-shopping-cart icon-64 pull-left"></i>
                          <br/>Sucursales
                        </g:link>
                      </h6>
                    </div>
                    <div class="span6 centered">
                      <h6>
                        <g:link controller="vendedor" class="menu">
                          <i class="icon-circled active  icon-money icon-64 pull-left"></i>
                          <br/>Vendedores
                        </g:link>
                      </h6>
                    </div>
                  </div>
                  <div class="row-fluid">
                    <div class="span6 centered">
                      <h6>
                        <g:link controller="usuario" class="menu">
                          <i class="icon-circled active  icon-user icon-64 pull-left"></i>
                          <br/>Usuarios
                        </g:link>
                      </h6>
                    </div>
                  </div>
                </div>                 	
              </aside>
            </div>
            <div class="span10" id="contenido">          
              <g:layoutBody/>
            </div>
          </div>
        </div>
      </section>
    </shiro:hasRole>
    <shiro:lacksRole name="administrador">
      <g:layoutBody/>
    </shiro:lacksRole>
    <div id="push"></div>
  </div>
  <!-- Footer
   ================================================== -->
  <footer id="footer" class="footer" style="background: #303030;">
    <div  class="verybottom" style="padding-top: 0px;">
      <div class="container">
        <div class="row">
          <div class="span6">
            <p>
              &copy; Lucasian Labs 2013 All right reserved.
            </p>
          </div>
          <div class="span6">
            <p class="pull-right" style="margin: -10 0 0 0;">
              <a href="https://twitter.com/Mil_Chequeras" title="Twitter"><i class="icon-rounded icon-32 icon-twitter" style="margin-bottom: 0px;"></i></a>
              <a href="https://www.facebook.com/milchequeras" title="Facebook"><i class="icon-rounded icon-32 icon-facebook" style="margin-bottom: 0px;"></i></a>
              <a href="#" title="Google plus"><i class="icon-rounded icon-32 icon-google-plus" style="margin-bottom: 0px;"></i></a>
              <a href="#" title="Linkedin"><i class="icon-rounded icon-32 icon-linkedin" style="margin-bottom: 0px;"></i></a>
              <a href="#" title="Pinterest"><i class="icon-rounded icon-32 icon-pinterest" style="margin-bottom: 0px;"></i></a>
            </p>  
          </div>
        </div>
      </div>
    </div>
  </footer>

  <script>
    $($(".topnav").children()).hover(function() {
    $(this).toggleClass('active');
    });
  </script>
  <script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-45232320-1']);
      _gaq.push(['_setDomainName', 'dialectika.com.mx']);
      _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();

  </script>
</body>