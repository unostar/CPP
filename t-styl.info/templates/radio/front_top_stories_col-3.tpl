<div class="col-3">
  <p class="home-title">Чытай</p>
  {{ set_publication identifier="1" }}
  {{ set_current_issue }}
  {{ set_section number="1"}}
    {{ list_articles length="12" ignore_issue="true" order="bypublishdate desc" }}
      <p><a href="{{ url }}">{{ $gimme->article->name }}</a></p>
      {{ if !$gimme->current_list->at_end }}<div class="hr-home"><hr /></div>{{ /if }}
    {{ /list_articles }}
  {{ set_default_publication }}
  {{ set_deault_issue }}
</div>
