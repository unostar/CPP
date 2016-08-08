<section class="editors-choice column">
  <h3 class="block-title"><span>Выбор редактора</span></h3>
  <ul>
{{list_articles length="6" constraints="type is article editors_choice is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
    <li>
      <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
    </li>
{{/list_articles}}
  </ul>
</section><!-- .editors-choice column -->
