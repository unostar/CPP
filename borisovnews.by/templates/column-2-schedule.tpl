{{ set_section number="110" }}
{{ list_articles length="1" }}
<div class="block-title">{{$gimme->article->intro}}</div>
<a rel="lightbox" class="cover-image" href="{{ uri options="image 1" }}" title="{{$gimme->article->intro}}"><img src="{{ uri options="image 1 width 270 height 400" }}" alt="{{$gimme->article->intro}}" /></a>
{{ /list_articles }}
{{ set_default_section }}
<br />