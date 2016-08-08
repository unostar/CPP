<section class="books">
  <div class="books-header">
    <h2>Кнігарня ARCHE</h2>

    <ul class="actions">
      <li><a href="/{{$gimme->language->code}}/page/books/?tpid=41">АКЦЫІ, РАCПРОДАЖ &gt;&gt;</a></li>
      <li><a href="/{{$gimme->language->code}}/page/buy/">падпісацца &gt;&gt;</a></li>
      <li><a href="/{{$gimme->language->code}}/page/buy/">купіць on-line &gt;&gt;</a></li>
      <li><a href="/{{$gimme->language->code}}/page/buy/">купіць у распаўсюджвальнікаў &gt;&gt;</a></li>
    </ul><!-- .actions -->
  </div><!-- .books-header -->

  <ul class="books-list">
{{assign var="pagination" value=""}}
{{list_articles length="15" columns="3" constraints="section is 10" ignore_issue="true"}}
{{if $gimme->current_list->column==1}}{{assign var="pagination" value="`$pagination`<li><a href=\"\">`$gimme->current_list->row`</a></li>"}}
    <li class="shelf">
{{/if}}
      <div class="book">
        <a href="{{uri options="image 2"}}" class="cover"><img src="{{uri options="image 1 width 67 height 100"}}" alt="{{$gimme->article->name|escape}}"></a>
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3>
        <ul class="actions">
          <li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">Увесь зьмест &gt;&gt;</a></li>
          <li><a href="/{{$gimme->language->code}}/page/buy/">Купіць on-line &gt;&gt;</a></li>
        </ul><!-- .actions -->
      </div><!-- .book -->
{{if $gimme->current_list->column==3 || $gimme->current_list->at_end}}
    </li><!-- .shelf -->
{{/if}}
{{/list_articles}}
  </ul><!-- .books-list -->

  <ul class="pagination">
    {{$pagination}}
  </ul><!-- .pagination -->

  <a href="" class="direction prev" title="Папярэднія">Папярэднія</a>
  <a href="" class="direction next" title="Наступныя">Наступныя</a>
</section><!-- .books -->
