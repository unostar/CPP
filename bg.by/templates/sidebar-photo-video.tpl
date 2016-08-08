<div class="photo-video tabs with-slider with-small-slider">
	<ul class="tabs-labels">
		<li class="current"><a href="">Видео</a></li>
		<li><a href="">Фото</a></li>
	</ul><!-- .tabs-labels -->

	<div class="tab current">

{{ list_articles length="9" columns="3" constraints="has_video is on" ignore_section="true" ignore_issue="true" order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}

		<div class="big-slide">
			<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(2) }}<img src="{{ uri options="image 2 width 200" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ /if }}</a>
			<div class="slide-description">
				<a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>
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
								<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(2) }}<img src="{{ uri options="image 2 width 200" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ /if }}</a>
								<div class="slide-description">
									<a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>
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
	{{ /if }}
{{ /list_articles }}

	</div><!-- .tab -->

	<div class="tab">

{{ list_articles length="9" columns="3" constraints="has_photo is on" ignore_section="true" ignore_issue="true" order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}

		<div class="big-slide">
			<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(100) }}<img src="{{ uri options="image 100 width 200" }}" alt="{{ $gimme->article->image100->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ /if }}</a>
			<div class="slide-description">
				<a href="{{ uri options="article" }}">{{ if $gimme->article->has_image(100) }}{{ $gimme->article->image100->description }}{{ if $gimme->article->image100->photographer }} (Фото: {{ $gimme->article->image100->photographer }}){{ /if }}{{ else }}{{ $gimme->article->image1->description }}{{ if $gimme->article->image1->photographer }} (Фото: {{ $gimme->article->image1->photographer }}){{ /if }}{{ /if }}</a>
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
							<a href="{{ uri options="article" }}">{{ if $gimme->article->has_image(100) }}<img src="{{ uri options="image 100 width 60" }}" alt="{{ $gimme->article->image100->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 2 width 60" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ /if }}</a>
							<div class="slide-content">
								<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(100) }}<img src="{{ uri options="image 100 width 200" }}" alt="{{ $gimme->article->image100->description|replace:'"':'' }}" />{{ else }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ /if }}</a>
								<div class="slide-description">
									<a href="{{ uri options="article" }}">{{ if $gimme->article->has_image(100) }}{{ $gimme->article->image100->description }}{{ if $gimme->article->image100->photographer }} (Фото: {{ $gimme->article->image100->photographer }}){{ /if }}{{ else }}{{ $gimme->article->image1->description }}{{ if $gimme->article->image1->photographer }} (Фото: {{ $gimme->article->image1->photographer }}){{ /if }}{{ /if }}</a>
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
	{{ /if }}
{{ /list_articles }}

	</div><!-- .tab -->
</div><!-- .photo-video tabs -->