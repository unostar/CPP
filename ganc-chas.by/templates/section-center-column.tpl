{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{else}}{{assign var="page" value="1"}}{{/if}}
<!-- Центральная колонка -->
<div id="section_content" class="g-left"><div id="section_content_inner">

{{list_articles length="96" columns="6" ignore_issue="true" constraints="type is article"}}
{{if $gimme->current_list->count > 6}}
  {{if $gimme->current_list->at_beginning}}
  <div class="b-main header-huge">
    <div class="navigation">
  {{/if}}
    {{if $gimme->current_list->column == 1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/{{$gimme->section->url_name}}?page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{if $gimme->current_list->at_end}}
    </div>
  </div>
  {{/if}}
{{/if}}
{{/list_articles}}

{{* чтобы на странице каталога товаров и услуг первая статья не показывалась выделенно *}}
{{ if $gimme->section->url_name == "catalog"}}
  {{ assign var="show_first_as_special" value="0" }}
{{ else }}
  {{ assign var="show_first_as_special" value="1" }}
{{ /if }}

  <div class="b-main">
{{list_articles length="96" columns="6" ignore_issue="true" constraints="type is article"}}

{{if $gimme->current_list->row==$page && $gimme->current_list->index > $show_first_as_special }}
    <div class="b-articlesmall">
      {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 38"}}" alt="{{$gimme->article->image1->description}}" width="190" /></a></span>{{/if}}
      <div class="b-article_name">{{if $gimme->article->author->name}}{{$gimme->article->author->name}}{{else}}Ганцавіцкі час{{/if}}{{if $gimme->article->comment_count}} <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}/#comments"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
      <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
      <div class="intro">{{$gimme->article->intro}}</div>
      <div class="g-clean"><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="b-article_readfw">чытаць далей</a></div>
    </div>
{{/if}}
{{/list_articles}}
  </div>

{{list_articles length="96" columns="6" ignore_issue="true" constraints="type is article"}}
{{if $gimme->current_list->count > 6}}
  {{if $gimme->current_list->at_beginning}}
  <div class="b-main header-huge">
    <div class="navigation">
  {{/if}}
    {{if $gimme->current_list->column == 1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/{{$gimme->section->url_name}}?page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{if $gimme->current_list->at_end}}
    </div>
  </div>
  <div class="b-main"></div>
  {{/if}}
{{/if}}
{{/list_articles}}

{{* include file="section-center-column-more-items.tpl" *}}
</div></div>
<!-- //центральная колонка -->
