{{include file="_html-head.tpl"}}
<body>
<!-- Оболочки фона и всего содержимого -->
<div class="l-container">
<!-- Шапка -->
{{include file="_header.tpl"}}
<!-- //шапка -->
<!-- Оболочка основного содержимого -->
<div class="l-wrapper">
<!-- Основное содержимое -->
<div class="l-content"><div class="b-maincontent">
<h2 class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">{{$gimme->section->name}}</span></span></h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div id="section-content" class="b-maincontent-i">
{{include file="static-`$gimme->section->url_name`.tpl"}}


{{*if $gimme->article->defined}}
  <ul class="social-buttons social-buttons-static-page">
    <li class="addthis">
      <div class="addthis_toolbox addthis_default_style ">
        <a href="http://www.addthis.com/bookmark.php?v=250&amp;username=goradby" class="addthis_button_compact">Поделиться</a>
      </div>
    </li>
    <li class="facebook">
      <fb:like href="" layout="button_count" show_faces="false" width="140" action="recommend" font="segoe ui"></fb:like>
    </li>
    <li class="plusone">
      <g:plusone size="medium"></g:plusone>
    </li>
    <li class="vkontakte">
      <div id="vk_like"></div>
    </li>
    <li class="twitter">
      <a href="https://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="GoradNews" data-lang="ru">Твитнуть</a>
    </li>
  </ul><!-- .social-buttons -->
  <script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
  <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=goradby"></script>
  <script type="text/javascript">VK.Widgets.Like("vk_like", {type: "button", verb: 1});</script>
{{/if*}}

</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div></div>
<!-- //основное содержимое -->
<!-- Навигация -->
<div class="l-navigation">
{{ include file="_sidebar.tpl" }}
</div>
<!-- //навигация -->
</div>
<!-- //оболочка основного содержимого -->
<!-- Подошва -->
{{include file="_footer.tpl"}}
<!-- //подошва -->
</div>
<!-- //оболочки фона и всего содержимого -->
</body>
</html>
