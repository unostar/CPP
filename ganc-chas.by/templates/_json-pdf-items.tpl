{
"pdf":{ {{list_articles constraints="type is pdf issue greater 1 section is 300 publish_date greater 1900-01-01"}}"{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}":{"link":"{{list_article_attachments length="1"}}http://{{$gimme->publication->site}}{{uri options="articleAttachment"}}{{/list_article_attachments}}","title":"Выпуск №{{$gimme->issue->name}}({{$gimme->issue->number}}) ад {{$gimme->issue->publish_date|camp_date_format:"%d.%m.%Y"}} - спампаваць pdf"}{{if !$gimme->current_list->at_end}},{{/if}}{{/list_articles}} }
}