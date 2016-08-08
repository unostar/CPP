              <div id="gazeta-luninecki">
{{ local }}
{{ set_section number="320" }}              
{{ list_articles length="10" ignore_issue="true" order="bypublishdate desc" }}
             
                <h2>{{ $gimme->article->name }}</h2>
                <ul>  
                    <li><a href="{{ uri options="image 1" }}">посмотреть титульный лист</a></li>
                    {{ list_article_attachments }}
                    <li><a href="{{ uri options="articleattachment" }}">скачать PDF-версию ({{ $gimme->attachment->size_kb }}kb)</a></li>
                    {{ /list_article_attachments }}  
                </ul>

   {{ if $gimme->current_list->at_end }}

                    <div class="backandforw">
                      <p>{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uri options="prev_items" }}">Назад</a>{{ else }}Назад{{ /if }}
                      <span class="middot">+</span>
                      {{ if $gimme->current_list->has_next_elements }}<a href="{{ uri options="next_items" }}">Вперед</a>{{ else }}Вперед{{ /if }}</p>
                    </div><!-- /.backandforw -->

   {{ /if }}

{{ /list_articles }}
{{ /local }}
              </div><!-- /#gazeta-luninecki -->
