<div class="ads-news">

<p><a href="{{ uri options="template ads-form.tpl" }}">Подать частное объявление</a></p><br/>
{{ list_subtitles field_name="Full_text" }}
{{ if $gimme->article->Full_text->has_next_subtitles || $gimme->article->Full_text->has_previous_subtitles }} 
  {{ if $gimme->current_list->index == "1" }}
        <p class="subs"><strong>{{ $gimme->subtitle->name }}</strong>:</p>
      {{ else }}
        <p class="subs"><a href="{{ uri }}">{{ $gimme->subtitle->name }}</a>|</p>
      {{ /if }}    
{{ /if }}
    {{ /list_subtitles }} 
<p>&nbsp;</p>
{{ $gimme->article->Full_text }}
</div>