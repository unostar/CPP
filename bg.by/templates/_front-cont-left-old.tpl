{{ set_default_issue }}
<div class="main-column-1">
<!-- marina code -->
<div class="top-news clearfix">

{{ list_articles length="1" constraints="OnFrontPage is on OnSection is on" order="bypublishdate desc" ignore_issue="true"}}
{{ if $gimme->article->has_image(2) }}
<a href="{{ uri options="article" }}"><img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" class="picture"/></a>{{ /if }}
<p class="section-top"><a href="{{ uri options="section" }}" style="color:#d90000;">{{ $gimme->section->name }} </a><img src="/templates/images/sign_more.gif" alt="" style="display:inline;"/></p>
<h1><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h1>
<p style="padding:5px 0 0 0;">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}</p><br/>
{{ $gimme->article->Intro }}
<p><a href="{{ uri options="article" }}" class="read">Далее</a></p>
{{ /list_articles }}

<div class="top-divider" style="clear:left;"><hr /></div>

{{ list_articles length="2" constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc" ignore_issue="true" ignore_section="true" }}
<div class="daily-news">
<p class="section-top"><a href="{{ uri options="section" }}" style="color:#d90000;">{{ $gimme->section->name }} </a><img src="/templates/images/sign_more.gif" alt="" style="display:inline;"/></p>
<h1><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h1>
<p style="padding:5px 0 10px 0;">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}</p>
{{ if $gimme->article->has_image(1) }}
<a href="{{ uri options="article" }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" class="picture" /></a>{{ /if }}
<div class="intro">{{ $gimme->article->Intro }}</div>
<p><a href="{{ uri options="article" }}" class="read">Далее</a></p>
</div>
{{ /list_articles }}

</div>

<!-- end marina code -->

{{ include file="banner-front-center.tpl" }}

<div class="box-469">
<div class="top"><span>{{ $gimme->issue->name }}</span></div>
<div class="inner">
{{ list_sections constraints="number greater 9 number smaller 100" }}
<span class="title"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></span>
{{ list_articles length="1" ignore_issue="true"}}
{{ if $gimme->article->has_image(1) }}
<a href="{{ uri options="article" }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" class="border" width="100px" /></a>{{ /if }}
<h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
<div class="intro">{{ $gimme->article->Intro }}</div>
<a href="{{ uri options="article" }}" class="read">Далее</a>
{{ assign var="n_article" value=$gimme->article->number }}
{{ /list_articles }}
<p class="rest-news">
{{ assign var="flag" value="1" }}
{{ list_articles length="3" ignore_issue="true" }}
{{ if ($gimme->article->number == $n_article ) }}
{{ else }}
{{ if $flag }}Другие новости рубрики{{ assign var="flag" value="0" }}{{ /if }}
<a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>
{{ /if }}
{{ /list_articles }}
</p>
{{ /list_sections }}
</div>
<div class="bottom">&nbsp;</div>
</div>
</div>