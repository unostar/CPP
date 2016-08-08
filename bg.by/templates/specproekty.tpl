<!-- Specproekty -->
{{local}}
{{ set_current_issue }}
{{unset_topic}}
<div class="box-305">

<div class="top"><div><img src="/templates/images/box-logo.gif" alt="" /><p style="float:left;margin:0 0 0 40px;">Спецпроекты &quot;БГ&quot;</p></div></div>

<div class="center-content clearfix">

{{ list_articles length="1" constraints="section is 1" }}
{{ if $gimme->article->has_image(1) }}
  <div class="img"><a href="{{ uri options="image 2" }}" rel="lightbox"><img src="{{ uri options="image 1" }}" alt="Титульный лист печатного издания &#0171;Брестская газета&#0187;" border="0" width="128" /></a></div>
{{ /if }}
{{ /list_articles }}

{{ list_articles length="1" constraints="section is 300" }}
  <p><a href="{{ uri options="article" }}">Назад в СССР</a><span>О чем писала советская пресса</span></p>
{{ /list_articles }}

{{ list_articles length="1" constraints="section is 310" }}
  <p><a href="{{ uri options="article" }}">Брестская афиша</a><span>Афиша кинотеатров, театров города Бреста</span></p>
{{ /list_articles }}

{{ list_articles length="1" constraints="section is 320" }}
  <p><a href="{{ uri options="article" }}">{{$gimme->article->name}}</a>{{list_article_attachments}}<span>{{$gimme->attachment->description}}</span>{{/list_article_attachments}}</p>
{{ /list_articles }}

{{ list_articles length="1" constraints="issue is 1 section is 330" }}
  <p class="no-border"><a href="{{ uri options="article" }}">{{$gimme->section->name}}</a><span>{{$gimme->article->name}}</span></p>
{{ /list_articles }}

{{ list_articles length="1" constraints="section is 1" }}<p class="no-border"><a href="{{ uri options="section" }}">Архив PDF версий издания</a></p>{{/list_articles}}

</div>

<div class="bottom"><span></span></div>

</div>
{{/local}}
<!-- Specproekty end-->
