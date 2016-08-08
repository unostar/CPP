{{list_articles length="4" constraints="section is 100" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-maincontent">
	<h2 class="header-block"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i"><a href="/by/page/{{$gimme->section->url_name}}">Кансультацыя</a> <a href="/by/page/letter" title="Задаць сваё пытанне"><i class="header-ico header-ico-comment"></i></a></span></h2>
	<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
		<!-- Тело -->
		<div class="b-maincontent-n-i">
			<ul class="list-linkarrow">
{{/if}}
				<li><h3>
					<a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><span class="list-linkarrow-i">{{$gimme->article->name|escape:'html'}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}</span>{{if $gimme->article->comment_count}}<span class="c-preview-comments"><i class="ico"></i>{{$gimme->article->comment_count}}</span>{{/if}}</a>
				</h3></li>
{{if $gimme->current_list->at_end}}
			</ul>
		</div>
		<!-- //тело -->
	</div></div></div>
	<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
{{/if}}
{{/list_articles}}
