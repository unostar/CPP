{{ if $gimme->section->number == "110" }}
<img src="/templates/images/kolonka_red.jpg" alt="колонка редактора Брестская газета" width="600px" />
<br/><br/>
{{ /if }}
<div class="article-column" id="article-column">
<div class="meta">
<a href="{{ uri options="template phpscripts/sendtofriend/sendtofriend.php"}}" class="send">отправить ссылку</a><img src="/templates/images/separator-pipe.gif" alt="separator" class="separator"  />
<a href="#disqus_thread" class="comment">Комментарии</a><img src="/templates/images/separator-pipe.gif" alt="separator" class="separator" />
<a href="{{ uri options="template print.tpl" }}" class="print">версия для печати</a><img src="/templates/images/separator-pipe.gif" alt="separator" class="separator" />
<a href="#" class="decreaseFont" title="Уменьшить шрифт"><img src="/templates/images/fontsmall.gif" alt="" class="icon" /></a>
<a href="#" class="resetFont" title="Установить шрифт по умолчанию"><img src="/templates/images/fontreset.gif" alt="" class="icon" /></a>
<a href="#" class="increaseFont" title="Увеличить шрифт"><img src="/templates/images/fontbig.gif" alt="" class="icon" /></a>
изменить шрифт</div>

{{ if $smarty.get.afisha }}
	<ul class="afisha-tabs afisha-article-tabs">
		<li class="current"><a href="">Кино</a></li>
		<li><a href="">Театры</a></li>
		<li><a href="">Музеи</a></li>
		<li><a href="">Разное</a></li>
	</ul><!-- .afisha-tabs -->

	<div class="afisha afisha-article">
{{ /if}}

				<h1>{{ $gimme->article->name }}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h1>
				<p class="date">{{$gimme->article->issue->name}}{{* $gimme->article->publish_date|camp_date_format:"%d %M %Y" *}}{{ if $gimme->article->author->name != "" }}&nbsp;&nbsp;&nbsp;&nbsp;Автор: <a href="{{ uri options="template author.tpl" }}">{{ $gimme->article->author->name }}</a>{{/if}}</p>
{{ if $gimme->article->has_image(2) }}

		<div style="float:left;width:282px;margin:0 10px 10px 0;">
			<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" class="picture" style="margin:0 0 2px 0;width:280px" />
			<p style="padding:15px;clear:left;background-color:#e7e7e7;margin:0;color:#0f2672;font-size:11px;">
			{{if $gimme->article->image2->place}}<a href="{{$gimme->article->image2->place}}" target="_blank">{{/if}}
				{{$gimme->article->image2->description|replace:'"':''}}
				{{if $gimme->article->image2->photographer}}{{if $gimme->article->image2->description}} // {{/if}}Фото: {{ $gimme->article->image2->photographer}}{{/if}}
			{{if $gimme->article->image2->place}}</a>{{/if}}
			</p>
		</div>
{{ /if }}
{{if $gimme->article->has_map}}
	<div class="article-map">
		{{ map show_locations_list="false" show_reset_link="false" width="282" height="282" }}
	</div>
{{/if}}

				<div class="intro article_text">{{ $gimme->article->Intro }}</div>
				<div class="text article_text">
					{{if $gimme->section->number != 220 }}
						{{ $gimme->article->Full_text }}
					{{ else }}
						{{ $gimme->article->Full_text|replace:'[':'<div class="ltick">'|replace:']':'<div class="ltickclear"></div></div>'|replace:'#t':'<div class="lticktime">'|replace:'#c':'<div class="ltickcomment">'|replace:'#i_y':'<div class="lticksign ltyellow">'|replace:'#i_r':'<div class="lticksign ltred">'|replace:'#i_s':'<div class="lticksign ltsubstitution">'|replace:'#i_w':'<div class="lticksign ltwhistle">'|replace:'#i_g':'<div class="lticksign ltgoal">'|replace:'#i':'<div class="lticksign">'|replace:'#':'&nbsp;</div>'|regex_replace:'/<p[^>]*?>/si':''|regex_replace:'/<\/p>/si':''}}
					{{/if}}
				</div>

