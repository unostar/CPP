<div class="block-bottom-news">
  <div class="home-column-middle-2-5">
    <div class="content-2-5">
      <h3 class="bottom-news">В Беларуси</h3>
      <div class="list-articles">
        <p class="br-article">
        {{ dynamic }}
        {{ php }}
        include ('/home/belmarke/xml-forest/brynok-feed-belta.html');
        include ('/home/belmarke/xml-forest/brynok-feed-naviny.html');
        include ('/home/belmarke/xml-forest/brynok-feed-interfax.html');
        {{ /php }}
        {{ /dynamic }}
        </p>
      </div><!-- /.br-article -->
    </div><!-- /.content-2-5 -->
  </div><!-- /.home-column-middle-2-5 -->
  <div class="home-column-middle-3-5">
    <div class="content-3-5">
      <h3 class="bottom-news">Мировые новости</h3>
      <div class="list-articles">
        <p class="br-article">
        {{ php }}
        include ('/home/belmarke/xml-forest/brynok-feed-rbc.html');
        {{ /php }}
        </p>
      </div><!-- /.list-articles -->
    </div><!-- /.content-3-5 -->
  </div><!-- /.home-column-middle-3-5 -->
  <div class="home-column-middle-4-5">
    <div class="content-4-5">
      <h3 class="bottom-news">Экономика</h3>
      <div class="list-articles">
      <p class="br-article">
      {{ php }}
      include ('/home/belmarke/xml-forest/brynok-feed-naviny-eco.html');
      include ('/home/belmarke/xml-forest/brynok-feed-tut.html');
      include ('/home/belmarke/xml-forest/brynok-feed-rbc-eco.html');
      {{ /php }}
      </p>
      </div><!-- /.list-articles -->
    </div><!-- /.content-4-5 -->
  </div><!-- /*.home-column-middle-4-5 -->
</div><!-- /.block-bottom-news -->
