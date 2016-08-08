{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{elseif !$page}}{{assign var="page" value="1"}}{{/if}}
{{assign var="author_const" value=$smarty.get.name|replace:' ':'\ '}}
{{if !$ajax}}<section class="author-page" id="section-content">{{/if}}

  <header>
    <h2>{{$gimme->section->name}}</h2>
  </header>

{{list_articles columns="12" constraints="author is `$author_const`" ignore_issue="true" ignore_section="true"}}
{{if $gimme->current_list->at_beginning}}
  <section class="about-author">
{{list_article_authors}}{{if $gimme->author->name == $smarty.get.name}}
    {{if $gimme->author->picture->defined}}<figure class="photo"><img src="{{$gimme->author->picture->imageurl}}" width="110" height="130" alt="{{$gimme->author->name|escape:'html'}}" /></figure>{{/if}}
    <h2>{{$gimme->author->name}}</h2>
    {{$gimme->author->biography->text|htmlspecialchars_decode}}
    <p class="write-to-author"><a href="mailto:{{$gimme->author->email|escape:'hex'}}">Напісаць аўтару</a></p>
  </section><!-- .about-author -->
{{/if}}{{/list_article_authors}}

  <header>
    <h3>Артыкулы аўтара:</h3>
  </header>

  <div class="search-results">
{{/if}}
{{if $gimme->current_list->row == $page}}
  <article class="article">
    <header class="article-header">
      <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3>
    </header><!-- .article-header -->
    <footer class="article-footer">
      <ul>
        <li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time></li>
        <li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="archeby-{{$gimme->article->number}}" class="comments-count"></a></li>
      </ul>
    </footer><!-- .article-footer -->
    <p class="lead">{{$gimme->article->intro|strip_tags:false|strip}} <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">далей &gt;&gt;</a></p>
  </article><!--.article -->
{{/if}}
{{if $gimme->current_list->at_end}}
  </div>
{{/if}}
{{/list_articles}}

{{list_articles columns="12" constraints="author is `$author_const`" ignore_issue="true" ignore_section="true"}}
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
      <li><a class="page" href="/{{$gimme->language->code}}/page/author/?page={{$gimme->current_list->row}}&name={{$smarty.get.name}}">{{$gimme->current_list->row}}</a></li>
    {{/if}}
  {{/if}}
  {{if $gimme->current_list->at_end}}
    </ol>
  </div><!-- .pagination -->
  {{/if}}
{{/if}}
{{/list_articles}}

{{if !$ajax}}</section><!-- .author-page -->{{/if}}