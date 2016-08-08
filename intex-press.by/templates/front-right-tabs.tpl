<div id="container-1">

<ul>
  <li><a href="#fragment-1"><span>Последние новости</span></a></li>
  <li><a href="#fragment-2"><span>Главные темы</span></a></li>
</ul>

<div id="fragment-1">
{{set_section number="1"}}
{{list_articles length="12" constraints="onfrontpage is off onsection is on" ignore_issue="true"}}
  <h4><a href="{{uri options="article"}}">{{ $gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h4>
  <p class="container-date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Yг."}}</p>
  <p>{{$gimme->article->Intro_front}}{{if $gimme->article->comment_count>0}}<a href="{{uri options="article"}}#comments" class="comments_counter">{{$gimme->article->comment_count}}</a>{{/if}}</p>
{{/list_articles}}
{{set_default_section}}
</div>

<div id="fragment-2">
<div class="issue-news" style="border-bottom:none">
{{assign var="latest" value=`$gimme->issue->number-2` }}
{{list_articles length="12" constraints="issue greater $latest section greater 9 section smaller 70 topic is Главные\ темы:ru" order="bypublishdate desc"}}
  <h4><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h4>
  <p class="container-date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Yг."}}</p>
  <p>{{$gimme->article->intro}}{{if $gimme->article->comment_count>0}}<a href="{{uri options="article"}}#comments" class="comments_counter">{{$gimme->article->comment_count}}</a>{{/if}}</p>
{{/list_articles}}
</div>
</div>

</div>
