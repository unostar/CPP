<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Общественно - политический еженедельник. Борисовские Новости. http://www.borisovnews.by/. ЧПУП « Букас медиа-центр ». Наша жизнь. События и люди. Культура. Спорткалейдоскоп.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Общественно-политический еженедельник. Борисовские Новости. http://www.borisovnews.by/. ЧПУП «Букас медиа-центр». Демократия. Оппозиция. Власть. Наша жизнь. События и люди. Культура. Спорткалейдоскоп." />
<meta name="keywords" content="Общественно-политический еженедельник. Борисовские Новости. http://www.borisovnews.by/. ЧПУП «Букас медиа-центр». Демократия. Оппозиция. Власть. Наша жизнь. События и люди. Культура. Спорткалейдоскоп." />
<meta name="generator" content="" />
<meta name="robots" content="all" />
<meta name="revisit-after" content="1 days" />
<link href="/templates/styles/reset.css" rel="stylesheet" type="text/css" />
<link href="/templates/styles/print.css" rel="stylesheet" type="text/css" />
</head>
<body id="printer">
<div id="print-logo">
<img src="/templates/images/print-logo.gif" alt="Логотип Борисовские Новости" title="Борисовские Новости"/>
<p><b>{{ $gimme->issue->name }}</b>{{ $gimme->issue->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
</div>
<p class="uptitle">Опубликовано в издании &quot;Борисовские новости&quot; <span>(http://{{ $gimme->publication->site}})</span></p>
<h1>{{ $gimme->article->name }}</h1>
<p class="uptitle">{{ if $gimme->article->author->name != "" }}Автор: {{ $gimme->article->author->name }}<br/>{{ /if }}Создана: {{ $gimme->issue->publish_date|camp_date_format:"%e %M %Y" }}</p><br/>
{{ if $gimme->article->has_image(2) }}<div class="print-img"><img src="{{ uri options="image 2" }}" width="375px" alt="{{ $gimme->article->image2->description }}" />
{{ if $gimme->article->image2->description !== "" }}<p class="description">{{ $gimme->article->image2->description }}</p>{{ /if }}
</div>
{{ /if }}
<div class="intro"><b>{{ $gimme->article->intro }}</b></div>
<div class="full-text">{{ $gimme->article->full_text }}</div>
<hr />
<p class="em">Мои комментарии:</p>
<form action="post">
    <textarea cols="60" rows="10">Здесь Вы можете оставить свои комментарии или заметки</textarea>
</form>

<div id="footer">
<p><span>borisovnews.by</span>&nbsp;/ /  Source URL: http://{{ $gimme->publication->site}}/{{ $gimme->issue->number }}/{{ $gimme->section->number }}/{{ $gimme->article->number }}<br/>
© 2007—2009 ЧПУП «Букас медиа-центр»</p>
</div>
</body>
</html>