<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<gvisualization:lineCoreChart
        elementId="linechart"
        width="100%" height="${500}"
        columns="${columnas}"
        data="${datos}" pointSize="${10}"/>
<g:render  template="/headers/header" model="['titulo':'Dashboard de Cheques Redimidos']"/>
<div class="row">
    <br/>
    <br/>
    <div class="col-md-11 col-md-offset-2" aling="center">

        <g:form action="index">
            <g:submitButton name="dia" value="Ultimas 24 Hrs" class="btn  btn-primary btn-lg"/>
            <g:submitButton name="semana" value="Ultima Semana" class="btn btn-lg btn-primary"/>
            <g:submitButton name="mes" value="Ultimo Mes" class="btn btn-lg btn-primary"/>
        </g:form>

    </div>
</div>
<div class="row">
    <div class="col-md-13">
        <div id="linechart"></div>
    </div>
</div>