{{ list_articles length="1" constraints="OnFrontPage is on OnSection is on" order="bypublishdate desc" ignore_issue="true" }}
<p class="date">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</p>
<h2>{{ $gimme->article->name }}</h2>
<img src="{{ uri options="image 2" }}" alt="{{$gimme->article->image2->description}}" title="{{$gimme->article->image2->description}}" />
<p>{{ $gimme->article->intro }}</p>
<div class="readmore"><a href="{{ uri options="article" }}#comments">Комментарии</a><span>|</span><a href="{{ uri options="article" }}">Читать дальше &rsaquo;&rsaquo;</a></div>
{{ /list_articles }}