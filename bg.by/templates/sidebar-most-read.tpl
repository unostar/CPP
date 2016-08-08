<div class="most-read tabs with-slider">
	<ul class="tabs-labels">
		<li class="current"><a href="">Новости</a></li>
		<li><a href="">Самые читаемые</a></li>
	</ul><!-- .tabs-labels -->

	<div class="tab current">

{{ list_articles length="12" columns="4" constraints="section is 10" ignore_issue="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->at_beginning }}
		<div class="slider">
			<div class="slides">
	{{ /if }}

			{{ if $gimme->current_list->column == 1 }}
				<div class="slide">
					<ul>
			{{ /if }}

						<li>
							<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1 width 60" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 2 width 60" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ /if }}</a>
							<h4 class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h4>
						</li>

			{{ if $gimme->current_list->column == 4 }}
					</ul>
				</div><!-- .slide -->
			{{ /if }}

	{{ if $gimme->current_list->at_end }}
			</div><!-- .slides -->
		</div><!-- .slider -->
	{{ /if }}
{{ /list_articles }}

	</div><!-- .tab -->

	<div class="tab">

{{ list_articles length="12" columns="4" constraints="type is Article section greater 19 section smaller 300 issue greater `$gimme->issue->number-5`" order="bypopularity desc" }}
	{{ if $gimme->current_list->at_beginning }}
		<div class="slider">
			<div class="slides">
	{{ /if }}

			{{ if $gimme->current_list->column == 1 }}
				<div class="slide">
					<ul>
			{{ /if }}

						<li>
							<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1 width 60" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 2 width 60" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ /if }}</a>
							<h4 class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h4>
						</li>

			{{ if $gimme->current_list->column == 4 }}
					</ul>
				</div><!-- .slide -->
			{{ /if }}

	{{ if $gimme->current_list->at_end }}
			</div><!-- .slides -->
		</div><!-- .slider -->
	{{ /if }}
{{ /list_articles }}

	</div><!-- .tab -->

</div><!-- .most-read -->