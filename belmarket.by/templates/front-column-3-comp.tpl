<h3 style="clear:right; margin:10px 0 0 0;">Новости компаний</h3>
<div class="list-articles">
{{set_section number="230"}}
{{list_articles length="5" order="bypublishdate desc"}}
<p class="br-article"><a href="{{uri options="article"}}">{{$gimme->article->Lead}}</a><br/>
<span class="name_comp">{{$gimme->article->Company_name}}</span></p>
{{ /list_articles }}
<div class="all"><a href="{{uri options="section"}}" target="_self">Все новости</a></div>
{{set_default_section}}
</div><!-- /.list-articles -->
