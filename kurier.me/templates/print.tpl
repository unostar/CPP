{{php}}header('X-UA-Compatible: IE=edge,chrome=1');{{/php}}
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>{{$gimme->publication->name}} - {{$gimme->article->name}}</title>
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
{{if $gimme->article->author->name}}
  <meta name="author" content="{{$gimme->article->author->name}}" />
{{/if}}
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
	<!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->
	<link rel="stylesheet" type="text/css" href="/templates/style/main.css" />
	<!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="/templates/style/ie.css" /><![endif]-->
	<!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="/templates/style/ie7.css" /><![endif]-->
	<link rel="stylesheet" type="text/css" href="/templates/style/add.css" />
</head>
<body id="print">
	<header class="header">
		<h1 class="logo"><a href="/{{$gimme->language->code}}/"><img src="/templates/img/logo.png" width="375" height="69" alt="{{if $gimme->language->code=="ru"}}Витебский курьер{{else}}Vitebsk courier{{/if}}"></a></h1><!-- .logo -->
		<p class="url"><small><a href="http://{{$gimme->publication->site}}/">http://{{$gimme->publication->site}}</a></small></p><!-- .url -->
	</header><!-- .header -->
	<article class="article">
		<h1>{{$gimme->article->name}}</h1>
		<img src="{{uri options="image 1"}}" alt="{{$gimme->article->name|escape:'html'}}" class="main-image" />
		<div class="intro">{{$gimme->article->intro}}</div>
		<div class="full_text">{{$gimme->article->full_text}}</div>
		<footer>
			<p class="date"><time pubdate datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00"}}">{{$gimme->article->publish_date|date_format:"%H:%M | %d.%m.%Y"}}</time></p><!-- .date -->
{{list_article_authors}}
			<p class="author">{{$gimme->author->type}}: <b>{{$gimme->author->name}}</b></p><!-- .author -->
{{/list_article_authors}}
		</footer>
	</article><!-- .article -->
	<footer class="footer">
		<p class="source">{{if $gimme->language->code=="ru"}}Источник{{else}}Source{{/if}}: <a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}">http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}</a></p><!-- .source -->
	</footer><!-- .footer -->
</body>
</html>