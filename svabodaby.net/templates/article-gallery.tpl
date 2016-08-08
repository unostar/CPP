{{if $gimme->article->has_image(100)}}
<div class="artgal">
{{ list_article_images }}      
{{if $gimme->article->image->article_index > 99}}          
<a rel="example_group" class="example4" href="{{ $gimme->article->image->imageurl }}" style="background: url({{uri options="image"}}&ImageRatio=25) no-repeat center center">{{*<img alt="{{ $gimme->article->image->description }}" src="{{ $gimme->article->image->thumbnailurl }}" />*}}</a>
{{/if}} 
{{ /list_article_images }}                  
</div>
{{/if}}  
         