              <div id="other-issues">
                <ul>
                
{{ list_issues length="20" constraints="number greater 1" order="bynumber desc"}}              
                
            <li><a href="{{ uri options="template archive-issue.tpl" }}">№ {{ $gimme->issue->number }} ({{ $gimme->issue->name }}) от {{ $gimme->issue->date|camp_date_format:"%e %M %Y" }}</a></li>
                    
   {{ if $gimme->current_list->at_end }}

                    <div class="backandforw">
                      <p>{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uri options="prev_items" }}">Назад</a>{{ else }}Назад{{ /if }}
                      <span class="middot">+</span>
                      {{ if $gimme->current_list->has_next_elements }}<a href="{{ uri options="next_items" }}">Вперед</a>{{ else }}Вперед{{ /if }}</p>
                    </div><!-- /.backandforw -->

   {{ /if }}
   
{{ /list_issues }}   
               </ul>
                    
              </div><!-- /#other-issues -->