<div id="column-1" class="clearfix">
{{ set_default_article }}
<div id="article" class="article clearfix">
<div class="h1">{{ $gimme->section->name }}</div>
<span class="date">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</span>
<h2><a href="{{uri options="article"}}">{{ $gimme->article->name }}</a></h2>
{{ if $gimme->article->has_image(2) }}
<a href="{{ uri options="image 2" }}" class="main-image"><img src="{{ uri options="image 2 width 310" }}" alt="{{$gimme->article->image2->description}}" title="{{$gimme->article->image2->description}}" /></a>
{{ /if }}
<ul class="links">
  <li><a href="#commentsform">Послать комментарий{{if $gimme->article->comment_count}}&nbsp;({{$gimme->article->comment_count}}){{/if}}</a></li>
  <li>|</li>
  <li><a href="{{ uri options="template php/sendtofriend/sendtofriend.php" }}" class="email">Отправить ссылку другу</a></li>
  <li><a href="{{ uri options="template print.tpl" }}">Напечатать</a></li>
  <li>|</li>
  <li>Изменить шрифт:</li>
  <li><a href="#" onclick="javascript:FontSize(+0.1);return false;">A+</a></li>
  <li><a href="#" onclick="javascript:FontSize(-0.1);return false;">A-</a></li>
</ul>
<div id="intro" class="intro">{{$gimme->article->intro}}</div>
<div id="full_text" class="full_text">{{$gimme->article->full_text}}</div>

<!-- AddThis Button BEGIN -->
{{*<script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8"></script>
<div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="button" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,lj,friendfeed,moikrug"></div> 
*}}
<div class="addthis_toolbox addthis_default_style ">
  <a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e19c9cf06f93bce" class="addthis_button_compact">Поделиться</a>
  <span class="addthis_separator">|</span>
  <a class="addthis_button_twitter"></a>
  <a class="addthis_button_facebook"></a>
  <a class="addthis_button_vk"></a>
<a class="addthis_button_friendfeed"></a>
<a class="addthis_button_moikrug"></a> 
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e19c9cf06f93bce"></script>

<!-- AddThis Button END -->

</div>

<hr class="section-divider" />

{{if $gimme->article->comment_count }}
<a name="comments"></a>
<div class="block-title">Комментарии ({{$gimme->article->comment_count}}) &rsaquo;&rsaquo;</div>
<div class="comments clearfix">
{{ list_article_comments order="bydate desc"}}
  <p class="name">{{ $gimme->comment->reader_email }}</p>
  <p class="date">{{ $gimme->comment->submit_date|camp_date_format:"%d %M %Y" }}</p>
  <p>{{ $gimme->comment->content }}</p>
{{ /list_article_comments }}
</div>
<hr class="section-divider" />
{{ else }}
<a name="comments"></a>
{{ /if }}
{{ include file="column-1-article-comments-form.tpl" }}

<div class="h1 small">Другие новости рубрики</div>
<div class="section-digest clearfix">
{{ include file="column-1-section-digest.tpl" }}
</div>


</div>
