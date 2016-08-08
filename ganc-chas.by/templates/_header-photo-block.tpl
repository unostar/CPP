{{list_articles length="7" constraints="photo_block is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-newslenta bg-diag g-clean photos-block">
<div>
{{/if}}
<a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 100 height 75"}}" alt="{{$gimme->article->name}}" {{* title="{{$gimme->article->intro|strip_tags}}" *}}width="100" /></a>
{{if $gimme->current_list->at_end}}
</div>
<p class="photos-block-description"></p>
</div>
{{/if}}
{{/list_articles}}