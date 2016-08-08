<!-- Left & Right -->
{{list_articles length="2" constraints="type is article OnFrontPage is off OnSection is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
<div class="l-col2_column {{if $gimme->current_list->at_end}}l-col2_cr320{{else}}l-col2_cl320{{/if}}">
  <div class="b-nfeed">
    <h2><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h2>
    {{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" width="100" height="100" />{{/if}}
    <div class="intro">{{$gimme->article->intro|strip_tags:false|strip}}</div>
    <div>
      <span class="b-freshnews_time"><i class="ico ico-time"></i> {{$gimme->article->publish_date|camp_date_format:"%H:%i"}}</span>
      <span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span>
    </div>
  </div>
</div>
{{/list_articles}}
<!-- // Left & Right -->
