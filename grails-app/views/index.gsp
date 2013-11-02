<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="home" />
    <title>Welcome to Grails</title>
    <script src="${resource(dir: 'serenity/js/sequence', file: 'sequence.jquery-min.js')}"></script>
    <script src="${resource(dir: 'serenity/js/sequence', file: 'setting.js')}"></script>
  </head>
  <body>
    <!--section id="featured">

      <div id="da-slider" class="da-slider">
        <div class="da-slide">
          <h2>Caracteristica 1</h2>
          <p>Caractersitica 1</p>
          <a href="#" class="da-link">Leer Mas</a>
          <div class="da-img"><img src="flattern/img/slides/parallax/1.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
          <h2>Caracteristica 2</h2>
          <p>Caracteristica 2</p>
          <a href="#" class="da-link">Leer Mas</a>
          <div class="da-img">
            <div class="video-container">
              <iframe src="http://player.vimeo.com/video/30585464?title=0&amp;byline=0">			</iframe>
            </div>
          </div>
        </div>
        <div class="da-slide">
          <h2>Caracteristica 3</h2>
          <p>Caracteristica 3</p>
          <a href="#" class="da-link">Leer Mas</a>
          <div class="da-img"><img src="flattern/img/slides/parallax/2.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
          <h2>Caracteristica 4</h2>
          <p>Caracteristica 4</p>
          <a href="#" class="da-link">Leer Mas</a>
          <div class="da-img"><img src="flattern/img/slides/parallax/4.png" alt="image01" /></div>
        </div>
        <nav class="da-arrows">
          <span class="da-arrows-prev"></span>
          <span class="da-arrows-next"></span>
        </nav>
      </div>

    </section-->
    <section id="intro">
      <div class="jumbotron masthead">
        <div class="container">
          <!-- slider navigation -->
          <div class="sequence-nav">
            <div class="prev" style="opacity: 0.7;">
              <span></span>
            </div>
            <div class="next" style="opacity: 0.7;">
              <span></span>
            </div>
          </div>
          <!-- end slider navigation -->
          <div class="row" style="height: 400px;">
            <div class="span12">
              <div id="slider_holder">
                <div id="sequence">
                  <ul style="width: 100%; height: 100%; position: relative;">
                    <!-- Layer 1 -->
                    <li style="display: list-item; width: 100%; height: 100%; position: absolute; z-index: 1;" class="">
                      <div class="info animate-out" style="display: block;">
                        <h2>Multiplataforma</h2>
                        <br>
                        <h3>Celulares, Computadoras, Tabletas</h3>
                        <p>
                          Accesa desde cualquier dispositivo a  nuestro servicio
                        </p>
                        <a class="btn btn-success" href="#">Leer mas »</a>
                      </div>
                      <img class="slider_img animate-out" src="${resource(dir: 'serenity/img/slides/sequence/', file: 'img-1.png')}" alt="" style="">
                    </li>
                    <!-- Layer 2 -->
                    <li style="display: list-item; width: 100%; height: 100%; position: absolute; z-index: 3;" class="current-frame">
                      <div class="info animate-in" style="display: block;">
                        <h2>Servicios</h2>
                        <br>
                        <h3>Miles de establecimientos</h3>
                        <p>
                          Promociones y descuentos para que puedas utilizar los servicios de nuestros establecimientos asociados
                        </p>
                        <a class="btn btn-success" href="#">Leer mas »</a>
                      </div>
                      <img class="slider_img animate-in" src="${resource(dir: 'serenity/img/slides/sequence/', file: 'img-2.png')}" alt="" style="">
                    </li>
                    <!-- Layer 3 -->
                    <li style="display: list-item; width: 100%; height: 100%; position: absolute; z-index: 1;" class="">
                      <div class="info animate-out" style="display: block;">
                        <h2>Productos</h2>
                        <br>
                        <h3>Miles de productos</h3>
                        <p>
                          Promociones y descuentos para que puedas adquirir todos los productos que siempre quisiste
                        </p>
                        <a class="btn btn-success" href="#">Leer mas »</a>
                      </div>
                      <img class="slider_img animate-out" src="${resource(dir: 'serenity/img/slides/sequence/', file: 'img-4.png')}" alt="" style="">
                    </li>
                  </ul>
                </div>
              </div>
              <!-- Sequence Slider::END-->
            </div>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
