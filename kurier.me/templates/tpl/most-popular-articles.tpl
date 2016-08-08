<section class="most-readed column">
  <h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Самые читаемые{{else}}Most popular{{/if}}</span></h3>
  <ul>
{{list_articles length="6" constraints="type is article publish_date greater $xdate" ignore_issue="true" ignore_section="true" order="byPopularity desc"}}
    <li>
      <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
    </li>
{{/list_articles}}
  </ul>
</section><!-- .most-readed column -->
