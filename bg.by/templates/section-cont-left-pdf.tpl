<div class="ticker">Архив WEB и PDF версий издания <a href="{{ uri options="template article-recently-commented.tpl" }}">Последние комментарии</a></div>
{{ list_articles length="10" ignore_issue="true" constraints="section is 1" }}
{{ if $gimme->current_list->at_beginning && $gimme->current_list->index == 1 }}
<div class="main-news"> 
{{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1" }}" alt="Титульный лист" border="0"  width="50" style="width:50px !important" />{{ /if }}
  <br /><h1><a href="{{ uri options="template archive-list.tpl" }}">{{ $gimme->issue->name }}</a></h1>
  <p class="date">{{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }} г.</p>
{{list_article_attachments length="1"}}
  <p><a href="{{uri options="articleAttachment"}}" class="read">Скачать PDF-версию издания</a></p>
{{/list_article_attachments}}
</div>
{{else}}
{{ if $gimme->current_list->index == 2 }}<div class="title">PDF-версии предыдущих выпусков</div>{{ /if }}
<div class="rest-news"> 
{{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1" }}" alt="Титульный лист" border="0" align="left" width="50" style="width:50px !important" />{{ /if }}
  <br /><h3 class="section-block"><a href="{{ uri options="template archive-list.tpl" }}">{{ $gimme->issue->name }}</a></h3>
  <p class="date">{{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }} г.</p>
{{list_article_attachments length="1"}}
  <p><a href="{{uri options="articleAttachment"}}" class="read">Скачать PDF-версию издания</a></p>
{{/list_article_attachments}}
</div>
{{/if}}
{{if $gimme->current_list->at_end}}
{{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
<div class="title" style="margin-top:20px;text-align:center;">
 {{if $gimme->current_list->has_previous_elements}}<a href="{{url options="section"}}?{{urlparameters options="previous_items"}}"><< Предыдущая страница</a>{{/if}}&nbsp;&nbsp;&nbsp;
 {{if $gimme->current_list->has_next_elements}}<a href="{{url options="section"}}?{{urlparameters options="next_items"}}">Следующая страница >></a>{{/if}}
</div>
{{/if}}
{{/if}}
{{/list_articles}}
