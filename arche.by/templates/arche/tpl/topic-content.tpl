{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}
{{if !$ajax}}<section class="section" id="section-content">{{/if}}
{{set_default_topic}}
  <header>
    <h2>{{$gimme->section->name}}{{if $gimme->topic->defined}} - &#8220;{{$gimme->topic->name}}&#8221;{{/if}}</h2>
  </header>
{{list_articles length="120" columns="12" ignore_issue="true" ignore_section="true" constraints="type is article topic is `$gimme->topic->identifier`"}}
{{if $gimme->current_list->row == $page}}
  <article class="article">
    {{if $gimme->article->has_image(1)}}<figure class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 130 height 95"}}" width="130" height="95" alt="{{$gimme->article->name|escape:'html'}}" /></a></figure>{{/if}}
    <div class="article-wrapper">
      <header class="article-header">
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3>
      </header><!-- .article-header -->
      <footer class="article-footer">
        <ul>
          <li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time></li>
          {{if $gimme->article->author->name!=""}}<li><a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:'url'}}" class="author">{{$gimme->article->author->name}}</a></li>{{/if}}
          <li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="archeby-{{$gimme->article->number}}" class="comments-count"></a></li>
        </ul>
      </footer><!-- .article-footer -->
      <p class="lead">{{$gimme->article->intro|strip_tags:false|strip}} <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">далей &gt;&gt;</a></p>
    </div><!-- .article-wrapper -->
  </article><!--.article -->
{{/if}}
{{/list_articles}}

{{list_articles length="120" columns="12" ignore_issue="true" ignore_section="true" constraints="type is article topic is `$gimme->topic->identifier`"}}
{{if $gimme->current_list->count > 12}}
  {{if $gimme->current_list->at_beginning}}
  <div class="pagination">
    <h3>Старонкі:</h3>
    <ol>
  {{/if}}
  {{if $gimme->current_list->column == 1}}
    {{if $gimme->current_list->row==$page}}
      <li class="active">{{$gimme->current_list->row}}</li>
    {{else}}
      <li><a class="page" href="/{{$gimme->language->code}}/page/topic/?page={{$gimme->current_list->row}}&tpid={{$gimme->topic->identifier}}">{{$gimme->current_list->row}}</a></li>
    {{/if}}
  {{/if}}
  {{if $gimme->current_list->at_end}}
      {{if $gimme->current_list->has_next_elements}}<li><a href="/{{$gimme->language->code}}/page/{{if $page+1 > $gimme->current_list->row}}archive/" class="more"{{else}}topic/?page={{$page+1}}&tpid={{$gimme->topic->identifier}}" class="page more"{{/if}}>далей &gt;&gt;</a></li>{{/if}}
    </ol>
  </div><!-- .pagination -->
  {{/if}}
{{/if}}
{{/list_articles}}
{{unset_topic}}
{{if !$ajax}}</section><!-- .section -->{{/if}}