      <div class="box-305">
        <div class="top-alt"><span>Лента новостей</span></div>
        <div class="center-content-blank clearfix">
          <!-- CONTENT BEGIN -->
          <p class="rss">В стране &gt;&gt;</p>
{{ php }}
include ('/home/bgby/xml-forest/brest-feed-vstrane.html');
{{ /php }}
          <p class="rss">В мире &gt;&gt;</p>
{{ php }}
include ('/home/bgby/xml-forest/brest-feed-vmire.html');
{{ /php }}
          <p class="rss">В космосе &gt;&gt;</p>
{{ php }}
include ('/home/bgby/xml-forest/brest-feed-vkosmos.html');
{{ /php }}

          <!-- CONTENT END -->
        </div>
        <div class="bottom-blank"><span>&nbsp;</span></div>
      </div>