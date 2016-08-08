{
"issue":{ {{list_issues constraints="number greater 1"}}"{{$gimme->issue->publish_date|date_format:"%Y-%m-%d"}}":{"title":"{{$gimme->issue->name|strip|escape:'html'}}"}{{if !$gimme->current_list->at_end}},{{/if}}{{/list_issues}} }
}