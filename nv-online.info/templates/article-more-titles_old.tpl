{{ if !($gimme->article->type_name == "static") }}

<div class="meat-item">
  <div class="right-list">
    <p class="jasche">Іншыя артыкулы</p>
    <ul>

{{ local }}
{{ list_articles length="6" ignore_current="true" }}
{{ if !($gimme->article->number == $gimme->default_article->number) }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /if }}
{{ /list_articles }}
{{ /local }}

    </ul>
  </div>            
</div><!-- /.meat-item -->

{{ /if }}