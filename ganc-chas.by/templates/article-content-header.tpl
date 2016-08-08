<div class="b-main header-huge">
  Рубрика “{{$gimme->section->name}}”
  <div class="b-services">
    <div class="b-services_item m-services_item"><a href="#article_services">Сервисы сайта</a>
      <ul class="b-services_item-menu">
        <li class="b-s-p1"><a target="_blank" href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}?{{urlparameters options="template print.tpl"}}">Распечатать материал</a></li>
        <li class="b-s-p2"><a id="send2friend" href="{{uri options="template _send2friend.tpl"}}">Отправить ссылку другу</a></li>
      </ul>
    </div>
    <div class="b-services_item"><a href="#zoomin">Увеличить</a> / <a href="#zoomout">уменьшить</a> шрифт</div>
  </div>
</div>