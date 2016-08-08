<div class="full-sbdiv">
              <img alt="СЛОВО - ЧИТАТЕЛЮ" src="/templates/images/family-title.png" />  
                <div id="readers">
                {{ local }}
                
                    <div class="clear"></div>   
                  {{ set_section number="240" }}             
                  <h3><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></h3>
                  {{ list_articles  length="2" ignore_issue="true" }}
                    {{ if $gimme->article->has_image(1) }}<img alt="{{ $gimme->article->image1->description }}" class="tmthumb left" src="{{ uri options="image 1" }}" />{{ /if }}
                    <p>{{ $gimme->article->author->name }} <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
                  {{ /list_articles }}
                  
                  <div class="clear"></div><br/>
                  {{ set_section number="250" }}             
                  <h3><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></h3>
                  {{ list_articles length="2" ignore_issue="true" }}
                    {{ if $gimme->article->has_image(1) }}<img alt="{{ $gimme->article->image1->description }}" class="tmthumb left" src="{{ uri options="image 1" }}" />{{ /if }}
                    <p>{{ $gimme->article->author->name }} <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
                  {{ /list_articles }}

                   <div class="clear"></div><br/>  
                   {{ set_section number="260" }}             
                  <h3><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></h3>
                  {{ list_articles length="3" ignore_issue="true" }}
                    <p>{{ $gimme->article->author->name }} <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
                  {{ /list_articles }}
                  
                {{ /local }}
                </div><!-- /#readers -->
            </div><!-- /.full-sbdiv -->