
<div class="home-column-middle">
  <div class="content-middle">
    <div class="content-article-page">
      <h2 class="top-news">{{ $gimme->section->name }}</h2><br/>
      <div class="service-links">
        <ul class="list-links">
          <li><a href="#" class="print">версия для печати</a></li>
          <li><a href="#" class="send">послать ссылку</a></li>
        </ul>
      </div>
      {{ list_articles }}
      <h3 class="top-title-article"><a href="{{ uri options="article" }}" style="font-size:16px; text-decoration:underline;">{{ $gimme->article->name }}</a></h3>
      {{ /list_articles }}
            
   </div>
    
  </div>
</div>

