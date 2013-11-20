<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.lucasian.cheques.Chequera" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="serenityMain" />
    <title>Sample title</title>
  </head>
  <body>
    <section id="subintro">
      <div class="jumbotron subhead" id="overview">
        <div class="container-fluid">
          <div class="row-fluid">
            <div class="span12">
              <div class="centered">
                <h3>Activa tu chequera</h3>
              </div>
            </div>
          </div>          
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container-fluid">
        <div class="row-fluid" style="margin-top: 20px;">
          <div id="create-chequera" class="content scaffold-create" role="main">
            <div class="span8 offset2 well">
              <g:if test="${flash.message}">
                <div class="alert  alert-error">                 <button type="button" class="close" data-dismiss="alert">×</button>${flash.message}</div>
              </g:if>
              <g:hasErrors bean="${chequeraInstance}">
                <div class="alert alert-error"> 
                  <g:eachError bean="${chequeraInstance}" var="error">
                    <g:message error="${error}"/>
                  </g:eachError>
                </div>
              </g:hasErrors>
              <div id="fb-root"></div>
              <script>
                     window.fbAsyncInit = function() {
                            FB.init({
                                   appId      : '229298963903379', // App ID
                                   status     : true, // check login status
                                   cookie     : true, // enable cookies to allow the server to access the session
                                   xfbml      : true  // parse XFBML
                            });

                            // Here we subscribe to the auth.authResponseChange JavaScript event. This event is fired
                            // for any authentication related change, such as login, logout or session refresh. This means that
                            // whenever someone who was previously logged out tries to log in again, the correct case below 
                            // will be handled. 
                            FB.Event.subscribe('auth.authResponseChange', function(response) {
                                   // Here we specify what we do with the response anytime this event occurs. 
                                   if (response.status === 'connected') {
                                          // The response object is returned with a status field that lets the app know the current
                                          // login status of the person. In this case, we're handling the situation where they 
                                          // have logged in to the app.
                                          loadData();
                                   } else if (response.status === 'not_authorized') {
                                          // In this case, the person is logged into Facebook, but not into the app, so we call
                                          // FB.login() to prompt them to do so. 
                                          // In real-life usage, you wouldn't want to immediately prompt someone to login 
                                          // like this, for two reasons:
                                          // (1) JavaScript created popup windows are blocked by most browsers unless they 
                                          // result from direct interaction from people using the app (such as a mouse click)
                                          // (2) it is a bad experience to be continually prompted to login upon page load.
                                          FB.login();
                                   } else {
                                          // In this case, the person is not logged into Facebook, so we call the login() 
                                          // function to prompt them to do so. Note that at this stage there is no indication
                                          // of whether they are logged into the app. If they aren't then they'll see the Login
                                          // dialog right after they log in to Facebook. 
                                          // The same caveats as above apply to the FB.login() call here.
                                          FB.login();
                                   }
                            });
                     };

                     // Load the SDK asynchronously
                     (function(d){
                            var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
                            if (d.getElementById(id)) {return;}
                            js = d.createElement('script'); js.id = id; js.async = true;
                            js.src = "//connect.facebook.net/en_US/all.js";
                            ref.parentNode.insertBefore(js, ref);
                     }(document));

                     // Here we run a very simple test of the Graph API after login is successful. 
                     // This testAPI() function is only called in those cases. 
                     function loadData() {                            
                            FB.api('/me', function(response) {
                              salida = response
                                  $("#fechaNacimiento").val(response.birthday);  
                                   $("#nombre").val(response.first_name);
                                   $("#apellidoPaterno").val(response.last_name);
                                   $("#email").val(response.email);
                                   if(response.gender=="male"){
                                     $("#sexo").val("Hombre");
                                   }else if(response.gender=="female"){
                                     $("#sexo").val("Mujer");
                                   }
                                   $("#facebook").val(response.username);
                            });
                     }
              </script>

              <!--
                Below we include the Login Button social plugin. This button uses the JavaScript SDK to
                present a graphical Login button that triggers the FB.login() function when clicked.
              
                Learn more about options for the login button plugin:
                /docs/reference/plugins/login/ -->

              <fb:login-button size="xlarge" show-faces="true" scope="email, user_birthday, user_hometown, user_interests, user_location, user_relationship_details, user_religion_politics, user_work_history">
                Activa con tu cuenta
              </fb:login-button>
              <g:form class="form-horizontal" action="activar" >
                <fieldset class="form">
                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'numero', 'error')} required ">
                    <label for="numero">
                      <g:message code="chequera.numero.label" default="Numero" />
                      <span class="required-indicator">*</span>
                    </label>
                    <g:textField class="span12" name="numero" required=""  maxLength="100"  value="${chequeraInstance?.numero}"/>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'nombre', 'error')} required">
                    <label for="nombre">
                      <g:message code="chequera.nombre.label" default="Nombre" />
                      <span class="required-indicator">*</span>
                    </label>
                    <g:textField class="span12" name="nombre" required="" maxLength="100" value="${chequeraInstance?.nombre}"/>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'apellidoPaterno', 'error')} required">
                    <label for="apellidoPaterno">
                      <g:message code="chequera.apellidoPaterno.label" default="Apellido Paterno" />
                      <span class="required-indicator">*</span>
                    </label>
                    <g:textField class="span12"  name="apellidoPaterno" required="" maxLength="100" value="${chequeraInstance?.apellidoPaterno}"/>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'apellidoMaterno', 'error')} required">
                    <label for="apellidoMaterno">
                      <g:message code="chequera.apellidoMaterno.label" default="Apellido Materno" />
                    </label>
                    <g:textField class="span12" name="apellidoMaterno" maxLength="100" value="${chequeraInstance?.apellidoMaterno}"/>
                  </div>


                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'email', 'error')} required">
                    <label for="email">
                      <g:message code="chequera.email.label" default="Email" />
                      <span class="required-indicator">*</span>
                    </label>
                    <g:field class="span12" type="email" name="email" required=""  maxLength="255" value="${chequeraInstance?.email}"/>
                  </div>



                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'fechaNacimiento', 'error')} required">
                    <label for="fechaNacimiento">
                      <g:message code="chequera.fechaNacimiento.label" default="Fecha Nacimiento" />
                      <span class="required-indicator">*</span>
                    </label>
                    <!--g:datePicker name="fechaNacimiento" precision="day"  value="${chequeraInstance?.fechaNacimiento}"  /-->
                    <div class="input-append date" id="datetimepicker1" data-date="${formatDate(format:'dd/MM/yyyy',date:chequeraInstance?.fechaNacimiento)}" data-date-format="dd/mm/yyyy">
                      <g:textField readonly="" class="span12" name="fechaNacimiento" required="" value="${formatDate(format:'dd/MM/yyyy',date:chequeraInstance?.fechaNacimiento)}"/>
                      <span class="add-on">
                        <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="icon-calendar">
                        </i>
                      </span>
                    </div>
                    <script type="text/javascript">
                      $('#datetimepicker1').datepicker({
                        language: 'es'
                      });
                    </script>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'sexo', 'error')} required">
                    <label for="sexo">
                      <g:message code="chequera.sexo.label" default="Sexo" />
                      <span class="required-indicator">*</span>
                    </label>
                    <g:select name="sexo" from="${chequeraInstance.constraints.sexo.inList}" required=""  value="${chequeraInstance?.sexo}" valueMessagePrefix="chequera.sexo"/>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'colonia', 'error')} ">
                    <label for="colonia">
                      <g:message code="chequera.colonia.label" default="Colonia" />

                    </label>
                    <g:textField class="span12" name="colonia" maxLength="100" value="${chequeraInstance?.colonia}"/>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'telefono', 'error')} ">
                    <label for="telefono">
                      <g:message code="chequera.telefono.label" default="Telefono" />

                    </label>
                    <g:textField class="span12" name="telefono" maxLength="20" value="${chequeraInstance?.telefono}"/>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'facebook', 'error')} ">
                    <label for="facebook">
                      <g:message code="chequera.facebook.label" default="Facebook" />

                    </label>
                    <g:textField class="span12" name="facebook" maxLength="255" value="${chequeraInstance?.facebook}"/>
                  </div>

                  <div class="fieldcontain ${hasErrors(bean: chequeraInstance, field: 'twitter', 'error')} ">
                    <label for="twitter">
                      <g:message code="chequera.twitter.label" default="Twitter" />

                    </label>
                    <g:textField class="span12" name="twitter" maxLength="255" value="${chequeraInstance?.twitter}"/>
                  </div>

                </fieldset>
                <br/>
                <fieldset class="">
                  <g:submitButton name="create" class="btn btn-large btn-color" value="${message(code: 'default.button.create.label', default: 'Create')}" /> <g:link uri="/" class="btn btn-large  btn-danger">Cancelar</g:link>
                </fieldset>
              </g:form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
