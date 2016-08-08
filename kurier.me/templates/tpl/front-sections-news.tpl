{{list_articles length="3" constraints="type is article" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section class="section">
  <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
  <ul>
{{/if}}
{{if $gimme->current_list->index == 1}}
    <li>
      {{if $gimme->article->has_image(1)}}<p class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 220 height 110"}}" width="220" height="110" alt="{{$gimme->article->name|escape:'html'}}" /></a></p>{{/if}}
      <p class="time"><time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}}</time></p>
      <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
    </li>
{{else}}
    <li>
      <p class="time"><time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}}</time></p>
      <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
    </li>
{{/if}}
{{if $gimme->current_list->at_end}}
  </ul>
</section><!-- .section -->
{{/if}}
{{/list_articles}}
