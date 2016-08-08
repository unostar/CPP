{{ dynamic }}
{{set_default_article}}
{{ /dynamic }}

<div class="home-column-middle">
<div class="content-middle">

<div class="content-article-page">

<h2 class="top-news">{{$gimme->section->name}}</h2>
<h3 class="top-title-article"><a href="#">{{$gimme->article->name}}</a></h3>
{{if $gimme->section->number=="1"}}
  <p class="service-links-left">{{$gimme->article->publish_date|camp_date_format:"%d %M, %Y"}} г.</p>
{{else}}
  <p class="service-links-left">{{$gimme->issue->name}}</p>
{{/if}}

<div class="service-links">
<ul class="list-links">
<li><a href="{{uri options="template print.tpl"}}" class="print">версия для печати</a></li>
<li><a href="{{uri options="template sendtofriend/sendtofriend.php"}}" class="send email" target="send2friend">отправить ссылку</a></li>
{{ dynamic }}
{{if $gimme->article->comments_enabled}}
<li><a href="#comments-list" class="comment">комментарии ({{$gimme->article->comment_count}})</a></li>
{{/if}}
{{ /dynamic }}
{{if $gimme->article->Article_text->has_next_subtitles || $gimme->article->Article_text->has_previous_subtitles}}
<li><a href="{{uri options="all_subtitles Article_text"}}" class="one-page">вся статья</a></li>
{{/if}}
<li style="float:right"><a href="#" class="fnt">изменить шрифт</a></li>
</ul>
</div><!-- /.service-links -->
<ul id="sc_fnt" style="display:none">
<li><a class="increaseFont" href="#" title="Увеличить шрифт">A+</a></li>
<li><a class="resetFont" href="#" title="Установить шрифт по умолчанию">&nbsp;/&nbsp;</a></li>
<li><a class="decreaseFont" href="#" title="Уменьшить шрифт">A-</a></li>
</ul>
{{if $gimme->article->author->name}}
<p class="author"><a href="{{ uri options="template author-page.tpl" }}">{{$gimme->article->author->name}}{{$gimme->article->extended_author}}</a></p>
{{/if}}

{{ if $gimme->article->Article_text->has_previous_subtitles}}
<ul class="list-links" style="float:left"><li><a href="{{uri options="previous_subtitle Article_text"}}" class="prev-page">предыдущая страница</a></li></ul>
{{/if}}

<div class="article-full" id="article-full">
{{if $gimme->article->has_image(2)}}
  <div class="img-div"><img src="{{uri options="image 2"}}" style="width:255px;" align="right" alt="{{$gimme->article->image2->description}}" border="0" />
  <p class="author" style="padding:0;">{{$gimme->article->image2->description}}</p>
  </div>
{{/if}}

{{if $gimme->article->Lead}}
  {{if !$gimme->article->Article_text->has_previous_subtitles}}
    <div class="intro" id="intro">{{$gimme->article->Lead}}</div>
    {{if $gimme->article->Related}}<p>{{$gimme->article->Related}}</p>{{/if}}
  {{/if}}
{{/if}}

{{ dynamic }}
<p id="text">{{$gimme->article->Article_text}}</p>
{{ /dynamic }}

{{list_article_attachments}}
{{if $gimme->article->has_attachments}}
<p><a href="{{uri options="articleAttachment"}}">скачать {{$gimme->attachment->file_name}}, {{$gimme->attachment->size_kb}}(kb)</a></p><br/>
{{/if}}
{{ /list_article_attachments }}
</div>

<div style="padding:3px 0 3px 0;">
<ul class="list-links" style="float:right;">
{{if $gimme->article->Article_text->has_previous_subtitles}}
  <li><a href="{{uri options="previous_subtitle Article_text"}}" class="prev-page">предыдущая страница</a></li>
{{/if}}
{{if $gimme->article->Article_text->has_next_subtitles}}
  <li><a href="{{uri options="next_subtitle Article_text"}}" class="next-page">следующая страница</a></li>
{{ /if }}
{{if $gimme->article->Article_text->has_next_subtitles || $gimme->article->Article_text->has_previous_subtitles}}
  <li><a href="{{uri options="all_subtitles Article_text"}}" class="one-page">вся статья</a></li>
{{ /if }}
</ul>

<div style="float:left;" class="list-heads">
{{list_subtitles field_name="Article_text"}}
{{if $gimme->article->Article_text->has_next_subtitles || $gimme->article->Article_text->has_previous_subtitles}}
{{if $gimme->article->Article_text->subtitle_is_current}}
<b>{{$gimme->current_list->index}}</b>
{{else}}
<a href="{{uri}}">{{$gimme->current_list->index}}</a>
{{/if}}
{{/if}}
{{/list_subtitles }} 
</div>
</div>
</div>

{{if $gimme->article->has_image(20)}} {{* Indikatory *}}
<script type="text/javascript" src="/templates/javascript/minigal/minigal.js"></script>
<div class="archive-column clearfix">
  {{list_article_images}}
    {{if $gimme->article->image->article_index>19}}
      <div class="archive-item">
        <a href="{{uri options="image"}}" rel="minigalZoom"><img src="{{uri options="image"}}&ImageRatio=30" alt="{{$gimme->article->image->description}}" /></a>
        <p>{{$gimme->article->image->description}}</p>
      </div>
    {{/if}}
  {{/list_article_images}}
</div><!-- /.archive-column clearfix -->
<script type="text/javascript">addLoadEvent(initminigalZoom);</script>
{{/if}}
 
{{ include file="minigal.tpl" }}

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
  <a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e1b4fa73c193d5d" class="addthis_button_compact">Поделиться</a>
  <span class="addthis_separator">|</span>
  <a class="addthis_button_twitter"></a>
  <a class="addthis_button_facebook"></a>
  <a class="addthis_button_vk"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e1b4fa73c193d5d"></script>
<!-- AddThis Button END -->

<a name="comments-list"></a>
{{ include file="article-cont-comments.tpl" }}
{{ include file="article-cont-previous.tpl" }}

<div class="banner-middle">
<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://openx.omniton.net/delivery/ajs.php':'http://openx.omniton.net/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=2&amp;target=_blank");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://openx.omniton.net/delivery/ck.php?n=a2c4bf97&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://openx.omniton.net/delivery/avw.php?zoneid=2&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a2c4bf97' border='0' alt='' /></a></noscript>
</div><!-- /.banner-middle -->

</div><!-- /.content-middle -->
</div><!-- /.home-column-middle -->