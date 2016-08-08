{{set_default_section}}
<div class="home-column-middle">
   <div class="content-middle">
{{ list_articles length="1" order="byNumber desc" constraints="OnFrontPage is on OnSection is off" }}
    <div class="application">
          <div class="application-title">
            <h1>{{ $gimme->section->name }}</h1>
     </div>
        <div class="application-right">
                          {{ assign var="n_article" value=$gimme->article->number }}
        <p class="author"><a href="{{ uri options="template author-page.tpl" }}">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</a></p>
        <p class="author" style="float:right;clear:right;width:100px;text-align:right;">{{ $gimme->issue->publish_date|camp_date_format:"%d.%m.%y" }}</p>
        </div>
  </div>
       <div class="application">
{{ if $gimme->article->has_image(1) }}
        <img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" border="0" style="width:100px;" align="left" />
{{ /if }}
        <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p><br/>
        <p class="text">{{ $gimme->article->Lead }}</p>
                          <p class="text">{{ $gimme->article->Article_text }}</p>
       </div>
{{ /list_articles }}


{{ include file="section-banner-middle.tpl" }}

  <div class="rest_from_section">
        <h3 class="poll">Другие статьи раздела &quot;{{ $gimme->section->name }}&quot;</h3>
{{ list_articles order="byNumber desc" }}
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
         <div class="serv-link"><a href="{{ uri options="article" }}">Комментарии          {{ list_article_comments order="bydate asc"}}
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

{{ include file="section-appl-cont-prev.tpl" }}
   </div>
</div>