<meta name="description" content="Твой стыль (Гродна) — он-лайн навiны, новости из Гродно, wiadomosci z Grodno, news from Hrodna"/>
<meta name="keywords" content="новости, комментарии, вести, рубрики, блоги, статья, экономика, политика, факты, Беларусь, Гродно, навiны, Гродна, Grodno, палітыка, эканоміка, трэці сектар, журналісты, журналистика, политика, культура, стыль жыцця, стиль, адукацыя, образование, падарожжы, мультимедиа, мультымедыя" />
<meta name="robots" content="all" />
<meta name="copyright" content="Tvoy styl" />
<META name="y_key" content="1fe25c36775d0eb4">
<link href="/templates/newspaper/styles/reset.css" rel="stylesheet" type="text/css" />
<link href="/templates/newspaper/styles/tstyl.css?v=20111018" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script type="text/javascript" src="/templates/newspaper/javascript/chrome.js"></script>
<script type="text/javascript" src="/templates/newspaper/javascript/functions.js"></script>
<link rel="stylesheet" type="text/css" href="/templates/newspaper/javascript/calendar/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="/templates/newspaper/javascript/calendar/calendar.css" />
<script type="text/javascript" src="/templates/newspaper/javascript/calendar/yahoo-dom-event.js"></script>
<script type="text/javascript" src="/templates/newspaper/javascript/calendar/calendar-min.js"></script>
<script type="text/javascript" src="/templates/newspaper/javascript/mp/swfobject.js"></script>
<link rel="alternate" type="application/rss+xml" title="Твой стыль - RSS усiх артыкулаў сайта" href="http://t-styl.info/index.rss" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Навіны" href="http://www.t-styl.info/index.rss?id=1" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - З месца" href="http://www.t-styl.info/index.rss?id=10" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Вір жыцця" href="http://www.t-styl.info/index.rss?id=20" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Гарадзенскі погляд" href="http://www.t-styl.info/index.rss?id=30" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Правінцыйны рэпартаж" href="http://www.t-styl.info/index.rss?id=40" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Абмяркуем" href="http://www.t-styl.info/index.rss?id=50" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Пагляд" href="http://www.t-styl.info/index.rss?id=60" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Культурыстыка" href="http://www.t-styl.info/index.rss?id=70" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - ProСпорт" href="http://www.t-styl.info/index.rss?id=80" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - У кадры" href="http://www.t-styl.info/index.rss?id=90" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - СтылёвыЯ аўтары" href="http://www.t-styl.info/index.rss?id=100" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Ёсць справа!" href="http://www.t-styl.info/index.rss?id=110" />
<link rel="alternate" type="application/rss+xml" title="Твой стыль - Падарожжа" href="http://www.t-styl.info/index.rss?id=120" />

{{if $gimme->article->defined}}
  <meta property="og:title" content="{{$gimme->article->name|escape:'html':'utf-8'}}" />
  <meta property="og:description" content="{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}" />
  <meta property="og:url" content="http://t-styl.info{{ uri options="article" }}" />
  <meta property="og:type" content="article" />
  {{if $gimme->article->has_image(2)}}<meta property="og:image" content="{{$gimme->article->image2->imageurl}}" />
  {{/if}}
{{/if}}
  <meta property="og:site_name" content="Твой стыль" />
  <meta property="fb:page_id" content="44794004498" />
  <meta property="fb:admins" content="1045538670" />
  
  {{if $gimme->article->defined}}
  {{* Кнопка «Мне нравится» — В Контакте *}}
  <script type="text/javascript" src="http://userapi.com/js/api/openapi.js?23"></script>
  <script type="text/javascript">VK.init({apiId: 2278226, onlyWidgets: true});</script>
  {{* Кнопка «Я рекомендую» — Facebook *}}
  <script src="http://connect.facebook.net/be_BY/all.js#xfbml=1"></script>
  {{* Twitter *}}
  <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
  {{/if}}