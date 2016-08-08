{{ set_section number="110" }}
{{ list_articles length="9" order="byPublishDate desc" }}
{{ if $gimme->article->has_image(100) }}
{{list_article_images length="1"}}
{{if $gimme->image->article_index > 99}}
<a href="{{uri options="article"}}" style="background:url({{uri options="image"}}&amp;ImageRatio=7) no-repeat center center;" title="{{$gimme->image->description}}" class="gallery"></a>
{{/if}}
{{ /list_article_images }}
{{/if}}
{{ /list_articles }}
{{ set_default_section }}