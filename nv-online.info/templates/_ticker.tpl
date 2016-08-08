{{ list_articles length="5" ignore_issue="true" ignore_section="true" constraints="type is daily_text" order="bypublishdate desc" }}
tickercontent[{{$gimme->current_list->index-1}}]='<small>{{$gimme->article->publish_date|camp_date_format:"%H:%i"}}</small> <a href="{{uri options="article"}}">{{$gimme->article->name|escape:'html':'utf-8'}}</a>';
{{/list_articles}}