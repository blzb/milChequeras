
<section id="inner-headline">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
          <div class="inner-heading">
            <h2>${titulo}</h2>
          </div>
        </div>	
        <g:if test="${boton}">
        <div class="span3" style="margin-top: 30px;">
          <g:link class="btn btn-large btn-theme btn-rounded" action="${accion}">${boton}</g:link>
        </div>
        </g:if>
      </div>			      
    </div>
  </section>

