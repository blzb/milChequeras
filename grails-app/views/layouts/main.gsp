<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Mil chequeras</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- css -->
    <link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'css/fancybox', file: 'jquery.fancybox.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'jcarousel.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'css', file: 'flexslider.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'css', file: 'cslider.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'css', file: 'style.css')}"  rel="stylesheet" />
    <link href="${resource(dir: 'css', file: 'bg4.css')}"  rel="stylesheet" />
    <link href="${resource(dir: 'css', file: 'milchequeras.css')}"  rel="stylesheet" />

    <!-- Theme skin -->
    <link id="t-colors" href="${resource(dir: 'skins', file: 'default.css')}" rel="stylesheet" />

    <!-- color picker -->
    <link rel="stylesheet" href="colorpicker/css/colorpicker.css" type="text/css" />
    <!-- boxed bg -->
    <link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
    <link href="${resource(dir: 'css', file: 'bootstrap-datetimepicker.min.css')}" rel="stylesheet" />
    <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.easing.1.3.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap-datetimepicker.min.js')}"></script>

    <link rel="shortcut icon" href="ico/favicon.png" />
  <g:layoutHead/>
  <r:layoutResources />
</head>

<body>

  <!-- options panel -->

  <!-- end of options panel -->

  <div id="wrapper" class="boxed">
    <!-- start header -->
    <header>			
      <div class="container-fluid">        

        <div class="row-fluid nomargin">
          <div class="span12">
            <div class="headnav">
              <ul>
                <shiro:authenticated>
                  <li>
                  <g:link controller="auth" action="signOut">Salir
                  </g:link>
                  </li>
                </shiro:authenticated>
                <shiro:notAuthenticated>
                  <li><a href="index.html#mySignup" data-toggle="modal"><i class="icon-user"></i>Registro</a></li>
                  <li>
                  <g:link controller="auth" action="index">Entrar
                  </g:link>
                  </li>
                </shiro:notAuthenticated>
              </ul>
            </div>


          </div>
        </div>
        <div class="row-fluid nomargin">
          <div class="span4">
            <div class="logo">
              <a class="home" href=""><img src="${resource(dir: 'img', file: 'logo.png')}" alt="" class="logo" style="width: 50%;"/></a>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">

              <div class="navigation">
                <nav>
                  <ul class="nav topnav visible-phone">                                            
                    <!--li class="dropdown">
                      <a href="#">Opciones <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="#">Opciones 1</a></li>
                        <li><a href="#">Opcion 2</a></li>
                        <li class="dropdown"><a href="#">Opcion 3 <i class="icon-angle-right"></i></a>
                          <ul class="dropdown-menu sub-menu-level1">
                            <li><a href="#">Sub Opcion 1</a></li>
                            <li><a href="#">Sub Opcion 2</a></li>
                            <li><a href="#">Sub Opcion 3</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="#">Contacto </a>
                    </li-->                   
                    <li>
                    <g:link controller="chequera">Chequeras</g:link>
                    </li>
                    <li>
                    <g:link controller="serie">Series</g:link>
                    </li>
                    <li>
                    <g:link controller="sucursal">Sucursales</g:link>
                    </li>

                  </ul>
                </nav>
              </div><!-- end navigation -->	

            </div> 		   
          </div>
        </div>
      </div>
    </header>	
    <!-- end header -->
    <shiro:hasRole name="administrador">
      <section id="content">
        <div class="container-fluid">        
          <div class="row-fluid">

            <div class="span2 hidden-phone">
              <aside class="left-sidebar">
                <div class="widget">
                  <ul class="recent" style="text-align: center;">

                    <li >                      
                      <h6>
                        <g:link controller="chequera" class="menu">
                          <i class="icon-square icon-tags icon-64 pull-left"></i>
                          <br/>Chequeras
                        </g:link>
                      </h6>
                    </li>
                    <li >                      
                      <h6>
                        <g:link controller="serie" class="menu">
                          <i class="icon-square icon-barcode icon-64 pull-left"></i>
                          <br/>Series
                        </g:link>
                      </h6>
                    </li>
                    <li >                      
                      <h6>
                        <g:link controller="sucursal" class="menu">
                          <i class="icon-square icon-shopping-cart icon-64 pull-left"></i>
                          <br/>Sucursales
                        </g:link>
                      </h6>
                    </li>
                  </ul>
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
    <footer style="padding: 0px; background-color: white;">
      <!--div class="container">
        <div class="row">
      <!--div class="span3">
        <div class="widget">
          <h5 class="widgetheading">Browse pages</h5>							
          <ul class="link-list">
            <li><a href="index.html#">About our company</a></li>
            <li><a href="index.html#">Our services</a></li>
            <li><a href="index.html#">Meet our team</a></li>
            <li><a href="index.html#">Explore our portfolio</a></li>
            <li><a href="index.html#">Get in touch with us</a></li>
          </ul>
        </div>
      </div>
      <div class="span3">
        <div class="widget">		
          <h5 class="widgetheading">Important stuff</h5>					
          <ul class="link-list">
            <li><a href="index.html#">Press release</a></li>
            <li><a href="index.html#">Terms and conditions</a></li>
            <li><a href="index.html#">Privacy policy</a></li>
            <li><a href="index.html#">Career center</a></li>
            <li><a href="index.html#">Flattern forum</a></li>
          </ul>					

        </div>		
      </div>
      <div class="span3">
        <div class="widget">
          <h5 class="widgetheading">Flickr photostream</h5>
          <div class="flickr_badge">	

          </div>
          <div class="clear"></div>
        </div>	
      </div>
      <div class="span12">
        <div class="widget">
          <h5 class="widgetheading">Contactanos</h5>
          <address>
            <strong>Magdalena 37</strong>  Colonia del Valle
          </address>				
          <p>
            <i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <i class="icon-envelope-alt"> contactolucasianmexico.coms</i>
          </p>
        </div>
      </div>						
    </div>
  </div-->
      <div id="sub-footer">
        <div class="container">
          <div class="row">
            <div class="span6">
              <div class="copyright">
                <p><span>&copy; Lucasian Labs 2013 All right reserved. </p>
              </div>

            </div>

            <div class="span6">					
              <ul class="social-network">
                <li><a href="https://www.facebook.com/milchequeras" data-placement="bottom" title="Facebook"><i class="icon-facebook icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Twitter"><i class="icon-twitter icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Linkedin"><i class="icon-linkedin icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Pinterest"><i class="icon-pinterest icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Google plus"><i class="icon-google-plus icon-square"></i></a></li>
              </ul>	

            </div>	
          </div>
        </div>
      </div>			
    </footer>
  </div>
  <a href="index.html#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>	

  <!-- javascript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="${resource(dir: 'js/jcarousel', file: 'jquery.jcarousel.min.js')}"></script> 	
  <script src="${resource(dir: 'js', file: 'jquery.fancybox.pack.js')}"></script> 
  <script src="${resource(dir: 'js', file: 'jquery.fancybox-media.js')}"></script> 
  <script src="${resource(dir: 'js/google-code-prettify', file: 'prettify.js')}"></script>		

  <script src="${resource(dir: 'js/portfolio', file: 'jquery.quicksand.js')}"></script> 
  <script src="${resource(dir: 'js/portfolio', file: 'setting.js')}"></script> 	
  <script src="${resource(dir: 'js/tweet', file: 'jquery.tweet.js')}"></script> 
  <script src="${resource(dir: 'js', file: 'jquery.flexslider.js')}"></script> 
  <script src="${resource(dir: 'js', file: 'jquery.nivo.slider.js')}"></script>
  <script src="${resource(dir: 'js', file: 'modernizr.custom.79639.js')}"></script>
  <script src="${resource(dir: 'js', file: 'jquery.ba-cond.min.js')}"></script>
  <script src="${resource(dir: 'js', file: 'jquery.slitslider.js')}"></script>
  <script src="${resource(dir: 'js', file: 'modernizr.custom.28468.js')}"></script>
  <script src="${resource(dir: 'js', file: 'jquery.cslider.js')}"></script>
  <script src="${resource(dir: 'js', file: 'animate.js')}"></script>
  <script src="${resource(dir: 'js', file: 'custom.js')}"></script>

  <script src="${resource(dir: 'js', file: 'jquery.cookie.js')}"></script>
  <!--script src="colorpicker/js/colorpicker.js"></script>
  <script src="js/optionspanel.js"></script-->
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
  <script type="text/javascript">
$(function() {$('#da-slider').cslider();});
</script>
</body>
</html>