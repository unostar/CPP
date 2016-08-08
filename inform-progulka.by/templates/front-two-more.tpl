<div id="twomore">

{{ list_articles length="4" columns="2" ignore_issue="true" ignore_section="true" constraints="onfrontpage is on onsection is off" order="bypublishdate desc" }}

              <div class="storydiv {{ if $gimme->current_list->column == 1 }}left{{ else }}right{{ /if }}">
                  {{ if $gimme->article->image1 }}<img alt="{{ $gimme->article->image1->description }}" class="tmthumb left" src="{{ uri options="image 1" }}" />{{ /if }}
                  {{ if $gimme->article->has_video }}<div><img alt="video" src="/templates/images/videoicon.png" /></div>{{ /if }}               
                  
                  <p><a href="{{ uri options="article" }}" title="{{ $gimme->article->intro|strip_tags:false }}">{{ $gimme->article->name }}</a> {{ if $gimme->article->comment_count gt 0 }}<a class="comment-count" href="">{{ $gimme->article->comment_count }}</a>{{ /if }}</p>
               </div><!-- /.storydiv {{ if $gimme->current_list->index == 1 }}left{{ else }}right{{ /if }} -->

{{ /list_articles }}
 
                <div class="clear"></div>              
            </div><!-- /#twomore -->