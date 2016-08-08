<section class="blogs">
  <header>
    <h2><a href="/{{$gimme->language->code}}/page/blog/">Блогі</a></h2>
  </header>
{{if $gimme->template->name == "arche/front.tpl"}}{{assign var="num" value=30}}{{else}}{{assign var="num" value=8}}{{/if}}
{{list_articles length=$num constraints="type is article section is 100" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <ul class="posts-list posts-list-visible">
{{/if}}
{{if $gimme->current_list->index == ($num/2+1) }}
  </ul><!-- .posts-list -->
  <ul class="posts-list">
{{/if}}
    <li>
{{if $gimme->article->has_image(1)}}
      <figure class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 50 height 50"}}" width="50" height="50" alt="{{$gimme->article->author->name}}"></a></figure>
{{/if}}
      <a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:'url'}}" class="author">{{$gimme->article->author->name}}</a>
      <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}} <span class="more">&gt;&gt;</span></a></h3>
    </li>
{{if $gimme->current_list->at_end}}
  </ul><!-- .posts-list -->
{{/if}}
{{/list_articles}}
  <ul class="blogs-directions">
    <li class="active"><a href="#" class="prev" title="Папярэднія">Папярэднія</a></li>
    <li><a href="#" class="next" title="Наступныя">Наступныя</a></li>
  </ul><!-- .blogs-directions -->
</section><!-- .blogs -->
