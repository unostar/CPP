<div class="l-col2_column l-col2_cr440">
  <div class="b-bheader_black"><span>В центре внимания</span></div>
  <div class="b-vnimaniya">
{{list_articles length="1" constraints="type is article OnFrontPage is on OnSection is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
    <h2><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h2>
    {{if $gimme->article->has_image(2)}}<div class="b-article_image"><img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" width="440" />{{if $gimme->article->image2->description!=""}}<span>{{$gimme->article->image2->description}}</span>{{/if}}</div>{{/if}}
    <p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
    <div class="b-vnimaniya_credits">
      {{if $gimme->article->author->name!=""}}Автор: {{$gimme->article->author->name}} <em>|</em> {{/if}}
      <span class="b-freshnews_time"><i class="ico ico-time"></i> {{$gimme->article->publish_date|camp_date_format:"%H:%i"}}</span>
      <span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span>
    </div>
{{/list_articles}}
  </div>
</div>
