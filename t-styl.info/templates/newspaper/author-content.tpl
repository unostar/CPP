{{ set_default_section }}
{{ set_default_article }}

<div class="section-column-2 clearfix">
     <div class="column-2-content">

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

      <h2 style="margin:0 0 10px 0;clear:left;">Апошнія артыкулы аўтара</h2>

<h1 class="day">{{ $gimme->article->author->name }}</h1>

<div class="article-comments" style="padding:20px 0 0 0;border-top:1px solid #ebebeb; margin:20px 0 0 0;">
          {{ list_articles length="40" ignore_issue="true" ignore_section="true" order="bypublishdate desc" constraints="author is __current" }}
          <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a> ({{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }})</p>
          
          {{ /list_articles }} 
</div>
          
    
     </div>
   </div>
