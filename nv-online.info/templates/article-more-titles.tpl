{{ if $gimme->article->type_name != "static" && $gimme->section->number != 210 }}

<div class="meat-item">
  <div id="other_articles" class="right-list">
  <p class="jasche">Іншыя артыкулы</p>

  <div id="other_articles-{{$gimme->current_list->row}}">
    <ul>
    {{list_articles length="10" constraints="number not `$gimme->default_article->number`" ignore_issue="true" order="bypublishdate desc"}}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
    {{/list_articles}}
    </ul>
  </div>

  </div>            
</div><!-- /.meat-item -->

{{ /if }}