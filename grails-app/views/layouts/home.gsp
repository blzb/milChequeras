<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Flattern - Flat and trendy bootstrap site template</title>
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
    <link rel="shortcut icon" href="ico/favicon.png" />
<g:layoutHead/>
  <r:layoutResources />
</head>

<body>

  <!-- options panel -->

  <!-- end of options panel -->

  <div id="wrapper" class="boxed">
    <!-- toggle top area -->
    <div class="hidden-top">
      <div class="hidden-top-inner container">
        <div class="row">
          <div class="span12">
            <ul>
              <li><strong>mensaje</strong></li>
              <li>Direccion</li>
              <li> <i class="icon-phone"></i>Telefono</li>
            </ul>
          </div>
        </div>
      </div>          
    </div>
    <!-- end toggle top area -->

    <!-- start header -->
    <header>			
      <div class="container">        

        <div class="row nomargin">
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
            <!-- Signup Modal -->
            <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 id="mySignupModalLabel">Create an <strong>account</strong></h4>
              </div>
              <div class="modal-body">
                <form class="form-horizontal">
                  <div class="control-group">
                    <label class="control-label" for="inputEmail">Email</label>
                    <div class="controls">
                      <input type="text" id="inputEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="inputSignupPassword">Password</label>
                    <div class="controls">
                      <input type="password" id="inputSignupPassword" placeholder="Password">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="inputSignupPassword2">Confirm Password</label>
                    <div class="controls">
                      <input type="password" id="inputSignupPassword2" placeholder="Password">
                    </div>
                  </div>
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" class="btn">Sign up</button>
                    </div>
                    <p class="aligncenter margintop20">Already have an account? <a href="index.html#mySignin" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Sign in</a></p>
                  </div>
                </form>
              </div>
            </div>
            <!-- end signup modal -->

            <!-- Sign in Modal -->
            
            <!-- end signin modal -->	

            <!-- Reset Modal -->
            <div id="myReset" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="myResetModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 id="myResetModalLabel">Recuperar password</h4>
              </div>
              <div class="modal-body">
                <form class="form-horizontal">
                  <div class="control-group">
                    <label class="control-label" for="inputResetEmail">Email</label>
                    <div class="controls">
                      <input type="text" id="inputResetEmail" placeholder="Email">
                    </div>
                  </div>

                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" class="btn">Recuperar</button>
                    </div>
                    <p class="aligncenter margintop20">Te enviaremos instrucciones de como recuperar tu password</p>
                  </div>
                </form>
              </div>
            </div>
            <!-- end reset modal -->					

          </div>
        </div>
        <div class="row nomargin">
          <div class="span4">
            <div class="logo">
              <a class="home" href=""><img src="${resource(dir: 'img', file: 'logo.png')}" alt="" class="logo" style="width: 50%;"/></a>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">

              <div class="navigation">
                <nav>
                  <ul class="nav topnav">                                            
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
                    </li-->										
                    <li>
                      <a href="contact.html">Contacto </a>
                    </li>
                    <shiro:authenticated>
                    <li class="dropdown">
                      <a href="#">Administracion <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                          <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
                        </g:each>
                      </ul>
                    </li>
                    </shiro:authenticated>
                  </ul>
                </nav>
              </div><!-- end navigation -->	

            </div> 		   
          </div>
        </div>
      </div>
    </header>	
    <!-- end header -->
    <g:layoutBody/>
    <footer>
      <div class="container">
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
          </div-->
          <div class="span12">
            <div class="widget">
              <h5 class="widgetheading">Contactanos</h5>
              <address>
                <strong>Magdalena 37</strong>  Colonia del Valle
              </address>				
              <p>
                <i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <i class="icon-envelope-alt"> contacto@lucasianmexico.coms</i>
</p>
</div>
</div>						
</div>
</div>
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
<li><a href="index.html#" data-placement="bottom" title="Facebook"><i class="icon-facebook icon-square"></i></a></li>
<li><a href="index.html#" data-placement="bottom" title="Twitter"><i class="icon-twitter icon-square"></i></a></li>
<li><a href="index.html#" data-placement="bottom" title="Linkedin"><i class="icon-linkedin icon-square"></i></a></li>
<li><a href="index.html#" data-placement="bottom" title="Pinterest"><i class="icon-pinterest icon-square"></i></a></li>
<li><a href="index.html#" data-placement="bottom" title="Google plus"><i class="icon-google-plus icon-square"></i></a></li>
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
<script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.easing.1.3.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
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
$(function() {$('#da-slider').cslider();});
                  </script>
                  </body>
                  </html>