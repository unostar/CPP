{{ list_articles length="1" ignore_issue="true" order="bypublishdate desc" constraints="type is service section is 330" }}
<div class="right">
   <div class="type-o-cont">{{ $gimme->section->name }}</div>
   <div class="divcont">
      <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
   </div>             
</div>
{{ /list_articles }}

<div class="clear"></div>  