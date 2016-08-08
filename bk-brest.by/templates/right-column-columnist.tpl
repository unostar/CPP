<div class="b-navi m-navi_bgbottom m-navi_bgbottomsm b-obozrevatel">
  {{set_section number="100"}}<div class="b-bheader_gray"><span><a href="{{uri options="section"}}"><b>колонка обозревателя</b></a></span></div>{{set_default_section}}
  <div>
{{list_articles length="1" constraints="type is article section is 100 author is Михаил\ ЯНЧУК" ignore_issue="true" order="bypublishdate desc"}}
  <div class="b-nfeed">
    <div class="b-nfeed_mainheader"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></div>
    {{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="100" height="100" />{{/if}}
    <p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
    <div class="b-vnimaniya_credits">
      {{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}} <em>|</em> <span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span>
    </div>
  </div>
{{/list_articles}}
{{list_articles length="1" constraints="type is article section is 100 author is Николай\ АЛЕКСАНДРОВ" ignore_issue="true" order="bypublishdate desc"}}
  <div class="b-nfeed">
    <div class="b-nfeed_mainheader"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></div>
    {{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="100" height="100" />{{/if}}
    <p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
    <div class="b-vnimaniya_credits">
      {{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}} <em>|</em> <span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span>
    </div>
  </div>
{{/list_articles}}
  </div>
</div>
