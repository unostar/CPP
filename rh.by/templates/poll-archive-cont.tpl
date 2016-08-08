<div id="leftbar">

<div class="type-o-cont">Архіў апытанняў</div>

{{ list_polls name="polls_list" length="10" order='bylastmodified ASC' }}

<div class="story">
   <h3><a href="{{ uri options="template poll.tpl" }}&amp;f_poll_nr={{ $gimme->poll->number }}&amp;f_poll_language_id={{ $gimme->poll->language_id }}">{{ $gimme->poll->name }}</a></h3>

   <p class="intro">Дата пачатку: {{ $gimme->poll->date_begin|date_format }}<br />
                    Дата спынення: {{ $gimme->poll->date_end|date_format }}<br />
                    Дазволенае: {{ if $gimme->poll->is_current }} Так {{ else }} Не {{ /if }}<br />
                    Галасоў карыстача / усяго галасоў: {{ $gimme->poll->votes_per_user }}/{{ $gimme->poll->user_vote_count }}<br />
                    Агульная колькасць галасоў: {{ $gimme->poll->votes }}</p>
</div><!-- /.story -->

   {{ if $gimme->current_list->at_end }}

      <div id="prevnext">

      {{ if $gimme->current_list->has_previous_elements }}
         <span><a href="{{ uri options="prev_items" }}">Папярэдняя</a></span>
      {{ else }}
         <span>Папярэдняя</span>
      {{ /if }}
      <span>|</span>
      {{ if $gimme->current_list->has_next_elements }}
         <span><a href="{{ uri options="next_items" }}">Наступная</a></span>
      {{ else }}
         <span>Наступная</span>
      {{ /if }}

      </div><!-- /#prevnext -->

   {{ /if }}

{{ /list_polls }}        

</div><!-- /#leftbar -->