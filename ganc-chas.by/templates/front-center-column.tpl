<!-- Центральная колонка -->
<div class="g-left">
  <div class="b-main">
    <div class="b-artheader">
      <b class="bg-artheader"></b>
      <span>
        {{*set_current_issue}}<em>№{{$gimme->issue->name}}({{$gimme->issue->number}})</em>{{$gimme->issue->publish_date|camp_date_format:"%d.%m.%Y"}}{{set_issue number="1"*}}
        {{ $smarty.now|camp_date_format:"%d.%m.%Y" }}<br />
        {{ $smarty.now|camp_date_format:"%W" }}
      </span>
    </div>
{{list_sections constraints="number smaller 100"}}
    <div class="b-articlesmall">
      <div class="header-category">{{$gimme->section->name}} <a href="{{uri options="section"}}" class="b-article_readfw m-article_readfw-h">все материалы</a></div>
{{if $gimme->section->number == 10}}
  {{list_articles length="7" constraints="type is article" ignore_issue="true" order="bypublishdate desc"}}
    {{if $gimme->current_list->count > 4 && $gimme->current_list->index == 5}}
      {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 38"}}" alt="{{$gimme->article->image1->description}}" width="190" /></a></span>{{/if}}
      <div class="b-article_name">{{if $gimme->article->author->name}}{{$gimme->article->author->name}}{{else}}Ганцавіцкі час{{/if}}{{if $gimme->article->comment_count}} <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}/#comments"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
      <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
      <div class="intro">{{$gimme->article->intro}}</div>
      <div class="g-clean"><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="b-article_readfw">читать далее</a></div>
    {{elseif $gimme->current_list->index > 5}}
      {{if $gimme->current_list->index == 6}}
      <ul class="b-article_addlist">
      {{/if}}
        <li><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></li>
      {{if $gimme->current_list->at_end}}
      </ul>
      {{/if}}
    {{/if}}
  {{/list_articles}}
{{else}}
  {{list_articles length="3" constraints="type is article" ignore_issue="true" order="bypublishdate desc"}}
    {{if $gimme->current_list->at_beginning}}
      {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 38"}}" alt="{{$gimme->article->image1->description}}" width="190" /></a></span>{{/if}}
      <div class="b-article_name">{{if $gimme->article->author->name}}{{$gimme->article->author->name}}{{else}}Ганцавіцкі час{{/if}}{{if $gimme->article->comment_count}} <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}/#comments"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
      <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
      <div class="intro">{{$gimme->article->intro}}</div>
      <div class="g-clean"><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="b-article_readfw">читать далее</a></div>
    {{elseif $gimme->current_list->index > 1}}
        {{if $gimme->current_list->index == 2}}
      <ul class="b-article_addlist">
        {{/if}}
        <li><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></li>
        {{if $gimme->current_list->at_end}}
      </ul>
        {{/if}}
    {{/if}}
  {{/list_articles}}
{{/if}}
  </div>
{{/list_sections}}
    <div class="g-tac">{{include file="_banner-front-center-column-bottom.tpl"}}</div>
  </div>
</div>
<!-- //центральная колонка -->
