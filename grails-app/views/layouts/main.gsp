<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Mil Chequeras</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />    
    <meta name="author" content="" />   
    <link href="${resource(dir: 'ace/css', file: 'bootstrap.min.css')}" rel="stylesheet" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'font-awesome.min.css')}" />
    <!--[if IE 7]>
      <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'ace.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'ace-rtl.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'ace-skins.min.css')}" /> 
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'datepicker.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'bootstrap-timepicker.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'daterangepicker.css')}" />

    <script src="${resource(dir: 'ace/js', file: 'ace-extra.min.js')}"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script src="${resource(dir: 'ace/js', file: 'bootstrap.min.js')}"></script>

    <script src="${resource(dir: 'ace/js/date-time', file: 'bootstrap-datepicker.min.js')}"></script>
    <script src="${resource(dir: 'ace/js/date-time', file: 'bootstrap-timepicker.min.js')}"></script>
    <script src="${resource(dir: 'ace/js/date-time', file: 'moment.min.js')}"></script>
    <script src="${resource(dir: 'ace/js/date-time', file: 'daterangepicker.min.js')}"></script>


  </head>

  <body >
    <div class="navbar navbar-default" id="navbar" style="height: 45px;">
      <script type="text/javascript">
             try{ace.settings.check('navbar' , 'fixed')}catch(e){}
      </script>

      <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
          <a href="#" class="navbar-brand">
            <small>
              <i class="icon-desktop"></i>
              Mil chequeras
            </small>
          </a><!-- /.brand -->
        </div><!-- /.navbar-header -->

        <div class="navbar-header pull-right" role="navigation">
          <ul class="nav ace-nav">          
            <li class="light-blue">
              <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                <img class="nav-user-photo" src="${resource(dir: 'ace/avatars', file: 'user.jpg')}" alt="Jason's Photo">
                <span class="user-info">
                  Bienvenido
                </span>

                <i class="icon-caret-down"></i>
              </a>

              <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                <li>
                <g:link controller="auth" action="cambiar">
                  <i class="icon-cog"></i>
                  Cambiar Contraseña
                </g:link>
            </li>

            <li class="divider"></li>

            <li>
            <g:link controller="auth" action="signOut">
              <i class="icon-off"></i>
              Salir
            </g:link>
            </li>
          </ul>
          </li>
          </ul><!-- /.ace-nav -->
        </div><!-- /.navbar-header -->
      </div><!-- /.container -->
    </div>

    <div class="main-container" id="main-container">
      <script type="text/javascript">
             try{ace.settings.check('main-container' , 'fixed')}catch(e){}
      </script>

      <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
          <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
          <script type="text/javascript">
                 try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
          </script>


          <ul class="nav nav-list">
            <shiro:hasRole name="empleado">
              <li>
              <g:link controller="consulta" class="menu">
                <i class="icon-search"></i>
                <span class="menu-text">Usar cheque</span>
              </g:link>
              </li>
              <li >
              <g:link controller="chequesUsados" class="menu">
                <i class="icon-tags"></i>
                <span class="menu-text"> Cheques Usados</span>
              </g:link>
              </li>
            </shiro:hasRole>

            <shiro:hasRole name="administrador">
              <li>
              <g:link controller="chequera" class="menu">
                <i class="icon-tags"></i>
                <span class="menu-text"> Chequeras</span>
              </g:link>
              </li>
              <li >
              <g:link controller="serie" class="menu">
                <i class="icon-barcode"></i>
                <span class="menu-text"> Series</span>
              </g:link>
              </li>
              <li >
              <g:link controller="tienda" class="menu">
                <i class="icon-shopping-cart"></i>
                <span class="menu-text"> Tiendas</span>
              </g:link>
              </li>
              <li >
              <g:link controller="vendedor" class="menu">
                <i class="icon-money"></i>
                <span class="menu-text"> Vendedores</span>
              </g:link>
              </li>
              <li >
              <g:link controller="usuario" class="menu">
                <i class="icon-user"></i>
                <span class="menu-text"> Admins</span>
              </g:link>
              </li>
              <li>
              <g:link controller="reporte" class="menu">
                <i class="icon-bar-chart"></i>
                <span class="menu-text"> Reportes </span>              
              </g:link>
              </li>              
              <li>
                <a href="#" class="dropdown-toggle">
                  <i class="icon-dashboard"></i>
                  <span class="menu-text"> Dashboards </span>

                  <b class="arrow icon-angle-down"></b>
                </a>

                <ul class="submenu">
                  <li>
                     <g:link controller="dashboard" class="menu">
                      <i class="icon-double-angle-right"></i>
                      Datos Generales
                     </g:link>
                  </li>

                  <li>
                     <g:link controller="dashboard" action="chequesRedimidos" class="menu">
                      <i class="icon-double-angle-right"></i>
                      Cheques Redimidos
                    </g:link>
                  </li>
                  <li>
                     <g:link controller="dashboard" action="top" class="menu">
                      <i class="icon-double-angle-right"></i>
                      Top 5 
                    </g:link>
                  </li>
                </ul>
              </li>
            </shiro:hasRole>
          </ul><!-- /.nav-list -->

          <div class="sidebar-collapse" id="sidebar-collapse">
            <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
          </div>

          <script type="text/javascript">
                 try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
          </script>
        </div>

        <div class="main-content">       

          <div class="page-content">
            <div class="row">
              <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <g:layoutBody/>
                <!-- PAGE CONTENT ENDS -->
              </div><!-- /.col -->
            </div><!-- /.row -->
          </div><!-- /.page-content -->
        </div><!-- /.main-content -->

      </div><!-- /.main-container-inner -->

      <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
      </a>
    </div><!-- /.main-container -->

    <!-- basic scripts -->

    <!--[if !IE]> -->



    <!-- <![endif]-->

    <!--[if IE]>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <![endif]-->

    <!--[if !IE]> -->

    <!-- <![endif]-->

    <!--[if IE]>
  <script type="text/javascript">
  window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
  </script>
  <![endif]-->


    <script src="${resource(dir: 'ace/js', file: 'typeahead-bs2.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js', file: 'jquery.ui.touch-punch.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js', file: 'jquery.slimscroll.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js', file: 'jquery.easy-pie-chart.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js', file: 'jquery.sparkline.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js/flot', file: 'jquery.flot.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js/flot', file: 'jquery.flot.pie.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js/flot', file: 'jquery.flot.resize.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js', file: 'ace-elements.min.js')}"></script>              
    <script src="${resource(dir: 'ace/js', file: 'ace.min.js')}"></script>   
    <!-- inline scripts related to this page -->
  </body>