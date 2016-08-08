{{assign var="data_url" value="http://`$gimme->publication->site`/`$gimme->language->code`/channel/`$gimme->section->url_name`/`$gimme->article->number`"}}
<ul class="social-buttons">
  <li class="twitter"><a href="http://twitter.com/share" class="twitter-share-button" data-lang="be" data-url="{{$data_url}}"></a></li>
  <li class="facebook"><div id="fb-root"></div><fb:like href="{{$data_url}}" send="false" layout="button_count" width="145" show_faces="false" action="recommend"></fb:like></li>
  <li class="vkontakte"><div id="vk_share_button"></div></li>
  <li class="addthis">
    <div class="addthis_toolbox addthis_default_style" addthis:url="{{$data_url}}" addthis:title="{{$gimme->article->name}}">
      <a class="addthis_button_twitter" title="Твітнуць"></a>
      <a class="addthis_button_facebook" title="Адправіць у Facebook"></a>
      <a class="addthis_button_vk" title="Дадаць УКантакце"></a>
      <a class="addthis_button_livejournal" title="Дадаць у Жывы Журнал"></a>
      <a class="addthis_button_compact"></a>
      <a class="addthis_counter addthis_bubble_style" title="Нехта ўжо падзяліўся"></a>
    </div>
  </li>
</ul><!-- .social-buttons -->
