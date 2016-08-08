{{set_default_section}}
<!-- begin second column -->
          <div class="home-column-middle">
       <div class="content-middle">

{{ list_articles length="1" order="byNumber desc" }}
              {{ if $gimme->article->has_image(2) }}      
         <div class="top-news-section-left">
        <div class="content-section-left">
                          {{ assign var="n_article" value=$gimme->article->number }}
        <h2 class="top-news">{{ $gimme->section->name }}</h2>
        <h3 class="top-title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
        <p class="author"><a href="{{ uri options="template author-page.tpl" }}">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</a></p>
        <p>{{ $gimme->article->Lead }}</p>
                          <p>{{ $gimme->article->Related }}</p>
                          <div class="more"><a href="{{ uri options="article" }}">далее</a></div>
        </div>
        </div>
      
   <div class="top-news-section-right">
        <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" style="width:255px;" border="0" />
        <p class="author">{{ $gimme->article->image2->Photographer }}</p>
  </div>

{{ else }}
<div class="top-news-section-left" style="width:630px;">
        <div class="content-section-left">
                          {{ assign var="n_article" value=$gimme->article->number }}
        <h2 class="top-news">{{ $gimme->section->name }}</h2>
        <h3 class="top-title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
        <p class="author"><a href="{{ uri options="template author-page.tpl" }}">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</a></p>
        <p>{{ $gimme->article->Lead }}</p>
                          <p>{{ $gimme->article->Related }}</p>
                          <div class="more"><a href="{{ uri options="article" }}">далее</a></div>
        </div>
        </div>
{{ /if }} 
{{ /list_articles }}


{{ include file="section-banner-middle.tpl" }}


  <div class="rest_from_section">
        
{{ list_articles order="byNumber desc" }}
{{ if $gimme->current_list->at_beginning }}
<h3 class="poll">Другие статьи раздела &quot;{{ $gimme->section->name }}&quot;</h3>
{{ /if }}
{{ if ($gimme->article->number == $n_article ) }}
{{ else }}
    <div class="section-articles">
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author"><a href="{{ uri options="template author-page.tpl" }}">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</a></p>

{{ if $gimme->article->has_image(1) }}
  <div class="image-div"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" border="0"  align="left" /></div>
  {{ /if }}
  <p class="text" style="padding-top:12px;">{{ $gimme->article->Lead }}</p>
       {{ if $gimme->article->comments_enabled }}
       {{ assign var="flag1" value="0" }}
<div class="serv-link">
<a href="{{ uripath options="article" }}#comments-list">Комментарии {{ list_article_comments order="bydate asc"}}
{{ if $gimme->current_list->at_beginning }}
({{ $gimme->current_list->count }})
{{ assign var="flag1" value="1" }}
{{ /if }}
{{ /list_article_comments }}
{{ if $flag1 == "0" }}(0){{ /if }}
</a></div>
{{ /if }}
</div>
{{ /if }}
{{ /list_articles }}
</div>





{{ include file="section-cont-prev.tpl" }}
   
         </div>
        </div>
      <!-- end 3 from 3 -->
      <!-- end second column -->