<hr />
<h3><a href="http://www.borisovnews.by/ru/1/?tpl=71" target="_blank" >Архив сайта.</a></h3>
<hr /><br/>
<div class="block-title">Подписка</div>
{{ set_section number="1" }}
{{ list_articles length="1" }}
<a rel="lightbox" class="cover-image" href="{{ uri options="image 1" }}" title="Печатное издание &laquo;Борисовские Новости&raquo;"><img src="{{ uri options="image 1 width 270 height 400" }}" alt="Печатное издание Борисовские Новости" /></a>
{{ /list_articles }}
{{ set_default_section }}

<div class="subscription-links">
  {{ set_issue number="1" }}
  {{ set_section number="400" }}
  <p class="date">Версия для печати издания</p>
  <h3>Подписка на печатные издания</h3>
  <a href="{{ uri options="section" }}">Вы можете подписаться на получение печатной версии издания по почте</a>
<hr />
  {{ set_section number="420" }}
  <p class="date pdf">PDF издания</p>
  <h3>Подписка на PDF издания</h3>
  <a href="{{ uri options="section" }}">Вы можете подписаться на получение электронной версии издания в формате PDF</a>
  <a href="{{ uri options="section" }}" class="more">Подробнее о подписке &rsaquo;&rsaquo;</a>
</div>

{{set_default_issue}}
{{set_default_section}}