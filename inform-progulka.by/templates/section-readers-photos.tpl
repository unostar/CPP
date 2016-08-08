{{ include file="_html-head.tpl" }}

<body id="section">

{{ include file="header.tpl" }}

		<div id="maincont1" class="wrap backgrounded">

			<div id="left-nav" class="left">

{{ include file="left-nav.tpl" }}

{{ include file="left-scroll.tpl" }}

{{ include file="_banner160x400.tpl" }}

				</div><!-- /#left-nav -->	 

				<div id="section-name" class="right"><p>ФОТО ЧИТАТЕЛЕЙ</p></div>

				<div id="topstoryblock">

					<div id="readers-photos">

					{{if $smarty.get.page}}
						{{assign var="page" value=$smarty.get.page}}
					{{else}}
						{{assign var="page" value="1"}}
					{{/if}}

					{{ local }}
					{{ list_articles columns="15" constraints="section is 205" ignore_issue="true" }}
						{{ if $gimme->current_list->at_beginning }}
							<ul>
						{{ /if }}

						{{if $gimme->current_list->row == $page}}
							{{ list_article_images }}

								<li><a class="enlarge photo" href="{{ $gimme->article->image->imageurl }}"><img alt="{{ $gimme->article->image->description }}{{ if $gimme->article->image->photographer }} — Фото: {{ $gimme->article->image->photographer }}{{ /if }}" src="{{ uri options="image 1 height 80" }}" /></a>
								<p class="description">{{ $gimme->article->image->description }}{{ if $gimme->article->image->photographer }} — Автор: {{ $gimme->article->image->photographer }}{{ /if }}</p>
								</li>

							{{ /list_article_images }}
						{{ /if }}

						{{ if $gimme->current_list->at_end }}
							</ul>
						{{ /if }}
					{{ /list_articles }}


					{{ list_articles columns="15" constraints="section is 205" ignore_issue="true" }}
						{{if $gimme->current_list->count > 15}}
							{{if $gimme->current_list->at_beginning}}<ul class="readers-photos-pagination">{{/if}}

							{{if $gimme->current_list->column == 1}}

								{{if $gimme->current_list->row == $page}}
									<li>{{$gimme->current_list->row}}</li>
								{{else}}
									<li><a href="{{ local }}{{ set_default_issue }}{{ set_default_section }}{{ uri options="section" }}{{ /local }}?page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a></li>
								{{/if}}

							{{/if}}

							{{if $gimme->current_list->at_end}}</ul>{{/if}}
						{{/if}}
					{{ /list_articles }}


					{{ /local }}
					<div class="clear"></div>
					</div><!-- /#readers-photos -->

				</div><!-- /#topstoryblock -->

			<div class="sidebar right">

{{ include file="sidebar-weamon.tpl" }}

{{ include file="sidebar-most.tpl" }}

					<div id="calban">

{{ include file="sidebar-calendar.tpl" }}

{{ include file="_banner125x250.tpl" }}

								<div class="clear"></div>
						</div><!-- /#calban -->

{{ include file="sidebar-uvazeni.tpl" }}

{{ include file="sidebar-poll.tpl" }}

{{ include file="sidebar-service.tpl" }}

				</div><!-- /.sidebar -->

		</div><!-- /.wrap /.backgrounded -->

{{ include file="footer.tpl" }}

</body>
</html>