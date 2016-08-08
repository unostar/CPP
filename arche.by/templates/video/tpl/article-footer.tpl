<footer>

<ul class="video-info">

{{list_article_authors}}
<li>{{$gimme->author->type}}: <a href="/{{$gimme->language->code}}/channel/author/?name={{$gimme->author->name|escape:'url'}}">{{$gimme->author->name}}</a></li>
{{/list_article_authors}}

<li>апублікавана: <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>

{{if $gimme->article->has_topics}}
<li class="topics">тэмы:
{{list_article_topics}}<a href="/{{$gimme->language->code}}/channel/topics/?topic={{$gimme->topic->name|escape}}">{{$gimme->topic->name}}</a>{{if !$gimme->current_list->at_end}}, {{/if}}{{/list_article_topics}}
</li>
{{/if}}

</ul><!-- .video-info -->

<p><div id="pd_rating_holder_5405311"></div></p>

<ul class="actions">
{{list_article_attachments length="1"}}
<li class="download"><a href="{{uri options="articleattachment"}}">Спампаваць гэтае відэа ({{$gimme->attachment->size_kb/1024|string_format:"%.2f"}}Mb)</a></li>
{{/list_article_attachments}}
<li class="alert"><a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=editorial&topic={{$gimme->article->number}} відэа не працуе" class="sendmail">Паведаміць пра тое, што відэа не працуе</a></li>
</ul><!-- .actions -->

</footer>
