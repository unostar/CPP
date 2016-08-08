{{list_articles length="4" constraints="issue is 1 section is 440"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-navigray st-mb30">
  <div class="b-bheader_gray"><span><b>арт-галерея</b></span></div>
	<div id="art-gallery" class="b-artgallery">
	<!-- items -->
{{/if}}
{{if $gimme->article->has_image(1)}}
	<a href="#" class="header{{if $gimme->current_list->at_beginning}} first{{/if}}">{{$gimme->article->image1->description}} {{$gimme->article->name}}</a>
	<div><img src="{{uri options="image 1"}}&ImageRatio=50" alt="{{$gimme->article->image1->description}} {{$gimme->article->name}}" width="245" /></div>
{{/if}}
{{if $gimme->current_list->at_end}}
	<!-- //items -->
	</div>
	<a href="{{uri options="section"}}" class="a-linebullet">Смотреть еще</a>
</div>
{{/if}}
{{/list_articles}}
