{
"article":[{{list_articles constraints="type is article issue greater 1 section smaller 200 publish_date greater 2011-06-01"}}"{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}"{{if !$gimme->current_list->at_end}},{{/if}}{{/list_articles}}]
}