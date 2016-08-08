{{list_articles length="1" constraints="type is article section is 130" ignore_issue="true"}}
<div class="b-articlesmall">
  <div class="header-category"><a href="/by/page/{{$gimme->section->url_name}}">Вопрос к юристу</a></div>
  <strong class="b-articlesmall_h">Из почты читателя</strong>
  <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
  {{if $gimme->article->has_image(1)}}<span class="b-article_img"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="80" height="80" /></span>{{/if}}
  {{$gimme->article->intro|truncate:300}}
</div>
{{/list_articles}}
