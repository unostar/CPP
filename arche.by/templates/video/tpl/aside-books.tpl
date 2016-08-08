{{local}}
{{set_publication identifier="2"}}
{{set_issue number="1"}}
{{set_section number="10"}}
<section class="books">
	<header>
		<h2><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">Кнігарня ARCHE</a></h2>
	</header>
{{list_articles length="8" columns="4" constraints="section is 10" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
	<ul class="books-list">
{{/if}}
{{if $gimme->current_list->column==1}}
		<li class="shelf{{if $gimme->current_list->at_beginning}} shelf-visible{{/if}}">
{{/if}}

			<div class="book">
				<a href="{{uri options="image 2"}}" class="cover"><img src="{{uri options="image 1 width 67 height 100"}}" alt="{{$gimme->article->name|escape}}"></a>
				<h3><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3>
				<ul class="actions">
					<li><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">Увесь зьмест &gt;&gt;</a></li>
					<li><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/buy/">Купіць on-line &gt;&gt;</a></li>
				</ul><!-- .actions -->
			</div><!-- .book -->

{{if $gimme->current_list->column==4 || $gimme->current_list->at_end}}
		</li><!-- .shelf -->
{{/if}}
{{if $gimme->current_list->at_end}}
	</ul><!-- .books-list -->
  <ul class="books-directions">
  	<li class="active"><a href="#" class="prev" title="Папярэднія 4 кнігі">Папярэднія 4 кнігі</a></li>
  	<li><a href="#" class="next" title="Наступныя 4 кнігі">Наступныя 4 кнігі</a></li>
  </ul><!-- .books-directions -->
{{/if}}
{{/list_articles}}
	<p>Перайсьці ў <a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">кнігарнЮ arche >></a></p>
</section><!-- .books -->
{{/local}}
