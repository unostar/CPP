{{assign var="main" value="0"}}
{{assign var="today" value=$smarty.now|camp_date_format:"%Y-%m-%d" }}
{{set_default_topic}}
<div class="article_box"><h4>{{$gimme->section->name}}</h4></div>

<div class="article_box">
{{list_articles constraints="publish_date is $today" ignore_issue="true" order="bypublishdate desc"}}
  <div class="big_article section">
    <div class="big_article_data{{if $gimme->current_list->at_beginning}} first{{/if}}">
      <span class="art_image">{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" />{{/if}}</span>
      <h2><a>{{$gimme->article->name}}</a></h2>
      <p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>
      <p>{{$gimme->article->intro}}</p>
      <p>{{$gimme->article->full_text}}</p>
    </div>
  </div>
{{/list_articles}}
{{if $gimme->prev_list_empty}}
<p class="date">Артыкулаў па дадзенай тэматыцы не знойдзена</p>
{{/if}}
</div>

{{unset_topic}}
{{ include file="section-column-1-banner.tpl" }}