
<p>
     {{ list_subtitles }}
         {{ if $gimme->current_list->at_beginning }}
             
         {{ /if }}
{{ if $gimme->current_list->index == 1 }}
Частные объявления:
{{ else }}
         {{ if $gimme->subtitle->number == $gimme->article->full_text->subtitle_number }}
             {{ $gimme->subtitle->name }} | 
         {{ else }}
             <a href="{{ uri options="template pagination.tpl" }}">{{ $gimme->subtitle->name }}</a> | 
        {{ /if }}
        {{ if $gimme->current_list->at_end }}
            <a href="{{ uri options="template pagination.tpl allsubtitles" }}">single page view</a>
        {{ /if }}
{{ /if }}
    {{ /list_subtitles }}
</p>

    <p>{{ $gimme->article->full_text }}</p>
    
