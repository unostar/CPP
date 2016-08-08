{{ list_articles length="9" columns="3" constraints="section is 210" ignore_issue="true" order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
<div class="recipes with-slider with-small-slider">
	<h3 class="title"><a href="{{ uri options="section" }}">Ресторанчик «БГ»</a></h3><!-- .title -->

	<div class="big-slide">
		<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(2) }}<img src="{{ uri options="image 2 width 200" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ /if }}</a>
		<div class="slide-description">
			<h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
			{{ if $gimme->article->author->name != "" }}<p class="author">Автор: {{ $gimme->article->author->name }}</p>{{ /if }}
		</div><!-- .slide-description -->
	</div><!-- .big-slide -->

	<div class="slider">
		<div class="slides">
{{ /if }}

		{{ if $gimme->current_list->column == 1 }}
			<div class="slide">
				<ul>
		{{ /if }}

					<li>
						<a href="{{ uri options="article" }}">{{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1 width 60" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 2 width 60" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ /if }}</a>
						<div class="slide-content">
							<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(2) }}<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ /if }}</a>
							<div class="slide-description">
								<h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
								{{ if $gimme->article->author->name != "" }}<p class="author">Автор: {{ $gimme->article->author->name }}</p>{{ /if }}
							</div><!-- .slide-description -->
						</div><!-- .slide-content -->
					</li>

		{{ if $gimme->current_list->column == 3 }}
				</ul>
			</div><!-- .slide -->
		{{ /if }}

{{ if $gimme->current_list->at_end }}
		</div><!-- .slides -->
	</div><!-- .slider -->
</div><!-- .recepies -->
{{ /if }}
{{ /list_articles }}