{
"article":[{{list_articles constraints="type is article issue greater 1 section smaller_equal 120 publish_date greater 1900-01-01"}}"{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}"{{if !$gimme->current_list->at_end}},{{/if}}{{/list_articles}}]
}