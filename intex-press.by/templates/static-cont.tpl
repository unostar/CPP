<div class="article-content">

<div class="article clearfix">

<div class="article-left">

<div class="section-title">

{{ $gimme->section->name }}

</div>

{{ list_articles length="1" ignore_issue="true" order="bypublishdate desc" }}

<div class="article-details clearfix">

<h1>{{ $gimme->article->name }}</h1>

{{ if $gimme->article->has_image(2) }}

<div class="border-div">
<img  width="615" height="360" src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" />

</div>

<p class="photo">Photo:<span class="photo-description">{{$gimme->article->image2->description }}</span>

</p>

{{ /if }}

<p class="intro">{{ $gimme->article->intro }}</p>

</div>

<div class="article-divider"><hr/></div>

<p class="article-tools">

<a href="{{ uri options="template sendtofriend/sendtofriend.php" }}" class="glossary">Email</a>

<a href="{{ uri options="template print.tpl"}}" target="_blank">Напечатать</a>

</p>

<p>{{ $gimme->Article->Full_text }}</p>

{{ /list_articles }}





</div> 

<!-- begin article right column-->
{{ include file="article-cont-right.tpl" }}

<!-- end article right column-->



<div class="section-fulldivider"><hr /></div>

</div>

<div class="banner-section">{{ include file="banner-middle728x90.tpl"}}</div>

</div>

