{{assign var="items2show" value="8"}}
{{list_articles length=`$items2show+10` constraints="type is article issue greater 1" order="bypublishdate desc"}}
{{if $gimme->current_list->index < ($items2show+1) }}
<div class="b-nfeed bg-dotted st-pb20">
  <div class="b-nfeed_mainheader"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></div>
  {{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="100" height="100" />{{/if}}
  <p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
  <div class="b-vnimaniya_credits">
  {{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}} <em>|</em> <span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span>
  </div>
</div>
{{/if}}
{{if $gimme->current_list->index == ($items2show+1) }}
<div id="newsbox-section-rest">
<div class="b-bheader_gray"><span><b>ЕЩЕ из рубрики {{$gimme->section->name}}</b></span><div class="b-bheader_pright"><a href="#add">+</a><a href="#remove">-</a></div></div>
<div class="b-nfeed m-navi_bgbottom">
  <div class="b-nfeed_bottom">
    <ul class="g-none list-linkslightgray">
{{/if}}
{{if $gimme->current_list->index > $items2show }}
      <li style="display:none;"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a><span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span></li>
{{/if}}
{{if $gimme->current_list->index > $items2show && $gimme->current_list->at_end}}
    </ul>
  </div>
</div>
</div>
{{/if}}
{{/list_articles}}
