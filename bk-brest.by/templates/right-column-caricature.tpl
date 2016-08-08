{{list_articles length="1" constraints="issue is 1 section is 430"}}
{{if $gimme->article->has_image(1)}}
<div class="b-navigray b-carikatura"><div class="b-bheader_gray"><span><b>хит-карикатура</b></span></div>
  <div class="b-caricatura_body">
		<img src="{{uri options="image 1"}}" alt="{{$gimme->article->name}}{{if $gimme->article->author->name}} Автор - {{$gimme->article->author->name}}{{/if}}" width="245" />
	</div>
	<a href="{{uri options="section"}}" class="a-linebullet">Смотреть еще</a>
</div>
{{/if}}
{{/list_articles}}
