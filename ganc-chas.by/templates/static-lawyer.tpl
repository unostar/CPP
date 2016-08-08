<div class="b-main">
  <dl class="b-comm">
{{if $gimme->article->defined}}
    <dt><span>{{$gimme->article->name}}</span></dt>
    <dd>
      {{if $gimme->article->has_image(1)}}<span class="b-article_img"><img src="{{uri options="image 1"}}" alt="{{$gimme->image1->description}}" width="80" height="80" /></span>{{/if}}
      <em>{{$gimme->article->intro}}</em>
    </dd>
    <dd>{{$gimme->article->full_text}}</dd>
{{else}}
{{list_articles length="20" constraints="type is article section is 130" ignore_issue="true"}}
    <dt><span><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></span></dt>
    <dd>
      {{if $gimme->article->has_image(1)}}<span class="b-article_img"><img src="{{uri options="image 1"}}" alt="{{$gimme->image1->description}}" width="80" height="80" /></span>{{/if}}
      {{$gimme->article->intro|truncate:350}}
    </dd>
{{/list_articles}}
{{/if}}
  </dl>
</div>
