      <div class="other-news">
        <div class="section-divider">
          <p>Другие новости в рубрике {{ $gimme->section->name }}</p>
        </div>
{{ list_articles }}
{{ if $gimme->current_list->index == 1 }}
{{ else }}
        {{ if $gimme->article->has_image(1) }}
          <img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" />
          {{ /if }}
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }} <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> Автор {{ $gimme->article->Author->name }} <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> Комментарий {{ list_article_comments }}
     {{ if $gimme->current_list->at_beginning }}
({{ $gimme->current_list->count }})
     {{ /if }}
{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}
(0)
{{ /if }}</p>
        <h2><a href="{{ uri }}">{{ $gimme->article->name }}</a></h2>
        <p>{{ $gimme->article->intro }}</p>
{{ if $gimme->current_list->at_end }}
{{ else }}
        <div class="section-hr">
          <hr/>
        </div>
{{ /if }}
{{ /if }}
{{ /list_articles }}
      </div>
<!-- end other section news -->