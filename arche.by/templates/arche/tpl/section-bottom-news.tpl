<section class="columns">
  <header>
    <h2>Навіны</h2>
    <a href="/" class="read-more">Усе навіны Arche</a>
  </header>
{{list_sections length="6" constraints="number greater 20 number smaller 100 number not 80"}}
  <div class="column">
    <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}  &gt;&gt;</a></h3>
    <ul>
{{list_articles length="5" constraints="type is article" ignore_issue="true" order="bypublishdate desc"}}
      <li>
        <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
        <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">({{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}})</time>
      </li>
{{/list_articles}}
    </ul>
  </div><!-- .column -->
{{/list_sections}}
</section><!-- .columns -->
