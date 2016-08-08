<div id="header">
    {{ include file="_sup_menu.tpl }}
    {{ include file="banner_head.tpl" }}
    <div class="header-box">
      <div class="header-box-inner clearfix"> <a href="/"><img src="/templates/images/logo.gif" alt="logo" class="logo"/></a>
        <div class="search-box">
        {{ search_form submit_button="&nbsp;&nbsp;&nbsp;" template="search.tpl"  button_html_code="class=\"button\" " }}
        {{ camp_edit object="search" attribute="keywords" html_code="class=\"field\"" }}
        {{ /search_form }}
        {{ include file="_weather_box.tpl" }}
        </div>
      </div>
      {{ include file="_main_menu.tpl" }}
      {{ include file="_sub_menu.tpl" }}
      <div class="material">
        <a href="/ru/17_2011/society/8483/">
          <img src="/templates/images/border-queue.jpg" alt="Online-видео очереди на границе" width="170" height="90">
          <span>Online-видео<br> очереди на границе</span>
        </a>
      </div><!-- .material -->
      {{*<div class="brest-foto">
        <div id="gslideshow1" class="gslideshow"><div class="feed-loading">Загружаю...</div></div>
      <a href="{{ uri options="template gallery.tpl" }}"><img src="/templates/images/button-foto2.gif" alt="" class="button" /></a>
      </div>*}}
    </div>
    <p class="date" style="float:left">{{ $smarty.now|camp_date_format:"%e %M %Y (%W)" }}</p><p class="date" style="float:right"><a href="#" onclick="this.style.behavior='url(#default#homepage)'; this.setHomePage('http://www.b-g.by/'); return false;">Сделать стартовой страницей</a></p>
  </div>