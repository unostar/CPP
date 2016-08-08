<div class="b-curpaper g-clean">
  <b class="b-brcourier"></b>
  <span class="b-curpaper_no">{{$gimme->issue->name}} от {{$gimme->issue->publish_date|camp_date_format:"%d.%m.%Y"}}</span>
</div>
{{list_sections constraints="number smaller 100"}}
<div id="newsbox-{{$gimme->section->url_name}}">
<div class="b-bheader_blue"><span><a href="{{uri options="section"}}"><b>{{$gimme->section->name}}</b></a></span><div class="b-bheader_pright"><a href="#add">+</a><a href="#remove">-</a></div></div>
<div class="b-nfeed m-navi_bgbottom">
{{list_articles length="16" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  {{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" width="100" height="100" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" />{{/if}}
  <div class="b-nfeed_header"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></div>
  <div class="intro">{{$gimme->article->intro|strip_tags:false|strip}}</div>
  <div><span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span></div>
  <div class="b-nfeed_bottom">
    <ul class="g-none list-linkslightgray">
{{else}}
      <li style="display:none;"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a><span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span></li>
{{/if}}
{{if $gimme->current_list->at_end}}
  {{if $gimme->current_list->count < 2}}<li style="display:none;"></li>{{/if}} {{* simply to validate xhtml *}}
    </ul>
    <a href="{{uri options="section"}}" class="a-linebullet">Все статьи рубрики</a>
  </div>
{{/if}}
{{/list_articles}}
</div>
</div>
{{/list_sections}}
