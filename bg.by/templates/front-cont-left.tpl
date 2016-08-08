{{ set_default_issue }}
<div class="main-column-1">
{{ include file="banner-front-center.tpl" }}
<div class="box-469">
<div class="top"><span>{{ $gimme->issue->name }}</span></div>
<div class="inner">
{{ list_sections constraints="number greater 9 number smaller 121 number not 110" }}
<span class="title"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></span>
{{ list_articles length="1" ignore_issue="true"}}
{{ if $gimme->article->has_image(1) }}
<a href="{{ uri options="article" }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|replace:'""':'' }}" class="border" width="100" /></a>{{ /if }}
<h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h3>
<div class="intro">{{ $gimme->article->Intro }}</div>
<a href="{{ uri options="article" }}" class="read">Далее</a>
{{ assign var="n_article" value=$gimme->article->number }}
{{ /list_articles }}
<p class="rest-news">
{{list_articles length="2" ignore_issue="true" constraints="number not $n_article"}}
{{if $gimme->current_list->at_beginning}}Другие новости рубрики<br />{{/if}}
<a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}<br />
{{/list_articles}}
</p>
{{ /list_sections }}
</div>
<div class="bottom">&nbsp;</div>
</div>
</div>