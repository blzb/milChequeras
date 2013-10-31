<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="serenity" />
    <title>Welcome to Grails</title>
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
                        <h2>Bootstrap based</h2>
                        <br>
                        <h3>Corporate business</h3>
                        <p>
                          Lorem ipsum dolor sit amet, munere commodo ut nam, quod volutpat in per. At nec case iriure, consul recteque nec et.
                        </p>
                        <a class="btn btn-success" href="#">Learn more »</a>
                      </div>
                      <img class="slider_img animate-out" src="${resource(dir: 'serenity/img/slides/sequence/', file: 'img-1.png')}" alt="" style="">
                    </li>
                    <!-- Layer 2 -->
                    <li style="display: list-item; width: 100%; height: 100%; position: absolute; z-index: 3;" class="current-frame">
                      <div class="info animate-in" style="display: block;">
                        <h2>Smart and fresh</h2>
                        <br>
                        <h3>Rich of features</h3>
                        <p>
                          Lorem ipsum dolor sit amet, munere commodo ut nam, quod volutpat in per. At nec case iriure, consul recteque nec et.
                        </p>
                        <a class="btn btn-success" href="#">Learn more »</a>
                      </div>
                      <img class="slider_img animate-in" src="${resource(dir: 'serenity/img/slides/sequence/', file: 'img-2.png')}" alt="" style="">
                    </li>
                    <!-- Layer 3 -->
                    <li style="display: list-item; width: 100%; height: 100%; position: absolute; z-index: 1;" class="">
                      <div class="info animate-out" style="display: block;">
                        <h2>Far from ugly</h2>
                        <br>
                        <h3>Latest technology</h3>
                        <p>
                          Lorem ipsum dolor sit amet, munere commodo ut nam, quod volutpat in per. At nec case iriure, consul recteque nec et.
                        </p>
                        <a class="btn btn-success" href="#">Learn more »</a>
                      </div>
                      <img class="slider_img animate-out" src="${resource(dir: 'serenity/img/slides/sequence/', file: 'img-3.png')}" alt="" style="">
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
