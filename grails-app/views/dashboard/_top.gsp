<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<gvisualization:pieCoreChart elementId="piechart" title="Cheques mas redimidos" width="60%" height="${350}" columns="${columnasTop}" data="${datosTop}"  is3D="${true}" chartArea="${new Expando(left: "auto", top:0)}"/>
<g:render  template="/headers/header" model="['titulo':'Principales Cheques Redimidos']"/>
<div class="row">
    <br/>
    <br/>
    <div class="col-md-4 col-md-offset-3">
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div id="piechart"></div>
    </div>
</div>