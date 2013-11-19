<section id="subintro">
  <div class="jumbotron subhead" id="overview">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="centered">
            <h3>${titulo}</h3>
          </div>
        </div>
      </div>
      
      <div class="row-fluid">
        <g:if test="${boton}">
        <div class="span12">
          <g:link class="btn btn-theme btn-rounded" action="${accion}">${boton}</g:link>
        </div>
          </g:if>
      </div>
      
    </div>
  </div>
</section>

