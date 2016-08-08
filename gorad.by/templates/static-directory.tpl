<div class="c-article">
{{if $gimme->article->defined}}
<h3>{{$gimme->article->name}}</h3>
{{$gimme->article->text}}
{{else}}
{{list_articles legth="6" ignore_issue="true" constraints="type is page" order="bypublishdate desc"}}
<p><a class="c-preview_header" href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></p>
{{/list_articles}}
{{/if}}
</div>
