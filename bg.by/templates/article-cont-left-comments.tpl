<div class="articlecomments">
<div class="title">Комментарии<a class="eula">Правила комментирования</a></div>

<div class="eula" style="display:none">
<p>Уважаемые читатели!</p>
<p>На сайте действует премодерация. Это значит, что ваш комментарий будет опубликован только после проверки его модератором. Ваше сообщение будет опубликовано, если оно не содержит:</p>
<ul>
<li>ненормативной лексики</li>
<li>личных оскорблений или негативных высказываний в адрес других посетителей форума или иных лиц</li>
<li>ссылок на определенные страницы в интернете</li>
<li>рекламы товаров или услуг, адресов или телефонов и т.п.</li>
<li>призывы к насилию</li>
</ul>
<p>Администрация сайта оставляет за собой право не публиковать комментарии без объяснения причин.</p>
<p>Администрация сайта не несет ответственности за содержание комментариев. Мнение автора комментария может не совпадать с мнением редакции.</p>
</div>

<div id="disqus_thread"></div>
<script type="text/javascript">
var disqus_shortname = 'b-g';
var disqus_identifier = 'b-g-{{$gimme->article->number}}';
var disqus_url = '{{url options="article"}}';
(function() {
  var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
  dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();
(function () {
  var s = document.createElement('script'); s.async = true;
  s.type = 'text/javascript';
  s.src = 'http://disqus.com/forums/' + disqus_shortname + '/count.js';
  (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());
</script>

{{ list_article_comments order="bydate asc"}}
<p class="comment-author">{{ $gimme->comment->reader_email }}</p>
<p class="comment-text">{{ $gimme->comment->content }}</p>
<p class="comment-data">{{ $gimme->comment->submit_date|camp_date_format:"%d/%m %Y, %H:%i" }}</p>
{{ /list_article_comments }}

</div>
