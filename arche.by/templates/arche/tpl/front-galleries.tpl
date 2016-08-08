<section class="galleries">
  <div class="tabs">
    <ul class="tabs-labels">
      <li class="active"><h2><a><span>Відэа</span></a></h2></li>
{{*      <li><h2><a href=""><span>Фотагалерэя</span></a></h2></li> *}}
    </ul><!-- .tabs-labels -->

    <div class="tab tab-visible">
      <ul class="gallery-list">
{{local}}{{set_publication identifier="4"}}
{{list_articles length="12" columns="4" constraints="type is video" ignore_section="true" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->column == 1}}
        <li class="block">
{{/if}}
          <div class="item">
            {{if $gimme->article->has_image(1)}}<figure class="image"><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 98 height 74"}}" alt="{{$gimme->article->name|escape}}"></a></figure><!-- .image -->{{/if}}
            <h3><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:55}}</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
{{if $gimme->current_list->column == 4 || $gimme->current_list->at_end}}
        </li><!-- .block -->
{{/if}}
{{/list_articles}}
{{/local}}
      </ul><!-- .gallery-list -->

      <a class="direction prev" title="Папярэднія">Папярэднія</a>
      <a class="direction next" title="Наступныя">Наступныя</a>
    </div><!-- .tab -->
{{*
    <div class="tab">

      <ul class="gallery-list">
        <li class="block">
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-1.jpg" alt="Беларуская літаратура не прадаецца (інтэрв’ю)"></a></figure><!-- .image -->
            <h3><a href="">літаратура не прадаецца (інтэрв’ю)</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-2.jpg" alt="Шэсьць рэктараў сталі неўязнымі ў ЭС"></a></figure><!-- .image -->
            <h3><a href="">рэктараў сталі неўязнымі ў ЭС</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-3.jpg" alt="Вірджынія Вулф: Бегучы па хвалях"></a></figure><!-- .image -->
            <h3><a href="">Вулф: Бегучы па хвалях</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-4.jpg" alt="Чаму адбываюцца ўцечкі інфармацыі"></a></figure><!-- .image -->
            <h3><a href="">адбываюцца ўцечкі інфармацыі</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
        </li><!-- .block -->
        <li class="block">
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-1.jpg" alt="Беларуская літаратура не прадаецца (інтэрв’ю)"></a></figure><!-- .image -->
            <h3><a href="">літаратура не прадаецца (інтэрв’ю)</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-4.jpg" alt="Чаму адбываюцца ўцечкі інфармацыі"></a></figure><!-- .image -->
            <h3><a href="">адбываюцца ўцечкі інфармацыі</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-2.jpg" alt="Шэсьць рэктараў сталі неўязнымі ў ЭС"></a></figure><!-- .image -->
            <h3><a href="">рэктараў сталі неўязнымі ў ЭС</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-3.jpg" alt="Вірджынія Вулф: Бегучы па хвалях"></a></figure><!-- .image -->
            <h3><a href="">Вулф: Бегучы па хвалях</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
        </li><!-- .block -->
        <li class="block">
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-1.jpg" alt="Беларуская літаратура не прадаецца (інтэрв’ю)"></a></figure><!-- .image -->
            <h3><a href="">літаратура не прадаецца (інтэрв’ю)</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-3.jpg" alt="Вірджынія Вулф: Бегучы па хвалях"></a></figure><!-- .image -->
            <h3><a href="">Вулф: Бегучы па хвалях</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-2.jpg" alt="Шэсьць рэктараў сталі неўязнымі ў ЭС"></a></figure><!-- .image -->
            <h3><a href="">рэктараў сталі неўязнымі ў ЭС</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
          <div class="item">
            <figure class="image"><a href=""><img src="/templates/arche/img/temp/video-thumb-4.jpg" alt="Чаму адбываюцца ўцечкі інфармацыі"></a></figure><!-- .image -->
            <h3><a href="">адбываюцца ўцечкі інфармацыі</a><span class="attachments video" title="Відэа">Відэа</span></h3>
          </div><!-- .item -->
        </li><!-- .block -->
      </ul><!-- .gallery-list -->

      <a href="" class="direction prev" title="Папярэднія">Папярэднія</a>
      <a href="" class="direction next" title="Наступныя">Наступныя</a>

    </div><!-- .tab -->
*}}

  </div><!-- .tabs -->

  <p>Выдатная калекцыя відэаролікаў у <a href="http://video.arche.by">Відэаархіве</a></p>

{{*  <p>Глядзець <a href="">Фотагалерэю</a></p> *}}

</section><!-- .galleries -->