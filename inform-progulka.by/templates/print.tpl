<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" media="screen, projection" href="/templates/styles/screen.css" />

  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="generator" content="" />
  
  <title>{{ $gimme->article->name }} | Прогулка</title>

</head>

<body id="print">
  <div id="header">
    <img src="/templates/images/logo-print.png" alt="ПРОГУЛКА" />
    <div class="right">
      <h2><span>Опубликовано на сайте издания</span><br />
         “Информ-прогулка”</h2>
      <a href="/">http://{{ $gimme->publication->site }}</a>
    </div>
  </div><!-- /#header -->
  
            <div id="article-itself">
            
 <h1>{{ $gimme->article->name }}</h1>
 <div class="art-metadat"><p>{{ $gimme->article->author->name }} | {{ $gimme->article->publishdate|camp_date_format:"%e.%m.%Y %H:%i" }}</p></div>
                            
 {{ if $gimme->article->has_image(2) }}            
              <div class="article-image">
                 <img alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />
                    {{ if !($gimme->article->image2->description == "") }}
                  {{ /if }}
                </div><!-- /.article-image -->
    <p class="image-caption">{{ $gimme->article->image2->description }}
                    {{ if !($gimme->article->image2->photographer == "") }}<br /><span>Фото:</span> {{ $gimme->article->image2->photographer }}{{ /if }}</p>                
  {{ /if }}
           
                <div class="pe-div">{{ $gimme->article->full_text }}</div>
</div><!-- /#article-itself -->

<form>
  <fieldset>
    <legend>Мои комментарии и записи:</legend>
    <textarea cols="1" rows="1"></textarea>
  </fieldset>
</form>  

<div id="footer">
  <a href="http://{{$gimme->publication->site}}">http://{{$gimme->publication->site}}</a> / URL: http://{{ $gimme->publication->site }}{{ uri }}<br />
Copyright © 2010 
</div>
</body>
</html>