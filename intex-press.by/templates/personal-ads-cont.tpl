{{ set_default_article }}
<div class="article-content">

<div class="article clearfix">

<div class="article-left">

<div class="section-title">

{{ $gimme->article->name }}

</div>

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
<p>{{ $gimme->article->Full_text }}</p>



</div> 

<!-- begin article right column-->
{{ include file="article-cont-right.tpl" }}

<!-- end article right column-->



<div class="section-fulldivider"><hr /></div>

</div>

<div class="banner-section">{{ include file="banner-middle728x90.tpl"}}</div>

</div>

