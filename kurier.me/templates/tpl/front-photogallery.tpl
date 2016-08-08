<section class="photogallery">
{{list_articles length="3" constraints="type is photo section is 520" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
  <ul class="gallery">
{{/if}}
    <li>
      <ul>
{{list_article_images length="5"}}
        <li>
          <a class="fancybox" rel="gallery" title="{{$gimme->image->description|escape:'html'}}" href="{{uri options="image"}}"><img src="{{uri options="image width 124 height 80"}}" width="124" height="80" alt="{{$gimme->image->description|escape:'html'|truncate}}" /></a>
          <h4>{{$gimme->image->description|escape:'html'|truncate}}</h4>
        </li>
{{/list_article_images}}
      </ul>
    </li>
{{if $gimme->current_list->at_end}}
  </ul><!-- .gallery -->
{{/if}}
{{/list_articles}}
  <ul class="photogallery-pagination">
    <li class="current"><a href=""></a></li>
    <li><a href=""></a></li>
    <li><a href=""></a></li>
  </ul><!-- .photogallery-pagination -->
  <a class="direction prev">Раньше</a>
  <a class="direction next">Дальше</a>
</section><!-- .photogallery -->
