<div class="article-comments" style="padding:20px 0 0 0;border-top:1px solid #ebebeb; margin:20px 0 0 0;">
{{ assign var="n_article" value=$gimme->article->number }}
{{ list_article_topics }}
{{ set_topic name=$gimme->topic->value }}
{{ local }}
{{ unset_issue }}
{{ unset_section }}
  {{ list_articles }}
      {{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
      <h3 class="comment-title">Iншыя артыкулы па тэме:</h3>
      <p>&nbsp;</p>
      {{ /if }}
    {{ if ($gimme->article->number == $n_article ) }}
    {{ else }}
        <p><a href="{{ uri }}">{{ $gimme->article->name }}</a> ({{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }})</p>
    {{ /if }}
  {{ /list_articles }}
{{ /local }}
{{ /list_article_topics }}
</div>