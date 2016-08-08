{{include file="_html-head.tpl"}}
<body id="print">
  <div id="header">
    <img src="/templates/images/print-logo.jpg" alt="Магілёўскі час" />
    <div><strong>http://{{$gimme->publication->site}}</strong><span class="b-article_name">{{if $gimme->article->author->name!=""}}<strong>{{$gimme->article->author->name}}</strong> | {{/if}}{{$gimme->article->publish_date|camp_date_format:"%d %M %Y"}}</span></div>
  </div>
  <div class="b-article">
    {{if $gimme->article->has_image(2)}}<span class="b-article_img"><img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description|escape}}" {{if $gimme->article->image2->photographer}}title="Фота: {{$gimme->article->image2->photographer|escape}}"{{/if}} width="310" height="230" />{{if $gimme->article->image2->description!=""}}{{$gimme->article->image2->description|escape}}{{/if}}</span>{{/if}}
    <h1 class="header-article">{{$gimme->article->name}}</h1>
    <div class="b-article_pre">{{$gimme->article->intro}}</div>
    <div class="b-article_body">{{$gimme->article->full_text|regex_replace:'#<blockquote>(.*)</blockquote>#msi':'<div class="quote"><img src="/templates/images/blockquote.png" alt="Справка" width="31" height="26" />$1<b class="g-bg bg-article-funcs-lt"></b><b class="g-bg bg-article-funcs-lb"></b><b class="g-bg bg-article-funcs-rt"></b><b class="g-bg bg-article-funcs-rb"></b></div>'}}</div>
  </div>
<form class="mycomments"><fieldset><legend>Мае каментары:</legend><textarea cols="1" rows="1"></textarea></fieldset></form>  
<div id="footer">
  <a href="http://{{$gimme->publication->site}}">Gorad.by</a> / крыніца URL: http://{{$gimme->publication->site}}/by/page/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}<br />
  Copyright &copy; Gorad.by, 2010. Усе правы абаронены. Пры выкарыстанні матэрыялаў сайта спасылка на крыніцу абавязковая.
</div>
</body>
</html>
