<div class="article-content">
<div class="article clearfix">
<div class="article-left">
<div class="section-title">
{{ $gimme->section->name }}
</div>
{{ local }}
{{ unset_issue }}
{{ set_section number="270" }}
{{ list_articles }}
{{ if $gimme->current_list->index == 8 }}

<h1>{{ $gimme->article->name }}</h1>
{{ $gimme->article->full_text }}
<br/><br/>
{{ /if }}
{{ /list_articles }}
{{ /local }}
</div>
<!-- begin article right column-->
{{ include file="article-cont-right.tpl" }}
<!-- end article right column-->

<div class="section-fulldivider"><hr /></div>
</div>
<div class="banner-section">banner</div>
</div>
