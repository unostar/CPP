<div class="l-col2_column l-col2_cr440">
{{set_default_article}}
{{if !$gimme->article->defined}}
  {{list_articles length="1" order="bysectionorder asc"}}
  {{assign var="article_nr" value=$gimme->article->number}}
  {{/list_articles}}
  {{set_article number=$article_nr}}
{{/if}}
  <div class="b-bheader_blue"><span><a href="{{uri options="section"}}"><b>{{$gimme->section->name}}</b></a></span></div>
  <div class="b-vnimaniya b-article">
    <h2>{{$gimme->article->name}}</h2>
    <div class="b-vnimaniya_credits">{{$gimme->article->description}}</div>
    <div class="b-article_text"><div class="full_text"><p>{{$gimme->article->full_text}}</p></div></div>
  </div>
</div>