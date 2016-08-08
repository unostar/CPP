{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}

{{if !$ajax}}<section class="section article-full-page" id="section-content">{{/if}}

<header><h2>{{$gimme->section->name}}</h2></header>
<article class="article-full">

{{list_articles length="150" columns="15" ignore_issue="true" constraints="type is anekdot" order="bypublishdate desc"}}
{{if $gimme->current_list->row == $page}}
    <p><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time></p>
    <p>{{$gimme->article->text}}</p>
{{/if}}
{{/list_articles}}

<aside class="gallery"><h3>Карыкатуры</h3><ul>
{{list_articles length="150" columns="15" ignore_issue="true" constraints="type is caricatura" order="bypublishdate desc"}}
{{if $gimme->current_list->row == $page}}
  {{list_article_images length="1"}}
    <li><a class="cover" rel="image_gallery" href="{{uri options="image"}}" title="{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}{{if $gimme->article->author->name!=""}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Аўтар: {{$gimme->article->author->name}}{{/if}}"><img src="{{uri options="image width 130 height 95"}}" width="130" height="95" alt="{{$gimme->article->name|escape:'html'}}" /></a></li>
  {{/list_article_images}}
{{/if}}
{{/list_articles}}
</ul></aside><!-- .gallery -->
  
</article><!-- .article-full -->

{{list_articles length="150" columns="15" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->count > 15}}
  {{if $gimme->current_list->at_beginning}}
  <div class="pagination">
    <h3>Старонкі:</h3>
    <ol>
  {{/if}}
  {{if $gimme->current_list->column == 1}}
    {{if $gimme->current_list->row==$page}}
      <li class="active">{{$gimme->current_list->row}}</li>
    {{else}}
      <li><a class="page" href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/?page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a></li>
    {{/if}}
  {{/if}}
  {{if $gimme->current_list->at_end}}
      {{if $gimme->current_list->has_next_elements}}<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/?page={{$page+1}}" class="page more">далей &gt;&gt;</a></li>{{/if}}
    </ol>
  </div><!-- .pagination -->
  {{/if}}
{{/if}}
{{/list_articles}}

{{if !$ajax}}</section><!-- .section -->{{/if}}