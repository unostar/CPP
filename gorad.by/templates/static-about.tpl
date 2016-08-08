<div class="c-article">
{{if $gimme->article->defined}}
<h3>{{$gimme->article->name}}</h3>
{{$gimme->article->text}}
{{else}}
{{list_articles legth="1" ignore_issue="true" constraints="type is page"}}
<h3>{{$gimme->article->name}}</h3>
{{$gimme->article->text}}
{{/list_articles}}
{{/if}}
</div>
