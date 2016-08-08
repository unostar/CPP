{{ list_articles length="1" constraints="type is service section is 310" ignore_issue="true" }}

<div class="right">
   <div class="type-o-cont">{{ $gimme->section->name }}</div>
   <div class="divcont">
      <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a><br /><small>{{ $gimme->article->subtitle }}</small></h4>
      <p class="intro">{{ $gimme->article->intro }}</p>
      <p class="furthermore"><a href="{{ uri options="article" }}">Усе знакі задыяка</a></p>
   </div>            
</div>

{{ /list_articles }}