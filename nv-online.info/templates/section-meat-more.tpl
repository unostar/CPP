<div class="meat-item">
<div class="right-list">
<p class="jasche">Яшчэ з гэтай рубрыкі</p>
<ul>
{{list_articles length="30" ignore_issue="true" }}
{{ if $gimme->current_articles_list->index > 20 }}
<li{{if $gimme->current_articles_list->at_end}} class="last"{{/if}}><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->source_title == "Народная Воля"}}&nbsp;&nbsp;<img alt="НВ" src="/templates/images/mark_nv.png" />{{/if}}</li>
{{/if}}
{{/list_articles}}
</ul>
</div>
</div><!-- /.meat-item -->
