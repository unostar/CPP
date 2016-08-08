<div class="b-maincontent b-bigpicture">
<h2 class="header-block m-header-block-blue">
  <b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
  <span class="header-block-i">{{list_sections constraints="number is 150"}}<a href="/by/page/{{$gimme->section->url_name}}">{{$gimme->section->name}}</a>
  <a class="feed" href="/feed/{{$gimme->section->url_name}}.rss"><i class="ico ico-rss"></i>RSS</a>{{/list_sections}}</span>
</h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
<div class="c-newsmain">
  <div class="c-newsmain-3cols g-tjustify">
  {{list_articles length="2" order="bypublishdate desc" constraints="section is 150" ignore_issue="true"}}
    <div class="c-newsmain-col{{$gimme->current_list->index}} g-dbjustify">
      <div class="c-preview">
        <h3><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="c-preview_header">
          {{if $gimme->article->has_image(3)}}<img src="{{uri options="image 3"}}" alt="{{$gimme->article->image3->description|escape}}" {{if $gimme->article->image3->photographer}}title="Фота: {{$gimme->article->image3->photographer|escape}}"{{/if}} width="316" height="210" />{{/if}}
          {{$gimme->article->name}}
        </a></h3>
      </div>
    </div>
  {{/list_articles}}
  </div>
</div>
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>