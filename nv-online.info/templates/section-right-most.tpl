<div class="meat-right-item" id="most">

<ul class="ui-tabs-nav">
  <li><a href="#most-reads"><span>папулярнае</span></a></li>
</ul>

<div id="most-reads" style="border-top: none">
{{list_articles length="5" order="bypopularity desc"}}
  <div class="news-popular">
    <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>
  </div>  
{{ /list_articles }}
</div>

</div>