<ul>
  <li class="first-child">
    <a href="/">Главная</a>
  </li>
</ul> 
<div class="columns clearfix">
<ul>
  {{ set_current_issue }}
  {{ list_sections constraints="number greater_equal 10 number smaller_equal 59" }}
  <li>
    <a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
    {{ list_articles length="4" order="bypublishdate desc" ignore_issue="true" }}
    <p><a href="{{ uri options="article" }}">{{$gimme->article->name}}</a></p>
    {{ /list_articles }}
  </li>
  {{ /list_sections }}

</ul>
</div>
