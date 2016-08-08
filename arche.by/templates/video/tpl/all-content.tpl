{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}
{{if $smarty.get.sort == "byPopularity"}}{{assign var="sort" value="byPopularity desc"}}{{elseif $smarty.get.sort == "byPublishDate" || !$smarty.get.sort || $smarty.get.sort==""}}{{assign var="sort" value="byPublishDate desc"}}{{/if}}
{{assign var="articles_per_page" value="60"}}

{{list_articles columns=$articles_per_page constraints="type is video section smaller_equal 100" ignore_issue="true" order=$sort}}
{{if $gimme->current_list->at_beginning}}
{{if $sort == "byPublishDate desc" && $gimme->current_list->row == $page}}
  <h3 class="section-page-date"><time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</time></h3>
  {{assign var="on_date" value=$gimme->article->publish_date|date_format:"%Y-%m-%d"}}
{{/if}}
<ul class="videos">
{{/if}}
{{if $gimme->current_list->row == $page}}
  {{if $gimme->article->publish_date|date_format:"%Y-%m-%d" != $on_date && !$gimme->current_list->at_beginning && $sort == "byPublishDate desc"}}
  </ul><!-- .videos -->
  <h3 class="section-page-date"><time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</time></h3>
  <ul class="videos">
  {{assign var="on_date" value=$gimme->article->publish_date|date_format:"%Y-%m-%d"}}
  {{/if}}

    <li>
      <div class="content">
				<h4 class="section-name"><a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/">{{$gimme->article->section->name}}</a></h4>
        <a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 130 height 95"}}" alt="{{$gimme->article->name|escape}}">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a>
        <h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3>
        <ul class="video-info">
        	<li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>
        	<li><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="videoarche-{{$gimme->article->number}}" class="comments-count"></a></li>
        </ul><!-- .video-info -->
      </div><!-- .content -->
      <div class="tooltip">
    		<ul class="video-info">
    			<li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>
    			<li>з рубрыкі <a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
					{{if $gimme->article->length}}<li>працягласць {{$gimme->article->length}}</li>{{/if}}
    		</ul><!-- .video-info -->
    		<h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a> <small>({{$gimme->article->reads}} праглядаў)</small></h3>
    		<p>{{$gimme->article->text|strip_tags:false|strip|truncate:60}} <a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">глядзець >></a></p>
    		{{list_article_topics}}{{if $gimme->current_list->at_beginning}}<p class="topics">тэмы: {{/if}}<a href="/{{$gimme->language->code}}/channel/topics/?topic={{$gimme->topic->name|escape}}">{{$gimme->topic->name}}</a>{{if !$gimme->current_list->at_end}}, {{/if}}{{if $gimme->current_list->at_end}}</p>{{/if}}{{/list_article_topics}}
      </div><!-- .tooltip -->
    </li>
{{/if}}
{{if $gimme->current_list->at_end}}
</ul><!-- .videos -->
{{/if}}
{{/list_articles}}

{{list_articles columns=$articles_per_page constraints="type is video section smaller_equal 100" ignore_issue="true" order=$sort}}
{{if $gimme->current_list->count > $articles_per_page}}
{{if $gimme->current_list->at_beginning}}
<div class="pagination">
	<h3>Старонкі:</h3>
	<ol>
{{/if}}
{{if $gimme->current_list->column == 1}}
  {{if $gimme->current_list->row==$page}}
    <li class="active">{{$gimme->current_list->row}}</li>
  {{else}}
    <li><a href="/{{$gimme->language->code}}/channel/all/?page={{$gimme->current_list->row}}{{if $smarty.get.sort}}&amp;sort={{$smarty.get.sort}}{{/if}}">{{$gimme->current_list->row}}</a></li>
  {{/if}}
{{/if}}
{{if $gimme->current_list->at_end}}
	</ol>
</div><!-- .pagination -->
{{/if}}
{{/if}}
{{/list_articles}}