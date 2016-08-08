<div class="main-news clearfix">
        <div class="wrapnews">
{{ list_articles length="1" }}
          <div class="details">
            <div class="title">Главная новость</div>
            <div class="meta">
<span>{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span>
<img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
<span>Автор {{ $gimme->article->Author->name }}</span>
 <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /><span>Комментарий 
{{ list_article_comments }}
     {{ if $gimme->current_list->at_beginning }}
({{ $gimme->current_list->count }})
     {{ /if }}
{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}
(0)
{{ /if }}
</span>    
</div>
          </div>
          <div class="bgr"> 
            {{ if $gimme->article->has_image(2) }}
            <img class="main-pic" src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" width="200" />
            {{ /if }}
            {{ if $gimme->section->number == 180 }}
            <h1>{{ $gimme->article->name }}</h1>
            {{ else }}
            <h1><a href="{{ uri }}">{{ $gimme->article->name }}</a></h1>
            {{ /if }}
            <p>{{ $gimme->article->Intro }}</p>
          </div>
{{ /list_articles }}
        </div>
        <div class="restnews">
          <p class="title">Наиболее читаемые</p>
{{ list_articles length="5" order="bypopularity desc" }}
          <p><a href="{{ uri }}"><span>{{ $gimme->current_list->index }}.</span> {{ $gimme->article->name }}</a></p>
{{ /list_articles }}
        </div>
      </div>