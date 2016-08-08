<div id="article-gallery">

              {{ list_article_images }}
                 {{ if $gimme->current_list->index gt 2 }}
                  <div class="artgal left">
    <a class="enlarge" href="{{ $gimme->article->image->imageurl }}"><img alt="{{ $gimme->article->image->description }}{{ if $gimme->article->image->photographer }} — Фото: {{ $gimme->article->image->photographer }}{{ /if }}" src="{{ $gimme->article->image->thumbnailurl }}" /></a>
                  </div>
                 {{ /if }}
              {{ /list_article_images }} 

</div><!-- /#article-gallery -->