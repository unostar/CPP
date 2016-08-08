<div class="main-news clearfix">
<div class="wrapnews">
{{ list_articles length="1" constraints="OnFrontPage is on OnSection is on" order="bypublishdate desc"}}
<div class="details">
  <div class="title">Главная новость</div>
  <div class="meta">
    <span>{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span>
    <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
    <span>Автор {{ $gimme->article->author->name }}</span>
    <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
    <span>Комментарий ({{$gimme->article->comment_count}})</span>
  </div>
</div>
<div class="bgr">
  {{ if $gimme->article->has_image(2) }}<img class="main-pic" src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" width="450" />{{ /if }}
  <h1><a href="{{ uri }}">{{ $gimme->article->name }}</a></h1>
  <p>{{ $gimme->article->Intro|strip_tags:false }}</p>
</div>
{{ /list_articles }}
</div>
<div class="restnews">
  <div style="margin-bottom:10px;"><a href="http://www.gs.by/ru/149/subscribe/"><img src="/templates/slonim/images/1.gif" alt="logo" border="0" /></a></div>
  <p class="title">Наиболее читаемые</p>
{{ list_articles length="6" constraints="section not 2" order="bypopularity desc" }}
  <p><a href="{{ uri }}"><span>{{ $gimme->current_list->index }}.</span> {{ $gimme->article->name }}</a></p>
{{ /list_articles }}
</div>
</div>