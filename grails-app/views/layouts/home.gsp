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
    <link href="${resource(dir: 'ace/css', file: 'bootstrap.min.css')}" rel="stylesheet" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'font-awesome.min.css')}" />
    <!--[if IE 7]>
      <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'ace.min.css')}" />
    <link rel="stylesheet" href="${resource(dir: 'ace/css', file: 'ace-rtl.min.css')}" />
    
    <script src="${resource(dir: 'ace/js', file: 'ace-extra.min.js')}"></script>

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
    <link rel="shortcut icon" href="ico/favicon.png" />
  <g:layoutHead/>
  <r:layoutResources />
</head>

<body class="login-layout">
  <div class="main-container">
    <div class="main-content">
      <div class="row">
        <div class="col-sm-10 col-sm-offset-1">
          <div class="login-container">
            <div class="center">
              <!--h1>
                <i class="icon-leaf green"></i>
                <span class="red">Ace</span>
                <span class="white">Application</span>
              </h1>
              <h4 class="blue">&copy; Company Name</h4-->
              <img src="${resource(dir: 'serenity/img', file: 'logo.png')}" alt=""/>
            </div>

            <div class="space-6"></div>
            <div class="position-relative">
              <div id="login-box" class="login-box visible widget-box no-border">
                <div class="widget-body">
                  <g:layoutBody/>
                </div><!-- /widget-body -->
              </div><!-- /login-box -->
            </div><!-- /position-relative -->            
          </div>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div>
  </div><!-- /.main-container -->

  <!-- basic scripts -->

  <!--[if !IE]> -->

  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

  <!-- <![endif]-->

  <!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

  <!--[if !IE]> -->

  <script type="text/javascript">
         window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
  </script>

  <!-- <![endif]-->

  <!--[if IE]>
<script type="text/javascript">
window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

  <script type="text/javascript">
         if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
  </script>

  <!-- inline scripts related to this page -->
  <script src="${resource(dir: 'ace/js', file: 'bootstrap.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'typeahead-bs2.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery.ui.touch-punch.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery.slimscroll.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery.easy-pie-chart.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery.sparkline.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery.flot.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery.flot.pie.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'jquery.flot.resize.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'ace-elements.min.js')}"></script>              
  <script src="${resource(dir: 'ace/js', file: 'ace.min.js')}"></script>              
    <script type="text/javascript">
         function show_box(id) {
          jQuery('.widget-box.visible').removeClass('visible');
          jQuery('#'+id).addClass('visible');
         }
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