<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main" />
    <title>Sample title</title>
  </head>
  <body>
    <section id="inner-headline">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span5">
            <div class="inner-heading">
              <h2>Cheques encontrados</h2>
            </div>
          </div>	                       
        </div>			
      </div>
    </section>

    <section id="content">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <g:form action="usar">    
              <input type="hidden" name="serie" value="${serie}"/>
              <table class="table">
                <thead>
                  <tr>
                    <th>
                      Promocion
                    </th>
                    <th>
                      Utilizar
                    </th>
                  </tr>
                </thead>
                <tbody>
                <g:each in="${cheques}" >
                  <tr>
                    <td>
${it.texto}
                    </td>
                    <td>
                      <input type="radio" name="usar" value="${it.id}"/>
                    </td>
                  </tr>              
                </g:each>
                </tbody>
              </table>
              <input type="submit" value="Usar" class="btn">
            </g:form>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
