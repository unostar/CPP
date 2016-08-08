<div class="b-main">
{{list_articles length="1" constraints="type is minipoll section is 140" ignore_issue="true" order="bypublishdate desc"}}
<h1 class="header-article">{{$gimme->article->name}}</h1>
<dl class="b-minipoll b-comm">
{{list_article_images}}
	<dt>{{$gimme->image->photographer}}</dt>
	<dd><img src="{{uri options="image"}}" alt="{{$gimme->image->photographer}}" width="80" height="80" />{{$gimme->image->description}}</dd>
{{/list_article_images}}
</dl>
{{/list_articles}}
</div>
