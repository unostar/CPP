{{set_default_issue}}{{set_default_section}}{{set_default_article}}
<div class="article-content">
<div class="article clearfix">
<div class="article-left">
<div class="section-title">{{$gimme->section->name}}</div>
<div class="article-details clearfix">
<h1>{{$gimme->article->name}}</h1>
<p class="article-date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y г." }}
{{if $gimme->article->author->name != ""}}{{$gimme->article->author->name}}{{/if}}</p>
{{if $gimme->article->has_image(2)}}
  <div class="border-div"><img width="615" src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" /></div>
  <p class="photo"><span class="photo-description">{{$gimme->article->image2->description}}</span></p>
{{/if}}
<p class="intro">{{$gimme->article->intro}}</p>
</div>
<div class="article-divider"><hr /></div>
<p class="article-tools">
{{if $gimme->article->comments_enabled}}<a href="#add_comment">Послать комментарий ({{$gimme->article->comment_count}})</a>{{/if}}
<a href="{{ uri options="template sendtofriend/sendtofriend.php"}}" class="glossary">Отправить ссылку другу</a>
<a href="{{ uri options="template print.tpl"}}" target="_blank">Напечатать</a>
<a href="#" style="text-decoration:none;">изменить шрифт:</a><strong><a href="javascript:changeFontSize(1)" style="margin:0 0 0 5px;">A+</a>|<a href="javascript:changeFontSize(-1)" style="margin:0 0 0 3px;">A-</a></strong>
</p>
<p>{{$gimme->article->Full_text}}</p>
{{ if $gimme->article->Related != "" }}<div class="related"><h2>На эту же тему</h2><p>{{ $gimme->article->Related }}</p></div>{{ /if }}

{{if $gimme->article->has_attachments}}
{{list_article_attachments}}
{{if $gimme->current_list->at_beginning}}<h4>Приложения</h4>{{/if}}
{{if $gimme->attachment->extension == "mp3"}}
<p>{{$gimme->attachment->description}}<br />
<object height="20" width="200" data="/templates/images/player_mp3_maxi.swf" type="application/x-shockwave-flash" align="top">
  <param value="/templates/images/player_mp3_maxi.swf" name="movie" />
  <param name="wmode" value="opaque" />
  <param value="mp3={{uri options="articleattachment"}}&amp;showstop=1&amp;showvolume=1&amp;buttonwidth=25&amp;sliderwidth=15&amp;bgcolor1=125A95&amp;bgcolor2=B6CCDE" name="FlashVars" />
</object><br />
<a href="{{uri options="articleattachment"}}">{{$gimme->attachment->file_name}}, {{$gimme->attachment->size_kb}}Kb</a>
</p>
{{else}}
<p><a href="{{uri options="articleattachment"}}">{{$gimme->attachment->description}}, .{{ $gimme->attachment->extension }}, размер({{ $gimme->attachment->size_kb }} KB)</a></p>
{{/if}}
{{/list_article_attachments}}
{{/if}}

<div class="article-divider-1"><hr/></div>

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
<a rel="nofollow" href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4df384952b0157fa" class="addthis_button_compact">Поделиться</a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4df384952b0157fa"></script>
<!-- AddThis Button END -->

<!-- begin article comments form -->
{{ unset_topic }}
{{ include file="article-cont-comments.tpl" }}
{{ set_default_topic }}
<!-- end article comments form -->
<div class="section-divider"><hr /></div>
<!-- begin list of articles in section -->
{{ if $gimme->section->number == "210" }}
{{ list_articles length="50" constraints="number not `$gimme->article->number`" order="bypublishdate desc" ignore_issue="true" }}
{{ if $gimme->current_list->at_beginning }}<p class="article-extra-title">Все новости из рубрики {{ $gimme->section->name }}</p>{{ /if }}
<p class="article-extra-links"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
{{ /list_articles }}
{{ else }}
{{ list_articles length="50" constraints="number not `$gimme->article->number`" order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}<p class="article-extra-title">Другие новости рубрики {{ $gimme->section->name }}</p>{{ /if }}
<p class="article-extra-links"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
{{ /list_articles }}
{{ /if }}
<!-- end list of articles in section -->
</div> 
<!-- begin article right column-->
{{ unset_topic }}
<div class="section-right">
{{include file="section-right.tpl"}}
</div>
<!-- end article right column-->
<div class="section-fulldivider"><hr /></div>
</div>
<div class="banner-section">{{ include file="banner-middle728x90.tpl" }}</div>
</div>
