{{ include file="slonim/_html-head.tpl" }}
<body>
<div id="wrapper">
{{ include file="slonim/_header.tpl" }}
  <div id="main" class="clearfix">
    <div class="column-1">

<div class="main-news clearfix">
<div class="wrapnews">
{{list_articles length="1" constraints="section is 80" ignore_issue="true"}}
          <div class="details">
<div class="title">Главная новость</div>
  <div class="meta">
  <span>{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span>
  <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
  <span>Автор {{ $gimme->article->Author->name }}</span>
  <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /><span>Комментарии ({{$gimme->article->comment_count}})</span>
  </div>
</div>
<div class="bgr"> 
  {{ if $gimme->article->has_image(2) }}
  <img class="main-pic" src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" width="200" />
  {{ /if }}
  <h1><a href="{{ uri }}">{{ $gimme->article->name }}</a></h1>
  <p>{{ $gimme->article->Intro }}</p>
</div>
{{ /list_articles }}
</div>
<div class="restnews">
<p class="title">Наиболее читаемые</p>
{{list_articles length="5" order="bypopularity desc" constraints="section is 80" ignore_issue="true"}}
<p><a href="{{ uri }}"><span>{{ $gimme->current_list->index }}.</span> {{ $gimme->article->name }}</a></p>
{{ /list_articles }}
</div>
</div>

<div class="other-news">
<div class="section-divider">
<p>Другие новости в рубрике {{ $gimme->section->name }}</p>
</div>
{{ list_articles constraints="section is 80" ignore_issue="true"}}
{{ if $gimme->current_list->index > 1 }}
{{ if $gimme->article->has_image(1) }}
<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" />
{{ /if }}
<p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }} <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> Автор {{ $gimme->article->Author->name }} <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> Комментарии ({{$gimme->article->comment_count}})</p>
<h2><a href="{{ uri }}">{{ $gimme->article->name }}</a></h2>
<p>{{ $gimme->article->intro }}</p>
{{ if !$gimme->current_list->at_end }}<div class="section-hr"><hr /></div>{{/if}}
{{/if}}
{{/list_articles}}
</div>

    </div>
    <div class="column-2">
{{ include file="slonim/right-1.tpl" }}
{{ include file="slonim/right-2.tpl" }}
    </div>
  </div>
{{ include file="slonim/_footer.tpl" }}
</div>
</body>
</html>
