<section>
<header>
<h2>{{$gimme->section->name}}</h2>
<a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/" class="more">Усё відэа рубрыкі</a>
</header>

<article class="article">
<header>
<h1>{{$gimme->article->name}}</h1>
<ul>
<li>Праглядаў: {{$gimme->article->reads}}</li>
{{if $gimme->article->length}}<li>Працягласьць роліка: {{$gimme->article->length}}</li>{{/if}}
</ul>
</header>

<div class="video">
{{if $gimme->article->youtube}}
  <object width="640" height="360">
  <param name="movie" value="http://www.youtube.com/v/{{$gimme->article->youtube}}?version=3&amp;hl=ru_RU&amp;rel=0"></param>
  <param name="allowFullScreen" value="true"></param>
  <param name="allowscriptaccess" value="always"></param>
  <embed src="http://www.youtube.com/v/{{$gimme->article->youtube}}?version=3&amp;hl=ru_RU&amp;rel=0" type="application/x-shockwave-flash" width="640" height="360" allowscriptaccess="always" allowfullscreen="true"></embed>
  </object>
{{else}}
  {{list_article_attachments length="1"}}
  {{assign var="dir" value=$gimme->attachment->identifier/1000|string_format:"%04d"}}
    <a class="flowplayer" id="article-video" href="http://{{$gimme->publication->site}}/files/0000/{{$dir}}/{{$gimme->attachment->identifier|string_format:"%09d"}}.{{$gimme->attachment->extension}}"></a>
  {{/list_article_attachments}}
{{/if}}
{{include file="video/tpl/article-social-buttons.tpl"}}
</div>

<div class="text">{{$gimme->article->text}}</div>
{{include file="video/tpl/article-footer.tpl"}}
</article><!-- .article -->

<div class="comments" id="disqus_thread"></div>

<ul class="banners">
	<li><script>OA_show(150);</script></li>
	<li><script>OA_show(151);</script></li>
</ul><!-- .banners -->
</section>
