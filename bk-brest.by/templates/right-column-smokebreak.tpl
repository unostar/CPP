<div class="b-navi">
  {{set_section number="120"}}<div class="b-bheader_gray"><span><a href="{{uri options="section"}}"><b>"Перекурчик"</b></a></span></div>{{set_default_section}}
{{list_articles length="1" constraints="type is article section is 120" ignore_issue="true" order="bypublishdate desc"}}
  <div class="b-nfeed m-navi_bgbottom m-navi_bgbottomsm">
    <img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="100" height="100" />
    <span class="b-nfeed_header m-nfeed_headersmaller"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></span>
    <p>{{$gimme->article->intro|strip_tags:false|strip}}
    <span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</span>
    </p>
  </div>
{{/list_articles}}
</div>
