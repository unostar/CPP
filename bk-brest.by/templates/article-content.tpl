<div class="b-bheader_blue"><span><b>{{$gimme->section->name}}</b></span></div>
<div class="b-vnimaniya b-article">
	<h2><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h2>
	<div class="b-vnimaniya_credits">{{if $gimme->article->author->name!=""}}Автор: {{$gimme->article->author->name}} <em>|</em> {{/if}}{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</div>
  <div class="b-article_panel g-tjustify">
		<div class="g-bjustify">
			<div class="g-bjustify-i">
				<a href="#article_services">Закладки и сервисы +</a>
				<div class="b-article_ddmenu" style="display:none">
					<span><a href="{{url options="article"}}" rel="{{$gimme->article->name}}" class="dd1 bookmark_page">Добавить<br />в избранное</a></span>
					<span><a href="{{url options="template print.tpl"}}" target="_blank" class="dd2">Версия для<br /> печати</a></span>
					<span><a href="{{uri options="template send2friend.tpl"}}" id="send2friend" class="dd3">Отправить<br />ссылку другу</a></span>
					{{*<span><a href="#" class="dd4">Добавить тему<br />на форуме</a></span>*}}
				</div>
			</div>
		</div>
		{{if $gimme->article->comments_enabled}}<div class="g-bjustify">Комментарии <i class="ico ico-comments"></i> <span class="b-freshnews_no">{{$gimme->article->comment_count}}</span></div>{{/if}}
		<div class="g-bjustify">Шрифт: <input type="button" title="Увеличить размер шрифта" class="ico ico-flit increaseFont" /> <input type="button" title="Нормальный размер шрифта" class="ico ico-fres resetFont" /> <input type="button" title="Уменьшить размер шрифта" class="ico ico-fbig decreaseFont" /></div>
		<span class="g-justifynewspaper"></span>
	</div>
	{{if $gimme->article->has_image(2)}}<div class="b-article_image"><img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" width="440" />{{if $gimme->article->image2->description!=""}}<span>{{$gimme->article->image2->description}}</span>{{/if}}</div>{{/if}}
	<div class="b-article_text">
    <div class="intro">{{$gimme->article->intro}}</div>
    <div class="full_text">{{$gimme->article->full_text|regex_replace:'#<blockquote>(.*)</blockquote>#s':'<div class="b-article_spravka m-navi_bgbottom"><span class="b-article_sprh">Справка &#171;Бресткого курьера&#187;</span>$1</div>'}}</div>
  </div>

	<!-- AddThis Button BEGIN -->
	<div class="addthis_toolbox addthis_default_style ">
		<a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e1b51d224cfb4f2" class="addthis_button_compact">Поделиться</a>
		<span class="addthis_separator">|</span>
		<a class="addthis_button_twitter"></a>
		<a class="addthis_button_facebook"></a>
		<a class="addthis_button_vk"></a>
	</div>
	<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e1b51d224cfb4f2"></script>
	<!-- AddThis Button END -->

</div>
{{include file="article-comments.tpl"}}
{{include file="article-more-items.tpl"}}
