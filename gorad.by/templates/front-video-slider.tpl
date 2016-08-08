<div class="b-maincontent">
  <h2 class="header-block m-header-block-red">
    <b class="bg-header-block-l"></b>
    <b class="bg-header-block-r"></b>
    <span class="header-block-i"><a href="/by/page/video">Video<i class="header-ico header-ico-video"></i></a></span>
  </h2>
  <div class="b-maincontent-il"><div class="b-maincontent-ir">
  <div id="video-scrollable" class="b-maincontent-i">
    <div class="c-photovideo_video">
      <a class="prev c-photovideo_la" title="Назад"></a>
      <a class="next c-photovideo_ra" title="Наперад"></a>
      <div class="scrollable"><div class="items">
{{list_articles length="6" constraints="has_video is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
        <div><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 3"}}" alt="{{$gimme->article->image3->description|escape}}" title="{{$gimme->article->image3->description|escape}}" width="276" height="204" /><p>{{$gimme->article->name}}</p></a></div>
{{/list_articles}}
      </div></div>
    </div>
    <div class="navi c-photovideo_bullets"></div>
  </div>
  </div></div>
  <span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>

