              <div id="last-issue">
{{ local }}
{{ set_current_issue }}              
{{ list_sections constraints="number smaller 200" }}
{{ list_articles }}
{{ if $gimme->current_articles_list->at_beginning }}              
                <h2>{{ $gimme->section->name }}</h2>
                    <ul>
{{ /if }}                    
                      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ if $gimme->current_articles_list->at_end }}    
                    </ul>
{{ /if }}                                      
{{ /list_articles }}
{{ /list_sections }}
{{ /local }}
              </div><!-- last-issue -->
