<section class="section-articles">
  <header>
    <h3>Іншыя артыкулы рубрыкі:</h3>
    <a href="/{{$gimme->language->code}}/page/{{$gimme->article->section->url_name}}/" class="read-more">Чытаць болей</a>
  </header>
  <ul>
{{list_articles length="12" constraints="type is article number not `$gimme->article->number` section is `$gimme->article->section->number`" ignore_issue="true" order="bypublishdate desc"}}
    <li>
      <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
      <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">({{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}})</time>
      {{if $gimme->article->has_photo}}<span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}}<span class="attachments video" title="Відэа">Відэа</span>{{/if}}
    </li>
{{/list_articles}}
  </ul>
</section><!-- .section-articles -->
