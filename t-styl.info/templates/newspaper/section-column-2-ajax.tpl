{{ set_default_issue }}
{{ list_articles length="12" ignore_issue="false" }}

{{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
<h2 class="other">Iншыя Артыкулы рубрыкi <span style="font-size:9px;">&lt;&lt;</span> {{ $gimme->section->name }} <span style="font-size:9px;">&gt;&gt;</span></h2>

{{ /if }}
{{ if ($gimme->article->number == $n_article ) }}
{{ else }}
  <div class="article-box">
  {{ if $gimme->article->has_image(1) }}
<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" width="120" />
{{ /if }}
  <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
  {{ if $gimme->article->author->name != "" }}
        <p class="author">Піша {{ $gimme->article->author->name }}</p>
   {{ /if }}
  {{ $gimme->article->Intro }}<p style="padding:0; margin:0;">
{{ if $gimme->article->comments_enabled }}
<a class="smore" href="{{ uri options="article" }}#add_comment" style="padding:0 7px 0 0; ">Каментары {{ list_article_comments order="bydate asc"}}
  {{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}
{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}(0){{ /if }}</a>
{{ /if }}
<span class="divider">|</span><a class="smore" href="{{ uri options="article" }}">Чытай далей</a></p>
  </div>


{{ if $gimme->current_list->at_end }} 
<p style="margin:20px 0 0 0;">
       {{ if $gimme->current_list->has_previous_elements }}
         <a class="smore" href="javascript:ajaxpage('{{ uri options="template newspaper/section-column-2-ajax.tpl" }}', 'frontAjax');">Раней</a>
       {{ else }}
Раней
       {{ /if }}
|
    {{ if $gimme->current_list->has_next_elements }}
    <a class="smore" href="javascript:ajaxpage('{{ uri options="template newspaper/section-column-2-ajax.tpl" }}', 'frontAjax');" class="navigation">Пазней</a>
    {{ else }}                                     
Пазней
    {{ /if }}
</p>
    {{ /if }}

{{ /if }}
{{ /list_articles }}