{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
<p><b>{{ $gimme->attachment->description }}</b></p>
<p><b>Скачать: </b><a href="{{ uri options="articleAttachment" }}">{{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}kb)</a></p>
{{ /list_article_attachments }}
{{ /if }}

<div class="addthis_toolbox addthis_default_style">
		<noindex><nofollow><a href="http://addthis.com/bookmark.php?v=250" class="addthis_button_compact"> Поделиться</a></nofollow></noindex>
		<span class="addthis_separator">&nbsp;</span>
		<a class="addthis_button_email"></a>
		<a class="addthis_button_livejournal"></a>
		<a class="addthis_button_facebook"></a>
		<a class="addthis_button_twitter"></a>
		<a class="addthis_button_odnoklassniki_ru"></a>
		<span class="addthis_separator">&nbsp;</span>
		<a class="addthis_button_facebook_like" fb:like:width="130"></a>
</div>

{{* This is obsolete
<div class="meta" style="width:auto;">
<a href="{{ uri options="template phpscripts/sendtofriend/sendtofriend.php"}}" class="send">отправить ссылку</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" class="separator"  />
<a href="#comments-list" class="comment">Комментарии ({{$gimme->article->comment_count}})</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" class="separator" />
<a href="{{ uri options="template print.tpl" }}" class="print">версия для печати</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" class="separator" />
<a href="#" class="decreaseFont" title="Уменьшить шрифт"><img src="/templates/images/fontsmall.gif" alt="" class="icon" /></a>
<a href="#" class="resetFont" title="Установить шрифт по умолчанию"><img src="/templates/images/fontreset.gif" alt="" class="icon" /></a>
<a href="#" class="increaseFont" title="Увеличить шрифт"><img src="/templates/images/fontbig.gif" alt="" class="icon" /></a> изменить шрифт
</div>
*}}

<!-- mini gallery -->
<div class="minigal">
{{ if $gimme->article->has_image(100) }}
<h2 style="border-bottom:1px solid #C0C0C0;color:#555555;font-size:12px;font-weight:bold;margin:0 0 20px 0;padding:20px 0 5px 0;">ФОТО ПО ТЕМЕ</h2>
{{list_article_images}}
{{if $gimme->image->article_index > 99}}
<a href="{{uri options="image"}}" rel="minigal" class="minigal_thumb" title="{{$gimme->image->description|escape}}{{if $gimme->image->photographer}} (Фото: {{$gimme->image->photographer|escape}}){{/if}}" style="background-image:url({{uri options="image"}}&ImageRatio=25)"></a>
{{/if}}
{{ /list_article_images }}
{{/if}}
</div>
<!-- end mini gallery -->

<!-- Яндекс.Директ -->
<script type="text/javascript">
yandex_partner_id = 91435;
yandex_site_bg_color = 'FFFFFF';
yandex_site_charset = 'utf-8';
yandex_ad_format = 'direct';
yandex_font_size = 1;
yandex_direct_type = 'horizontal';
yandex_direct_limit = 2;
yandex_direct_title_font_size = 3;
yandex_direct_header_bg_color = 'FEEAC7';
yandex_direct_title_color = '0000CC';
yandex_direct_url_color = '006600';
yandex_direct_text_color = '000000';
yandex_direct_hover_color = '0066FF';
yandex_direct_favicon = true;
document.write('<sc'+'ript type="text/javascript" src="http://an.yandex.ru/system/context.js"></sc'+'ript>');
</script>

{{ include file="article-cont-left-comments.tpl" }}
{{ include file="article-cont-previssue.tpl" }}

{{ if $smarty.get.afisha }}
	</div><!-- .afisha -->
{{ /if}}

</div>