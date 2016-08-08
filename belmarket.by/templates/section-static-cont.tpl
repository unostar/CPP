{{ set_default_article }}
<div class="home-column-middle">
  <div class="content-middle">
    <div class="content-article-page">
      <h2 class="top-news">{{ $gimme->article->name }}</h2><br/>
      <div class="service-links">
        <ul class="list-links">
          <li><a href="#" class="print">версия для печати</a></li>
          <li><a href="#" class="send">послать ссылку</a></li>
          {{ if $gimme->article->number== "41" }}
      <li><a href="{{ uri options="template subscribe-net.tpl" }}" target="_blank">форма для заказа рекламы на сайте</a></li>
      {{ /if }}
      {{ if $gimme->article->number== "40" }}
      <li><a href="{{ uri options="template subscribe-print.tpl" }}" target="_blank">форма для заказа рекламы в газете</a></li>
      {{ /if }}
      {{ if $gimme->article->number== "43" }}
      <li><a href="{{ uri options="template subscribe-pdf.tpl" }}">форма для подписки на pdf-версию</a></li>
      {{ /if }}
        </ul>
      </div>
      
      <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
      <div class="article-full">
      {{ if $gimme->article->has_image(2) }}
        <div class="img-div"><img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" style="width:255px;" align="right" alt="фото номера" border="0" /></div>
       {{ /if }}
        <p class="intro">{{ $gimme->article->Lead }}</p>
        <p>{{ $gimme->article->Article_text }}</p>
      </div>

   </div>
    
  </div>
</div>
