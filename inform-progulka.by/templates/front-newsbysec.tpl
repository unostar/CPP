  <div id="secstor"><img alt="news by sec - title" src="/templates/images/newsbysec-title.png" /></div>
          <div class="nbs-column left">
          
{{ list_sections constraints="number smaller_equal 61" }}          
          
              <div class="section-stories">
                <h3><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></h3>
                
{{ list_articles length="3" ignore_issue="true" }}   

{{ if ($gimme->current_articles_list->index == 1) }}             
    {{ if $gimme->article->has_image(1) }}  
{{ list_article_images }}
    {{ if $gimme->current_article_images_list->at_end }}
        {{ if $gimme->current_article_images_list->index gt 2 }}  
        {{ assign var="image_count" value=$gimme->current_article_images_list->index-2 }}
        {{ /if }}
    {{ /if }} 
{{ /list_article_images }}                  
                   <div class="imaged">
                        <a title="{{ $gimme->article->image1->description|strip_tags:true }}" href="{{ uri options="article" }}"><img class="justathumb" alt="{{ $gimme->article->image1->description|strip_tags:true }}" src="{{ uri options="image 1" }}" /></a>
                        <p><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro|strip_tags:false }}">{{ $gimme->article->name }} {{ if $image_count gt 0 }}<span class="something-count">{{ $image_count }}</span>{{ /if }}{{ if $gimme->article->has_video }}<img class="hasvideo" alt="video icon" src="/templates/images/videoicon.png" />{{ /if }}</a></a></p>
                        <div class="clear"></div>
                   </div>
{{ assign var="image_count" value=0 }}                   
                   
    {{ else }}    
                  <h5><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro }}">{{ $gimme->article->name }}{{ if $gimme->article->has_video }} <img class="hasvideo" alt="video icon" src="/templates/images/videoicon.png" />{{ /if }}</a></h5>
    {{ /if }}                
{{ else }}    
                  <h5><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro }}">{{ $gimme->article->name }}{{ if $gimme->article->has_video }} <img class="hasvideo" alt="video icon" src="/templates/images/videoicon.png" />{{ /if }}</a></h5>
{{ /if }}   
{{ /list_articles }}
               
                </div><!-- /.section-stories -->
{{ /list_sections }}                
                
          </div><!-- /.nbs-column left -->
            
          <div class="nbs-column right">
          
{{ list_sections constraints="number greater 61 number smaller 200" }}          
          
              <div class="section-stories">
                <h3><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></h3>
                
{{ list_articles length="3" ignore_issue="true" }}   

{{ if ($gimme->current_articles_list->index == 1) }}             
    {{ if $gimme->article->has_image(1) }}  
{{ list_article_images }}
    {{ if $gimme->current_article_images_list->at_end }}
        {{ if $gimme->current_article_images_list->index gt 2 }}  
        {{ assign var="image_count" value=$gimme->current_article_images_list->index-2 }}
        {{ /if }}
    {{ /if }} 
{{ /list_article_images }}                  
                   <div class="imaged">
                        <a title="{{ $gimme->article->image1->description|strip_tags:true }}" href="{{ uri options="article" }}"><img class="justathumb" alt="{{ $gimme->article->image1->description|strip_tags:true }}" src="{{ uri options="image 1" }}" /></a>
                        <p><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro|strip_tags:false }}">{{ $gimme->article->name }} {{ if $image_count gt 0 }}<span class="something-count">{{ $image_count }}</span>{{ /if }}{{ if $gimme->article->has_video }}<img class="hasvideo" alt="video icon" src="/templates/images/videoicon.png" />{{ /if }}</a></a></p>
                        <div class="clear"></div>
                   </div>
{{ assign var="image_count" value=0 }}                   
                   
    {{ else }}    
                  <h5><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro|strip_tags:false }}">{{ $gimme->article->name }}{{ if $gimme->article->has_video }} <img class="hasvideo" alt="video icon" src="/templates/images/videoicon.png" />{{ /if }}</a></h5>
    {{ /if }}                
{{ else }}    
                  <h5><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro|strip_tags:false }}">{{ $gimme->article->name }}{{ if $gimme->article->has_video }} <img class="hasvideo" alt="video icon" src="/templates/images/videoicon.png" />{{ /if }}</a></h5>
{{ /if }}   
{{ /list_articles }}
               
                </div><!-- /.section-stories -->
                
{{ /list_sections }}
              
            </div><!-- /.nbs-column right -->            
            
            <div class="clear"></div>