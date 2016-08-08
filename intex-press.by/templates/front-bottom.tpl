<div class="columns-wrapper bottom clearfix">
  <div class="home-column-1">
    <p class="bottom-title">Национальные новости</p>
{{php}}include ('/home/intexpre/xml-forest/intex-feed-2.html');{{/php}}
  </div>
  <div class="home-column-2">
    <p class="bottom-title">Мировые новости</p>
{{php}}include ('/home/intexpre/xml-forest/intex-feed-1.html');{{/php}}
  </div>
  <div class="home-column-3">
    <p class="bottom-title">Народные новости</p>
{{list_articles length="8" constraints="section is 210" ignore_issue="true" }}
    <p class="bottom-link"><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
{{/list_articles}}
{{local}}{{set_current_issue}}{{set_section number="210"}}<p class="bottom-link-alt"><a href="{{uri options="section"}}">Читать</a>&nbsp;&nbsp;или</p>{{/local}}
    <p class="bottom-button"><a href="/templates/phpscripts/formmail/send.php" class="email">Написать</a></p>
  </div>
</div>
