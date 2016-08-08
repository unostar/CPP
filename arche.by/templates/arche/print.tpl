<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Версія для друку: {{$gimme->publication->name}} - {{$gimme->article->name}}</title>
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
{{if $gimme->article->author->name}}
  <meta name="author" content="{{$gimme->article->author->name}}" />
{{/if}}
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
  <link rel="stylesheet" type="text/css" href="/templates/arche/css/print.css" />
</head>
<body>
<div class="header">
  <h1 class="logo"><img src="/templates/arche/img/logo.png" alt="Arche" /></h1>
  <h2>Апублікавана на мультымедыйным партале <b>Arche.by</b></h2>
  <p class="url"><a href="http://{{$gimme->publication->site}}">http://{{$gimme->publication->site}}</a></p>
</div><!-- .header -->
<div class="main">
  <h1>{{$gimme->article->name}}</h1>
  <p class="info">{{if $gimme->article->author->name}}{{$gimme->article->author->name}} | {{/if}}{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y %H:%i"}}</p>
{{if $gimme->article->has_image(2)}}
  <p><img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" /></p>
{{/if}}
  <div class="lead">{{$gimme->article->intro}}</div>
  {{$gimme->article->full_text}}
  <div class="my-comments">
    <h3>Мае каментары і заўвагі:</h3>
    <textarea cols="90" rows="10"></textarea>
  </div><!-- .my-comments -->
</div><!-- .main -->
<div class="footer">
  <p class="source"><a href="http://{{$gimme->publication->site}}">http://{{$gimme->publication->site}}</a> / Крыніца: <a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}">http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}</a></p>
  <p class="copyright">&copy;2008 {{$siteinfo.title}}, {{$siteinfo.description}}</p>
</div><!-- .footer -->
</body>
</html>