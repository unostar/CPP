<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>INTEX-PRESS Online - белорусские новости, события, обозрения - {{ $gimme->article->name }}</title>
<meta name="keywords" content="belarus,news,events,politics,Беларусь,события,обозрения, новости,политика,экономика,Минск" />
</head>
<body>
<img src="/templates/images/logo.gif" alt="intex logo" />
<h1>{{ $gimme->article->name }}</h1>
<p>{{ $gimme->article->intro }}</p>
<p>{{ $gimme->article->full_text }}</p>
</body>
</html>