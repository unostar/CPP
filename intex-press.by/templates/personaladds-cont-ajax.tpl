{{ list_articles length="20" }}

          <h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>

          <p class="section-rest-date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}. {{ list_article_comments }}&#8226; комментарии ({{ $gimme->article->comment_count }}){{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}{{ /if }}</p>

          <p>{{ $gimme->article->intro }}</p>

{{ if $gimme->current_list->at_end }}

<div class="navigation" style="text-align: center;width:200px;margin:10px 0 0 400px;float:left;clear:left;">

  {{ if $gimme->current_list->has_previous_elements }}

  <a href="javascript:ajaxpage('{{ uri options="section template personaladds-cont-ajax" }}', 'contentarea');">Назад</a>

  {{ else }}

  <span>Назад</span>

  {{ /if }}

  |

  {{ if $gimme->current_list->has_next_elements }}

  <a href="javascript:ajaxpage('{{ uri options="next_items" options="section template personaladds-cont-ajax" }}', 'contentarea');">Вперед</a>

  {{ else }}

  <span>Вперед</span>

  {{ /if }}

</div>

{{ /if }}

{{ /list_articles }}