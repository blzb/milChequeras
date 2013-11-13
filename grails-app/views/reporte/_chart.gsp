<%@ page import="com.lucasian.cheques.Chequera" %>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>

<h2 align="center"><g:message code="${tiendaInstance}"/></h2>
<div id="piechart" align="center"></div>
<gvisualization:pieCoreChart dynamicLoading="${true}" elementId="piechart" title="Cheques por Series" 
                             width="${450}" height="${300}" columns="${seriesColumns}" data="${seriesData}"/>
<br/>
<div id="chequesUsados" align="center"></div>
<gvisualization:pieCoreChart dynamicLoading="${true}" elementId="chequesUsados" title="Cheques Usados" 
                             width="${450}" height="${300}" columns="${usadosColums}" data="${usadosData}"/>
<br/>





