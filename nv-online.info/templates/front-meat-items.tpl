{{ set_default_issue }}
{{ list_sections constraints="number greater 11 number smaller 105" }}

<div class="meat-item">
<div class="meat-item-inner">

{{ if $gimme->current_sections_list->at_beginning }}<div id="logorow"><img alt="logo" src="/templates/images/logo-smaller.png" /></div>{{ /if }}

<div class="meat-item-uphead"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></div>

{{ list_articles length="1" ignore_issue="true" constraints="OnFrontPage is off OnSection is off" }}
  <h3 style="width:420px;"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
{{ /list_articles }}

<div class="right-list">
<p class="jasche">ЯШЧЭ З ГЭТАЙ РУБРЫКІ</p>
<ul> 
    {{ list_articles length="4" ignore_issue="true" constraints="OnFrontPage is off OnSection is off" }}
    {{ if $gimme->current_articles_list->index > 1 }}
       <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ if $gimme->article->source_title == "Народная Воля" }}
&nbsp;&nbsp;<img alt="NV exclusive" src="/templates/images/mark_nv.png" />
{{ /if }}</li>
    {{ /if }}
    {{ /list_articles }}
</ul>
<p class="dallej"><a href="{{ uri options="section" }}">чытай далей</a></p>
</div><!-- /.right-list -->

{{ list_articles length="1" ignore_issue="true" constraints="OnFrontPage is off OnSection is off" }}
    {{ if $gimme->article->has_image(2) }}<img class="meat-item-image" alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" width="230px" />{{ /if }}
    <div class="intro">{{ $gimme->article->intro }}&nbsp;<a href="{{ uri options="article" }}" title="Чытаць далей">...</a>{{ if $gimme->article->source_title == "Народная Воля" }}
&nbsp;&nbsp;<img alt="NV exclusive" src="/templates/images/mark_nv.png" />
{{ /if }}</div>        
    <div class="intro-tools">{{ $gimme->article->publish_date|camp_date_format:"%e %M %Y г." }}<br /><a href="{{ uri options="article" }}#disqus_thread" data-disqus-identifier="nv-online-{{$gimme->article->number}}"></a></div>

{{ /list_articles }}

</div><!-- /.meat-item-inner -->
</div><!-- /.meat-item -->

{{ /list_sections }}