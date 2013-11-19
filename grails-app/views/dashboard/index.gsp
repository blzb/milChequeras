
<%@ page import="com.lucasian.cheques.Chequera" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">

    <title><g:message code="default.dashboard.index"/></title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="description" content="overview &amp; stats">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>	
    <div class="row">
      <div class="space-12"></div>
      <div class="col-sm-2"></div>
      <div class="col-sm-7 infobox-container">
        <div class="infobox infobox-green  ">
          <div class="infobox-icon">
            <i class="icon-comments"></i>
          </div>
          <div class="infobox-data">
            <span class="infobox-data-number">32</span>
            <div class="infobox-content">Comentarios</div>
          </div>
          <div class="stat stat-success">8%</div>
        </div>
        <div class="infobox infobox-blue  ">
          <div class="infobox-icon">
            <i class="icon-twitter"></i>
          </div>
          <div class="infobox-data">
            <span class="infobox-data-number">11</span>
            <div class="infobox-content">Nuevos Seguidores</div>
          </div>
          <div class="badge badge-success">
            +32%
            <i class="icon-arrow-up"></i>
          </div>
        </div>
        <div class="infobox infobox-pink  ">
          <div class="infobox-icon">
            <i class="icon-shopping-cart"></i>
          </div>
          <div class="infobox-data">
            <span class="infobox-data-number">8</span>
            <div class="infobox-content">Tiendas</div>
          </div>
          <div class="stat stat-important">4%</div>
        </div>
        <div class="infobox infobox-red  ">
          <div class="infobox-icon">
            <i class="icon-beaker"></i>
          </div>
          <div class="infobox-data">
            <span class="infobox-data-number">7</span>
            <div class="infobox-content">Chequeras</div>
          </div>
        </div>
        <div class="infobox infobox-orange2  ">
          <div class="infobox-chart">
            <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"><canvas width="44" height="33" style="display: inline-block; width: 44px; height: 33px; vertical-align: top;"></canvas></span>
          </div>
          <div class="infobox-data">
            <span class="infobox-data-number">251</span>
            <div class="infobox-content">Nuevos Cheques</div>
          </div>
          <div class="badge badge-success">
            7.2%
            <i class="icon-arrow-up"></i>
          </div>
        </div>
        <div class="infobox infobox-blue2  ">
          <div class="infobox-progress">
            <div class="easy-pie-chart percentage easyPieChart" data-percent="42" data-size="46" style="width: 46px; height: 46px; line-height: 46px;">
              <span class="percent">42</span>%
              <canvas width="46" height="46"></canvas></div>
          </div>
          <div class="infobox-data">
            <span class="infobox-text">Cheques Usados</span>

            <div class="infobox-content">

              Cheques
            </div>
          </div>
        </div>
        <div class="space-6"></div>
        <div class="infobox infobox-green infobox-small infobox-dark">
          <div class="infobox-progress">
            <div class="easy-pie-chart percentage easyPieChart" data-percent="61" data-size="39" style="width: 39px; height: 39px; line-height: 39px;">
              <span class="percent">61</span>%
              <canvas width="39" height="39"></canvas></div>
          </div>
          <div class="infobox-data">
            <div class="infobox-content">Series</div>
            <div class="infobox-content">Usadas</div>
          </div>
        </div>
        <div class="infobox infobox-blue infobox-small infobox-dark">
          <div class="infobox-chart">
            <span class="sparkline" data-values="3,4,2,3,4,4,2,2"><canvas width="39" height="19" style="display: inline-block; width: 39px; height: 19px; vertical-align: top;"></canvas></span>
          </div>
          <div class="infobox-data">
            <div class="infobox-content">Ofertas</div>
            <div class="infobox-content">$32,000</div>
          </div>
        </div>

      </div>
    <div class="space-12"></div>
    </div><!-- /row -->
    <div class="row">
      <div class="space-12"></div>
      <div class="vspace-sm"></div>
      <div class="col-sm-3"></div>
      <div class="col-sm-5">
        <div class="widget-box">
          <div class="widget-header widget-header-flat widget-header-small">
            <h5>
              <i class="icon-signal"></i>
              Cheques Serie
            </h5>
            <div class="widget-toolbar no-border">
              <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                Esta semana
                <i class="icon-angle-down icon-on-right bigger-110"></i>
              </button>
              <ul class="dropdown-menu pull-right dropdown-125 dropdown-lighter dropdown-caret">
                <li class="active">
                  <a href="#" class="blue">
                    <i class="icon-caret-right bigger-110">&nbsp;</i>
                    This Week
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
                    Last Week
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
                    This Month
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
                    Last Month
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="widget-body">
            <div class="widget-main">
              <div id="piechart-placeholder" style="width: 90%; min-height: 150px; padding: 0px; position: relative;"><canvas class="flot-base" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 384px; height: 150px;" width="384" height="150"></canvas><canvas class="flot-overlay" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 384px; height: 150px;" width="384" height="150"></canvas><div class="legend"><div style="position: absolute; width: 95px; height: 110px; top: 15px; right: -30px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:15px;right:-30px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #68BC31;overflow:hidden"></div></div></td><td class="legendLabel">Serie A</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #2091CF;overflow:hidden"></div></div></td><td class="legendLabel">Serie B</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #AF4E96;overflow:hidden"></div></div></td><td class="legendLabel">Serie C</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #DA5430;overflow:hidden"></div></div></td><td class="legendLabel">Serie D</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #FEE074;overflow:hidden"></div></div></td><td class="legendLabel">Serie E</td></tr></tbody></table></div></div>
              <div class="hr hr8 hr-double"></div>
              <div class="clearfix">
                <div class="grid3">
                  <span class="grey">
                    <i class="icon-facebook-sign icon-2x blue"></i>
                    &nbsp; likes
                  </span>
                  <h4 class="bigger pull-right">1,255</h4>
                </div>
                <div class="grid3">
                  <span class="grey">
                    <i class="icon-twitter-sign icon-2x purple"></i>
                    &nbsp; tweets
                  </span>
                  <h4 class="bigger pull-right">941</h4>
                </div>
                <div class="grid3">
                  <span class="grey">
                    <i class="icon-pinterest-sign icon-2x red"></i>
                    &nbsp; pins
                  </span>
                  <h4 class="bigger pull-right">1,050</h4>
                </div>
              </div>
            </div><!-- /widget-main -->
          </div><!-- /widget-body -->
        </div><!-- /widget-box -->
      </div><!-- /span -->
    </div>
    <script type="text/javascript">
                     jQuery(function($) {
                            $('.easy-pie-chart.percentage').each(function(){
                                   var $box = $(this).closest('.infobox');
                                   var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
                                   var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
                                   var size = parseInt($(this).data('size')) || 50;
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
			
                            $('.sparkline').each(function(){
                                   var $box = $(this).closest('.infobox');
                                   var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
                                   $(this).sparkline('html', {tagValuesAttribute:'data-values', type: 'bar', barColor: barColor , chartRangeMin:$(this).data('min') || 0} );
                            });
			
			
			
			
                       var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
                       var data = [
                            { label: "Serie A",  data: 38.7, color: "#68BC31"},
                            { label: "Serie B",  data: 24.5, color: "#2091CF"},
                            { label: "Serie C",  data: 8.2, color: "#AF4E96"},
                            { label: "Serie D",  data: 18.6, color: "#DA5430"},
                            { label: "Serie E",  data: 10, color: "#FEE074"}
                       ]
                       function drawPieChart(placeholder, data, position) {
                              $.plot(placeholder, data, {
                                   series: {
                                          pie: {
                                                 show: true,
                                                 tilt:0.8,
                                                 highlight: {
                                                        opacity: 0.25
                                                 },
                                                 stroke: {
                                                        color: '#fff',
                                                        width: 2
                                                 },
                                                 startAngle: 2
                                          }
                                   },
                                   legend: {
                                          show: true,
                                          position: position || "ne", 
                                          labelBoxBorderColor: null,
                                          margin:[-30,15]
                                   }
                                   ,
                                   grid: {
                                          hoverable: true,
                                          clickable: true
                                   }
                             })
                      }
                      drawPieChart(placeholder, data);
			
                      /**
                      we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
                      so that's not needed actually.
                      */
                      placeholder.data('chart', data);
                      placeholder.data('draw', drawPieChart);						
			
                     })
    </script>

  </body>
</html>
