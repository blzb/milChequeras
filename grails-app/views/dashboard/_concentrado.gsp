<g:render  template="/headers/header" model="['titulo':'Concentrado']"/>
<br/>
<br/>
<div class="row">

    <div class="space-12"></div>
    <div class="col-sm-1"></div>
    <div class="col-sm-9 infobox-container">
        <div class="infobox infobox-red  ">
            <div class="infobox-icon">
                <i class="icon-tags"></i>
            </div>
            <div class="infobox-data">
                <span class="infobox-data-number">${chequerasRegistradas}</span>
                <div class="infobox-content">Chequeras activadas</div>
            </div>
        </div>
        <div class="infobox infobox-blue ">
            <div class="infobox-icon">
                <i class="icon-archive"></i>
            </div>
            <div class="infobox-data">
                <span class="infobox-data-number">${chequesUsados}</span>
                <div class="infobox-content">Cheques redimidos</div>
            </div>
        </div>
        <div class="infobox infobox-green  ">
            <div class="infobox-progress">
                <div class="easy-pie-chart percentage easyPieChart" data-percent="${porcentaje.porcentaje}" data-size="46" style="width: 46px; height: 46px; line-height: 46px;">
                    <span class="percent">${porcentaje.porcentaje}</span>%
                    <canvas width="46" height="46"></canvas></div>
            </div>
            <div class="infobox-data">
                <span class="infobox-text">Porcentaje</span>
                <div class="infobox-content">
                    Cheques redimidos
                </div>
            </div>
        </div>
        <div class="space-6"></div>
    </div>
    <div class="space-12"></div>
</div>

<br/>
<br/>
<br/>
<br/>
<br/>

<script type="text/javascript">
    jQuery(function($) {
        $('.easy-pie-chart.percentage').each(function(){
            var $box = $(this).closest('.infobox');
            var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
            var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
            var size = parseInt($(this).data('size')) || 150;
            $(this).easyPieChart({
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: parseInt(size/10),
                animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
                size: size
            });
        })
    });
</script>