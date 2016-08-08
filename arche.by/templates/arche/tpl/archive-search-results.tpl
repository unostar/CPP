{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}

{{if $smarty.get.date}}
  {{assign var="get_date" value=$smarty.get.date|camp_date_format:"%Y-%m-%d"}}
  <h2>Артыкулы за {{$get_date|camp_date_format:"%d.%m.%Y"}}:</h2>
  {{list_articles columns="20" constraints="type is article section smaller 150 publish_date is `$get_date`" ignore_issue="true"}}
  {{if $gimme->current_list->row==$page}}
    <article class="article">
      <header class="article-header">
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3>
      </header><!-- .article-header -->
      <footer class="article-footer">
        <ul>
          <li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time></li>
          {{if $gimme->article->author->name!=""}}<li><a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:'url'}}" class="author">{{$gimme->article->author->name}}</a></li>{{/if}}
        </ul>
      </footer><!-- .article-footer -->
      <p class="lead">{{$gimme->article->intro|strip_tags:false|strip|truncate:450}} <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">далей &gt;&gt;</a></p>
    </article><!--.article -->
  {{/if}}
  {{/list_articles}}
  {{if $gimme->prev_list_empty}}
    <article class="article">
      <header class="article-header">
        <h3><a>Артыкулы не знойдзены.</a></h3>
      </header>
    </article><!--.article -->
  {{/if}}
  
  {{list_articles columns="20" constraints="type is article section smaller 150 publish_date is `$get_date`" ignore_issue="true"}}
  {{if $gimme->current_list->count > 20}}
    {{if $gimme->current_list->at_beginning}}
    <div class="pagination">
      <h3>Старонкі:</h3>
      <ol>
    {{/if}}
    {{if $gimme->current_list->column == 1}}
      {{if $gimme->current_list->row==$page}}
        <li class="active">{{$gimme->current_list->row}}</li>
      {{else}}
        <li><a class="page" href="/{{$gimme->language->code}}/page/archive/?action=calendar&date={{$get_date}}&page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a></li>
      {{/if}}
    {{/if}}
    {{if $gimme->current_list->at_end}}
      </ol>
    </div><!-- .pagination -->
    {{/if}}
  {{/if}}
  {{/list_articles}}

{{elseif $gimme->search_articles_action->defined}}
  <h2>Вынікі пошуку {{if $gimme->search_articles_action->search_phrase}}"{{$gimme->search_articles_action->search_phrase}}":{{/if}}</h2>
  
  {{list_search_results columns="20" order="bypublishdate desc"}}
  {{if $gimme->current_list->row==$page}}
    <article class="article">
      <header class="article-header">
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3>
      </header><!-- .article-header -->
      <footer class="article-footer">
        <ul>
          <li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time></li>
          {{if $gimme->article->author->name!=""}}<li><a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:'url'}}" class="author">{{$gimme->article->author->name}}</a></li>{{/if}}
        </ul>
      </footer><!-- .article-footer -->
      <p class="lead">{{$gimme->article->intro|strip_tags:false|strip|truncate:450}} <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">далей &gt;&gt;</a></p>
    </article><!--.article -->
  {{/if}}
  {{/list_search_results}}

  {{if $gimme->prev_list_empty}}
    <article class="article">
      <header class="article-header">
        <h3><a>Артыкулы не знойдзены.</a></h3>
      </header>
    </article><!--.article -->
  {{/if}}

  {{list_search_results columns="20" order="bypublishdate desc"}}
  {{if $gimme->current_list->count > 20}}
    {{if $gimme->current_list->at_beginning}}
    <div class="pagination">
      <h3>Старонкі:</h3>
      <ol>
    {{/if}}
    {{if $gimme->current_list->column == 1}}
      {{if $gimme->current_list->row==$page}}
        <li class="active">{{$gimme->current_list->row}}</li>
      {{else}}
        <li><a class="page" href="/{{$gimme->language->code}}/page/archive/?page={{$gimme->current_list->row}}&tpl={{$gimme->template->identifier}}&f_search_articles=true&f_search_level={{$gimme->search_articles_action->search_level}}&f_search_keywords={{$gimme->search_articles_action->search_phrase}}&f_search_issue={{$gimme->search_articles_action->search_issue}}&f_search_section={{$gimme->search_articles_action->search_section}}&f_search_start_date={{$gimme->search_articles_action->start_date}}&f_search_end_date={{$gimme->search_articles_action->end_date}}&f_search_topic={{$gimme->search_articles_action->topic_id}}&f_search_scope={{$gimme->search_articles_action->scope}}">{{$gimme->current_list->row}}</a></li>
      {{/if}}
    {{/if}}
    {{if $gimme->current_list->at_end}}
      </ol>
    </div><!-- .pagination -->
    {{/if}}
  {{/if}}
  {{/list_search_results}}

{{else}}

{{*  {{php}}include ('/home/archeby/xml-forest/arche-archive-content-list.html');{{/php}} *}}
{{include file="arche/tpl/archive-content-list.tpl"}}

{{/if}}