{{include file="_html-head.tpl}}

<body id="print">
<div id="header">
  <img src="/templates/images/print_header.gif" alt="Ганцавіцкі час" />
  <div>Опубликовано в газете “Ганцавіцкі час” <a href="http://{{$gimme->publication->site}}">(http://{{$gimme->publication->site}})</a></div>
</div>
<div class="b-article">
  <a href="http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
  <div class="b-article_name">{{if $gimme->article->author->name}}{{$gimme->article->author->name}}{{else}}Ганцавіцкі час{{/if}} | {{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</div>
  {{if $gimme->article->has_image(1)}}<span class="b-article_img"><img src="{{uri options="image 1 50"}}" alt="{{$gimme->article->image1->description}}" width="250" /> {{$gimme->article->image1->description}}</span>{{/if}}
  <div class="b-article_pre">{{$gimme->article->intro}}</div>
  <div class="b-article_body">{{$gimme->article->full_text}}</div>
</div>
<form action="" class="mycomments"><fieldset><legend>Есть комментарии:</legend><textarea cols="1" rows="1"></textarea></fieldset></form>
<div id="footer">
  <a href="http://{{$gimme->publication->site}}">http://{{$gimme->publication->site}}</a> / источник URL: http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}<br />
  Copyright © Ганцавіцкі час, 2010. Все права защищены. При использовании материалов сайта ссылка на источник обязательна.
</div>
</body>
</html>