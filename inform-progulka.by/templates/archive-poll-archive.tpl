              <div id="poll-archive">
{{ list_polls name="polls_list" length="5" order='bylastmodified ASC' }}

<div class="story">
   <h2><a href="{{ uri options="template poll.tpl" }}&amp;f_poll_nr={{ $gimme->poll->number }}&amp;f_poll_language_id={{ $gimme->poll->language_id }}">{{ $gimme->poll->name }}</a></h2>
   <ul>
       <li>Дата пачатку: {{ $gimme->poll->date_begin|date_format }}</li>
       <li>Дата спынення: {{ $gimme->poll->date_end|date_format }}</li>
       <li>Дазволенае: {{ if $gimme->poll->is_current }} Так {{ else }} Не {{ /if }}</li>
       <li>Галасоў карыстача / усяго галасоў: {{ $gimme->poll->votes_per_user }}/{{ $gimme->poll->user_vote_count }}</li>
       <li>Агульная колькасць галасоў: {{ $gimme->poll->votes }}</li>
   </ul>
</div><!-- /.story -->

   {{ if $gimme->current_list->at_end }}

                    <div class="backandforw">
                      <p>{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uri options="prev_items" }}">Назад</a>{{ else }}Назад{{ /if }}
                      <span class="middot">+</span>
                      {{ if $gimme->current_list->has_next_elements }}<a href="{{ uri options="next_items" }}">Вперед</a>{{ else }}Вперед{{ /if }}</p>
                    </div><!-- /.backandforw -->

   {{ /if }}

{{ /list_polls }}
              </div><!-- /#poll-archive -->  