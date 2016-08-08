<div id="container-2">

<ul>
  <li><a href="#fragment-3"><span>Блог</span></a></li>
  <li><a href="#fragment-4"><span>Народные новости</span></a></li>
</ul>

<div id="fragment-3">
  <div class="blogs clearfix">
  <img src="/templates/images/Ljudmila.jpg" alt="Блог Людмилы Прокоповой" class="blog-pic" />
  {{php}}include ('/home/intexpre/xml-forest/intex-blog.html');{{/php}}
  </div>
  {{*
  <div class="blogs clearfix">
  <img src="/templates/images/2.jpg" alt="" class="blog-pic" />
  {{php}}include ('/home/intexpre/xml-forest/intex-blog-1.html');{{/php}}
  </div>
  <div class="blogs clearfix">
  <img src="/templates/images/3.jpg" alt="" class="blog-pic" />
  {{php}}include ('/home/intexpre/xml-forest/intex-blog-2.html');{{/php}}
  </div>
  <div class="blogs clearfix">
  <img src="/templates/images/LudmilaStetsko.jpg" alt="" class="blog-pic" />
  {{php}}include ('/home/intexpre/xml-forest/intex-blog-4.html');{{/php}}
  </div>
  *}}
</div>

<div id="fragment-4">
{{list_articles length="5" constraints="section is 210" ignore_issue="true"}}
<p class="bottom-link"><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->comment_count>0}}<a href="{{uri options="article"}}#comments" class="comments_counter">{{$gimme->article->comment_count}}</a>{{/if}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
{{if $gimme->current_list->at_end}}<p class="bottom-button"><a href="{{uri options="section"}}">Читать все новости</a></p>{{/if}}
{{/list_articles}}
</div>

</div>
