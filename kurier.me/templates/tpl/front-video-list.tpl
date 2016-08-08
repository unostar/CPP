{{list_articles length="5" constraints="type is article has_video is on" ignore_section="true" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <section class="video">
{{list_article_attachments length="1"}}
    <div class="last-video">
      <a class="flowplayer" id="last-video" href="http://{{$gimme->publication->site}}/attachment/{{$gimme->attachment->identifier}}/{{$gimme->attachment->file_name|escape:'url'}}" data-link="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" data-name="{{$gimme->article->name|escape:'html'}}"></a>
    </div><!-- .last-video -->
{{/list_article_attachments}}
    <h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Видео{{else}}Video{{/if}}</span></h3>
    <ul>
{{/if}}
{{list_article_attachments length="1"}}
      <li><h2><a class="video-link" href="http://{{$gimme->publication->site}}/attachment/{{$gimme->attachment->identifier}}/{{$gimme->attachment->file_name|escape:'url'}}" data-link="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" data-name="{{$gimme->article->name|escape:'html'}}">{{$gimme->article->name}}</a></h2></li>
{{/list_article_attachments}}
{{if $gimme->current_list->at_end}}
    </ul>
  </section><!-- .video -->
{{/if}}
{{/list_articles}}