<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Брестская Газета" />
<meta name="description" content="Брестская Газета" />
<meta name="keywords" content="Брест, г. Брест, Брестская газета, брестская,  городская газета, брестчина,  Брестской области -  газеты, Беларусь, кинотеатры, погода, недвижимость, расписание поездов, расписание автобусов, вакансии городского центра занятости, работа вакансии, новости, афиша кинотеатров, фото,  интервью, справочное бюро, спорт, здоровье, Брэст, Бярэсце, Берасце, события, ДТП, авария, криминал, Берст" />
<title>Брестская Газета - {{ $gimme->article->name }}</title>
<link href="/templates/styles/print.css" rel="stylesheet" type="text/css" />
</head>
<body>
<img src="/templates/images/logo.gif" alt="" />
<p class="copy">Опубликовано в &quot;Брестской Газете&quot; (<span class="link">http://www.b-g.by</span>)<br/>
Выпуск: {{ $gimme->issue->name }}

<h1>{{ $gimme->article->name }}</h1>

<p class="byline">Автор: {{ $gimme->article->author->name }}<br/>
Опубликовано: {{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} г.</p>

    {{ if $gimme->article->has_image(2) }}
    <div class="imgfloater"><img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" /><p>{{ $gimme->article->image2->description }}</p></div>
    {{ /if }}

<p><strong>{{ $gimme->article->Intro }}</strong><br/><br/>
{{ $gimme->article->Full_text }}
</p>
<div class="notes"><p>Ваши заметки:</p>
<textarea cols="67" rows="7"></textarea></div>
<div class="footer">
<p><strong>www.b-g.by</strong> / URL источника: http://www.b-g.by{{ uri options="article"}}</p>
<p>© Copyright {{ $smarty.now|camp_date_format:"%Y" }} Брестская Газета</p>
</div>
</body>
</html>