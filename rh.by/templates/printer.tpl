{{ include file="_html_head.tpl" }}

<body  id="printer">

   <div id="logo">
      <img alt="Logo" src="/templates/images/logo-print.png" />&nbsp;&nbsp;&nbsp;Апублікавана ў "{{ $gimme->publication->name }}" (http://{{ $gimme->publication->site }})
   </div><!-- /#logo -->

<div class="clear"></div>

  <div class="story">
    <h1>{{ $gimme->article->name }}</h1>
{{ if $gimme->article->type_name == "A_text" }}
    <p class="uptitle">{{ local }}{{ list_article_topics }}{{ if !($gimme->topic->name == "front-4-stories") }}{{ $gimme->article->town }},{{ /if }}{{ /list_article_topics }}{{ /local }} Aўтар: {{ $gimme->article->author->name }}<br />{{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y. %H:%i" }}</p>
{{ /if }}

{{ if $gimme->article->image2 }}<img class="artimage" alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />
<p class="image-caption"><strong>{{ $gimme->article->image2->description }}</strong> - {{ $gimme->article->photo_description }}</p>{{ /if }}

{{ if $gimme->article->type_name == "A_text" }}
<p class="intro">{{ $gimme->article->intro }}</p>
{{ /if }}

{{ if $gimme->article->type_name == "A_text" }}
<p>{{ $gimme->article->full_text }}</p>
{{ else }}
<p>{{ $gimme->article->text }}</p>
{{ /if }}

<p id="em">Мае меркаваннi:</p>

<form action="post">
    <textarea cols="60" rows="10">Тут Вы можаце пакiнуць свае меркаваннi цi каменты</textarea>
</form>


</div><!-- /.story -->

<div id="footer">
<p><strong>{{ $gimme->publication->site }}</strong> / <span>Source URL: http://{{ $gimme->publication->site}}{{ uri options="article" }}<br />
© Copyright 2009 {{ $gimme->publication->name }}</span>
</div>

</body>
</html>