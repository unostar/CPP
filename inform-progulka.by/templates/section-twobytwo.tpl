{{ list_articles length="1" ignore_issue="true" }}
    {{ assign var="top_sec_article" value=$gimme->article->number }}
{{ /list_articles }}

{{ list_articles length="10" ignore_issue="true" columns="2" constraints="number not $top_sec_article" }}
{{ if $gimme->current_articles_list->column == 1 }}
          <div class="twobytwo">
{{ /if }}  
              <div class="storydiv {{ if $gimme->current_articles_list->column == 1 }}left{{ else}}right{{ /if }}">
            
{{ list_article_images }}
    {{ if $gimme->current_article_images_list->at_end }}
        {{ if $gimme->current_article_images_list->index gt 2 }}  
        {{ assign var="image_count" value=$gimme->current_article_images_list->index-2 }}
        {{ /if }}
    {{ /if }} 
{{ /list_article_images }}

                  {{ if $gimme->article->has_image(1) }}<img alt="{{ $gimme->article->image1->description|escape }}" class="tmthumb left" src="{{ uri options="image 1" }}" />{{ /if }}
                  <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
                    <p class="introtext">{{ $gimme->article->intro|strip_tags:false|truncate:200 }}</p>
                    <div class="art-metadat"><p>{{ $gimme->article->author->name }}<img alt="." src="/templates/images/midplus.png" /> {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y %H:%S" }} 
                    {{ if $image_count gt 0 }}<img alt="." src="/templates/images/midplus.png" /><a class="something-count" href="{{ uri options="article" }}">{{ $image_count }}</a>{{ /if }}{{ if $gimme->article->comment_count gt 0 }}<a class="comment-count" href="">{{ $gimme->article->comment_count }}</a>{{ /if }}</p></div>
                </div><!-- /.storydiv {{ if $gimme->current_articles_list->column == 1 }}left{{ else}}right{{ /if }} -->
                
{{ if ($gimme->current_articles_list->column == 2)||($gimme->current_articles_list->at_end) }}             
            </div><!-- /.twobytwo -->
{{ /if }}             
            
   {{ if $gimme->current_articles_list->at_end }}
            <div id="pagination">
            
                    <div class="backandforw">
                      <p>{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uripath options="section" }}?{{ urlparameters options="previous_items" }} ">Назад</a>{{ else }}Назад{{ /if }}                  
                      
                      <img alt="." src="/templates/images/midplus.png" />
                      {{ if $gimme->current_list->has_next_elements }}<a href="{{ uripath options="section" }}?{{ urlparameters options="next_items" }}">Вперед</a>{{ else }}Вперед{{ /if }}</p>
                    </div><!-- /.backandforw -->

            </div><!-- /#pagination -->

   {{ /if }}            

{{ /list_articles }}  