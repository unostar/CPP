<div class="divcont-tight">

{{ list_articles length="10" order="bypublishdate desc" constraints="OnFrontPage is off OnSection is off" }}

{{ if $gimme->current_articles_list->index > 5 }}
   <p class="separated"><span class="dateright">{{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }}</span><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ /if }}

{{ /list_articles }}


</div>
