<div class="type-o-cont">Яшчэ з гэтай рубрыкі</div>

<div class="divcont-tight">
{{ list_articles length="11" ignore_issue="true" order="bydate desc" constraints="type is A_text" }}
{{ if !($gimme->article->number == $gimme->default_article->number) }}
   <p class="separated"><span class="dateright">{{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y" }}</span><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ /if }}
{{ /list_articles }}
</div>