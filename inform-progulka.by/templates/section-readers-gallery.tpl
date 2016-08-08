            <div id="readers-gallery">

            {{ list_articles }}
            
            <div class="readgal-desc">
            <h2>{{ $gimme->article->author->name }}</h2>
            </div><!-- /.readgal-desc -->
            
              {{ list_article_images }}
                          
                  <div class="artgal left">
    <a class="enlarge" href="{{ $gimme->article->image->imageurl }}"><img alt="{{ $gimme->article->image->description }}" src="{{ $gimme->article->image->thumbnailurl }}" /></a>
                  </div>
              {{ /list_article_images }} 
                        
            {{ /list_articles }}
            <div class="clear"></div>
            </div><!-- /#readers-gallery --> 