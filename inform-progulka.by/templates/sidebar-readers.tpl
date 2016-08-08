            <div class="full-sbdiv">
              <img alt="СЛОВО - ЧИТАТЕЛЮ" src="/templates/images/readers-title.png" />  
                <div id="readers">

                <h3><a href="{{ local }}{{ set_issue number="1" }}{{ set_section number="901" }}{{ uri options="section" }}{{ /local }}">ФОТО ЧИТАТЕЛЕЙ</a></h3>
                
                {{ local }}
                {{ set_section number="205" }}          
                      {{ list_articles length="2" constraints="type is readersphotos" ignore_issue="true" }}
                  <div class="readers-photo {{ if $gimme->current_articles_list->index == 1 }}left{{ else }}right{{ /if }}">
                      <a class="enlarge" href="{{ $gimme->article->image->imageurl }}"><img alt="{{ $gimme->article->name }}" src="{{ uri options="image 1 height 73" }}" /></a>
                    </div><!-- /.readers-photo -->
                      {{ /list_articles }}

                    <div class="clear"></div>   
                  {{ set_section number="200" }}             
                  <h3><a href="{{ uri options="section" }}">ПОЭЗИЯ. ПРОЗА</a></h3>
                  {{ list_articles  length="3" ignore_issue="true" }}
                    <p>{{ $gimme->article->author->name }} <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
                  {{ /list_articles }}
                  
                  <div class="clear"></div>   
                  {{ set_section number="207" }}             
                  <h3><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></h3>
                  {{ list_articles length="3" ignore_issue="true" }}
                    <p>{{ $gimme->article->author->name }} <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
                  {{ /list_articles }}
                  
                {{ /local }}
                </div><!-- /#readers -->
            </div><!-- /.full-sbdiv -->