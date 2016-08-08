<section class="popular">
	<header>
		<h2>Папулярнае відэа</h2>
	</header>

	<div class="tabs">
		<ul class="tabs-labels">
			<li class="active"><a><span>ТОП-8 дня</span></a></li>
			<li><a><span>ТОП-8 тыдня</span></a></li>
			<li><a><span>ТОП-8 месяца</span></a></li>
		</ul><!-- .tabs-labels -->

		<div class="tabs-wrapper">

			<div class="tab tab-visible">
				<ul class="gallery-list">
{{assign var="xdate" value="-2 days"|date_format:"%Y-%m-%d"}}
{{list_articles length="8" columns="4" constraints="type is video publish_date greater $xdate" ignore_issue="true" ignore_section="true" order="byPopularity desc"}}
{{if $gimme->current_list->column==1}}
					<li class="block">
{{/if}}
						<div class="item">
							<figure class="image"><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 90 height 66"}}" alt="">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a></figure>
							<h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:50}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3>
						</div><!-- .item -->
{{if $gimme->current_list->column==4 || $gimme->current_list->at_end}}
					</li><!-- .block -->
{{/if}}
{{/list_articles}}
				</ul><!-- .gallery-list -->
				<a class="direction prev" title="Папярэднія">Папярэднія</a>
				<a class="direction next" title="Наступныя">Наступныя</a>
			</div><!-- .tab -->

			<div class="tab">
				<ul class="gallery-list">
{{assign var="xdate" value="-8 days"|date_format:"%Y-%m-%d"}}
{{list_articles length="8" columns="4" constraints="type is video publish_date greater $xdate" ignore_issue="true" ignore_section="true" order="byPopularity desc"}}
{{if $gimme->current_list->column==1}}
					<li class="block">
{{/if}}
						<div class="item">
							<figure class="image"><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 90 height 66"}}" alt="">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a></figure>
							<h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:50}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3>
						</div><!-- .item -->
{{if $gimme->current_list->column==4 || $gimme->current_list->at_end}}
					</li><!-- .block -->
{{/if}}
{{/list_articles}}
				</ul><!-- .gallery-list -->
				<a class="direction prev" title="Папярэднія">Папярэднія</a>
				<a class="direction next" title="Наступныя">Наступныя</a>
			</div><!-- .tab -->

			<div class="tab">

				<ul class="gallery-list">
{{assign var="xdate" value="-32 days"|date_format:"%Y-%m-%d"}}
{{list_articles length="8" columns="4" constraints="type is video publish_date greater $xdate" ignore_issue="true" ignore_section="true" order="byPopularity desc"}}
{{if $gimme->current_list->column==1}}
					<li class="block">
{{/if}}
						<div class="item">
							<figure class="image"><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 90 height 66"}}" alt="">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a></figure>
							<h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:50}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3>
						</div><!-- .item -->
{{if $gimme->current_list->column==4 || $gimme->current_list->at_end}}
					</li><!-- .block -->
{{/if}}
{{/list_articles}}
				</ul><!-- .gallery-list -->
				<a class="direction prev" title="Папярэднія">Папярэднія</a>
				<a class="direction next" title="Наступныя">Наступныя</a>
			</div><!-- .tab -->

		</div><!-- .tabs-wrapper -->
	</div><!-- .tabs -->
</section><!-- .popular -->
