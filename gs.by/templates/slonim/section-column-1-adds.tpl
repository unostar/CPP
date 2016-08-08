      <div class="other-news">
{{ list_articles }}
        <p class="date" style="margin-top:10px">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }} 
        <h2 style="margin-bottom:4px;color: #004bc5;">{{ $gimme->article->name }}</h2>
        <p>{{ $gimme->article->intro }}</p>
{{ /list_articles }}
      </div>
<!-- end adds -->