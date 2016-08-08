{{ set_default_section }}
{{ set_default_article }}
<div class="section-column-2 clearfix">
<div class="column-2-content">

<p class="article-tools"><a class="print" href="{{uri options="template newspaper/print.tpl"}}">Версія для друку</a>
<a href="{{uri options="template newspaper/php/sendtofriend/sendtofriend.php"}}" target="send" class="send">Даслаць сябру</a>
{{if $gimme->article->comments_enabled}}<a class="comments" href="#add_comment">Kаментары ({{$gimme->article->comment_count}})</a>{{/if}}
<a class="dfonts" href="#" onclick="javascript:FontSize(1);return false;"><img src="/templates/newspaper/images/icon-dfont.gif" alt="Увеличить шрифт" width="16px" /></a>
<a class="ifonts" href="#" onclick="javascript:FontSize(-1);return false;"><img src="/templates/newspaper/images/icon-ifont.gif" alt="Уменьшить шрифт" width="16px" /></a>
&nbsp;Памер шрыфта</p>
<h2 class="section-name"><a href="{{ uri options="section"}}">{{$gimme->section->name}}</a></h2>
<h1 class="day">{{$gimme->article->name}}</h1>
{{if $gimme->article->has_image(2)}}<img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" class="day-img-article" width="276" />{{/if}}
<p class="byline">{{$gimme->article->publish_date|camp_date_format:"%d %M %Y"}} {{if $gimme->article->author->name != ""}}| Піша <a href="{{uri options="template newspaper/author.tpl"}}">{{$gimme->article->author->name}}</a>{{/if}}</p>
<div id="article_full">
<div class="intro">{{$gimme->article->Intro}}</div>
<div class="full-text">{{$gimme->article->Full_text}}</div>

{{ if $gimme->article->has_map }}
  {{ include file="newspaper/article-map.tpl" }}
{{ /if }}

{{* показывает темы, если они есть у статьи, и если это не темы определяющие положение рубрики на главной странице *}}
{{ if $gimme->article->topics_count > 0 }}
{{ assign var = "first_good_topic" value = true }}
{{ list_article_topics }}

  {{ if ($gimme->topic->name != "Першы") && ($gimme->topic->name != "Другi") && ($gimme->topic->name != "Трэцi") && ($gimme->topic->name != "Чацверты") && ($gimme->topic->name != "Пяты") && ($gimme->topic->name != "Шосты") }}

    {{ if $first_good_topic }}
      <div class="article-topics"><span class="topics">Тэмы</span>:
      {{ assign var = "first_good_topic" value = false }}
      {{ assign var = "last_good_topic" value = true }}
    {{ /if }}

    <a href="/?tpl=582&tag={{ $gimme->topic->name }}">{{ $gimme->topic->name }}</a>{{ if !$gimme->current_list->at_end }}, {{ /if }}

  {{ /if }}

  {{ if $gimme->current_list->at_end && $last_good_topic }}
    </div><!-- .article-topics -->
  {{ /if }}

{{ /list_article_topics }}
{{ /if }}

      <ul class="social-buttons">
        <li class="twitter">
          <a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="tstyl">Tweet</a>
        </li>
        <li class="facebook">
          <fb:like href="" layout="button_count" show_faces="false" width="140" action="recommend" font="segoe ui"></fb:like>
        </li>
        <li class="vkontakte">
          <div id="vk_like"></div>
        </li>
      </ul><!-- .social-buttons -->
      <script type="text/javascript">VK.Widgets.Like("vk_like", {type: "button", verb: 1});</script>

</div>

{{if $gimme->article->has_attachments}}
<div class="article-comments"><h3 class="comment-title">Дадаткі артыкула</h3><br />
{{list_article_attachments}}
{{if $gimme->attachment->extension == "mp3"}}
<p><a href="{{uri options="articleAttachment"}}">Спампаваць: {{$gimme->attachment->file_name}} ({{$gimme->attachment->size_kb}}Kb)</a><br/>
<object height="20" width="200" data="/templates/newspaper/images/player_mp3_maxi.swf" type="application/x-shockwave-flash" align="top">
  <param value="/templates/newspaper/images/player_mp3_maxi.swf" name="movie" />
  <param name="wmode" value="opaque" />
  <param value="mp3={{uri options="articleattachment"}}&amp;showstop=1&amp;showvolume=1&amp;buttonwidth=25&amp;sliderwidth=15&amp;bgcolor1=E0E0E0&amp;bgcolor2=333333&amp;buttonovercolor=D3D300&amp;sliderovercolor=D3D300" name="FlashVars" />
</object>
</p><br />
{{else}}
<p><a href="{{uri options="articleAttachment"}}">спампаваць {{$gimme->attachment->file_name}}, {{$gimme->attachment->size_kb}}(kb)</a></p><br/>
{{/if}}
{{/list_article_attachments}}
</div>
{{/if}}

{{ include file="newspaper/article-content-recent-articles.tpl" }}

{{ if $gimme->article->comments_enabled }}<a name="comments"></a>
<div class="article-comments">
  {{list_article_comments order="bydate desc"}}
  {{if $gimme->current_list->at_beginning}}<h3 class="comment-title">Каментары</h3>{{/if}}
  <p class="comment-author">{{ $gimme->comment->reader_email }} ({{ $gimme->comment->submit_date|camp_date_format:"%d %M %Y, %H:%i" }})</p>
  <p class="comment-text">{{ $gimme->comment->content }}</p>
  {{/list_article_comments}}
</div>
<div id="comments_form">{{include file="newspaper/article-comments-form.tpl"}}</div>

<div id="fb-root"></div><fb:comments href="http://t-styl.info{{ uri options="article" }}" num_posts="10" width="515"></fb:comments>

{{/if}}

</div>
</div>
