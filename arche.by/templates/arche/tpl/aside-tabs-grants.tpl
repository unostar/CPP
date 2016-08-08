<section class="tabs tabs-second">
{{list_sections constraints="number greater_equal 130 number smaller_equal 140"}}
{{if $gimme->current_list->at_beginning}}
  <ul class="tabs-labels">
{{/if}}
    <li{{if $gimme->current_list->at_beginning}} class="active"{{/if}}><h2><a>{{$gimme->section->name|replace:"і ":"і<br />"}}</a></h2></li>
{{if $gimme->current_list->at_end}}
  </ul><!-- .tabs-labels -->
{{/if}}
{{/list_sections}}

{{list_articles length="4" constraints="type is article section is 130" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <div class="tab tab-visible">
    <ul class="articles-list">
{{/if}}
      <li>
{{if $gimme->article->has_image(1)}}
        <figure class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 58"}}" width="58" alt="{{$gimme->article->name}}" /></a></figure>
{{/if}}
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}} <span class="more">&gt;&gt;</span></a></h3>
      </li>
{{if $gimme->current_list->at_end}}
    </ul><!-- .articles-list -->
    <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" class="read-more">Чытаць болей</a>
  </div><!-- .tab -->
{{/if}}
{{/list_articles}}

{{list_articles length="4" constraints="type is article section is 140" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <div class="tab">
    <ul class="articles-list">
{{/if}}
      <li>
{{if $gimme->article->has_image(1)}}
        <figure class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 58"}}" width="58" alt="{{$gimme->article->name}}" /></a></figure>
{{/if}}
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}} <span class="more">&gt;&gt;</span></a></h3>
      </li>
{{if $gimme->current_list->at_end}}
    </ul><!-- .articles-list -->
    <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" class="read-more">Чытаць болей</a>
  </div><!-- .tab -->
{{/if}}
{{/list_articles}}

</section><!-- .tabs tabs-second -->
