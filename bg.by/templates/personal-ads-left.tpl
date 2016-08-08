{{ set_default_section }}
<div class="main-news"> 
{{ list_articles order="byOrder desc" }}
<h1><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h1><br/>
{{ /list_articles}}
</div>