<div class="section-column-2 clearfix">
 <div class="column-2-content">
   {{ local }}
   {{ set_default_section }}
   {{ list_articles length="1" ignore_issue=TRUE order="bypublishdate desc"}}
     <p class="article-tools"><a class="print" href="{{ uri options="template newspaper/print.tpl" }}">Версія для друку</a>
<a href="{{ uri options="template newspaper/php/sendtofriend/sendtofriend.php" }}" target="send" class="send">Даслаць сябру</a>
{{ if $gimme->article->comments_enabled }}
<a class="comments" href="#add_comment">Kаментары 
{{ list_article_comments order="bydate asc"}}
  {{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}
{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}(0){{ /if }}</a>
{{ /if }}
<a class="dfonts" href="#" onclick="javascript:FontSize(1);return false;"><img src="/templates/newspaper/images/icon-dfont.gif" alt="Увеличить шрифт" width="16px" /></a>
<a class="ifonts" href="#" onclick="javascript:FontSize(-1);return false;"><img src="/templates/newspaper/images/icon-ifont.gif" alt="Уменьшить шрифт" width="16px" /></a>
&nbsp;Памер шрыфта</p>

	    <h2 style="margin:0 0 10px 0;clear:left;"><span style="font-size:9px;">&lt;&lt;</span> {{ $gimme->section->name }} <span style="font-size:9px;">&gt;&gt;</span></h2>



           {{ if $gimme->article->has_image(2) }}
        <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" class="day-img" width="276" />
{{ /if }}
	    
	    <h1 class="day">{{ $gimme->article->name }}</h1>
		<p class="byline">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} {{ if $gimme->article->author->name != "" }}| Піша {{ $gimme->article->author->name }}
   {{ /if }}</p>
<div id="article_full">{{* font-resizer container *}}
    <div class="intro">{{ $gimme->article->Intro }}</div>
		<div class="full-text">{{ $gimme->article->Full_text }}</div>
</div>
   {{ /list_articles }}
   {{ /local }}
 </div>
</div>