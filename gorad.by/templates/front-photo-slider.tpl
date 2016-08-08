<div class="b-maincontent">
<h2 class="header-block m-header-block-red">
  <b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
  <span class="header-block-i"><a href="/by/page/photo">Photo<i class="header-ico header-ico-photo"></i></a></span>
</h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir">
  <div id="photo-scrollable" class="b-maincontent-i">
    <div class="c-photovideo_photo g-tjustify">
      <a class="prev c-photovideo_la" title="Назад"></a>
      <a class="next c-photovideo_ra" title="Наперад"></a>
      {{*<a href="/by/page/bigpicture/1825"><img src="/templates/images/temp/parad_svodnyh_orchestrov_mogilev_241.jpg" alt="Парад сводных оркестров прошёл в Могилёве"></a>*}}
      <div class="scrollable"><div class="items">
          {{list_articles length="21" columns="3" constraints="has_photo is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
            {{if $gimme->current_list->column == 1}}
              <div>
            {{/if}}
                <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" title="{{$gimme->article->name|escape:'html'}}" class="c-preview_header{{if $gimme->article->has_image(1)}} accurate-size{{/if}}" target="_blank">
                  {{if $gimme->article->has_image(1)}}
                    <img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description|escape}}" {{if $gimme->article->image1->photographer}}title="{{$gimme->article->name|escape:'html'}} / Фота: {{$gimme->article->image1->photographer|escape}}"{{/if}} height="90" />
                  {{elseif $gimme->section->number == 150}}
                    <img src="{{uri options="image 3 height 90"}}" alt="{{$gimme->article->image3->description|escape}}" {{if $gimme->article->image4->photographer}}title="{{$gimme->article->name|escape:'html'}} / Фота: {{$gimme->article->image3->photographer|escape}}"{{/if}} height="90" />
                  {{/if}}
                </a>
            {{if $gimme->current_list->column == 3}}
              </div>
            {{/if}}
          {{/list_articles}}
      </div></div>
    </div>
    <div class="navi c-photovideo_bullets"></div>
  </div>
</div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>

