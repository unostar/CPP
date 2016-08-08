<div class="b-maincontent">
<div class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
  <span class="header-block-i"><h2><a href="/by/page/{{$gimme->section->url_name}}">{{$gimme->article->section->name}}</a></h2><span class="header-block-text">{{if $gimme->article->author->name!=""}}<strong>{{$gimme->article->author->name}}</strong>, {{/if}}{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</span></span>
</div>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
  <!-- Статья -->
  <div class="c-article">
    <div class="c-article-leftblock">
{{if $gimme->article->has_image(2)}}
      <span class="c-img">
        <img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description|escape}}" {{if $gimme->article->image2->photographer}}title="Фота: {{$gimme->article->image2->photographer|escape}}"{{/if}} width="310" height="230" />
        {{if $gimme->article->image2->description!=""}}<span>{{$gimme->article->image2->description|escape}}</span>{{/if}}
      </span>
{{/if}}

{{if $gimme->article->has_map}}
      <div class="article-map">
        {{ map show_locations_list="false" show_reset_link="false" width="310" height="230" }}
      </div>
{{/if}}
    </div>

    <h1>{{$gimme->article->name}}</h1>
    <div class="c-article-content">
      <div class="c-article-pre">{{$gimme->article->intro}}</div>

{{if $gimme->article->has_image(20)}}

  {{ assign var = "full_article_text" value = $gimme->article->full_text|regex_replace:'#<blockquote>(.*)</blockquote>#msi':'<div class="quote"><img src="/templates/images/blockquote.png" alt="Справка" width="31" height="26" />$1<b class="g-bg bg-article-funcs-lt"></b><b class="g-bg bg-article-funcs-lb"></b><b class="g-bg bg-article-funcs-rt"></b><b class="g-bg bg-article-funcs-rb"></b></div>' }}

  {{ php }}
    $gimme = $this->get_template_vars('gimme');
    $full_article_text = $this->get_template_vars('full_article_text');

    $marker = "<p>[[slideshow]]</p>";

    $full_text_parts = explode($marker, $full_article_text);

    $full_text_start = $full_text_parts[0];
    $full_text_end = $full_text_parts[1];

    $this->assign('full_text_start', $full_text_start);
    $this->assign('full_text_end', $full_text_end);
  {{ /php }}

  {{ $full_text_start }}

  <div class="slideshow-article">
    <ul>
  {{list_article_images}}
    {{if $gimme->image->article_index > 19}}
      <li><a href="http://{{$gimme->publication->site}}{{uri options="image"}}"><img src="http://{{$gimme->publication->site}}{{uri options="image"}}" alt="{{$gimme->image->description|escape}}" /></a><span>{{$gimme->image->description}}</span></li>
    {{/if}}
  {{/list_article_images}}
    </ul>
  </div><!-- .slideshow-article -->

  {{ $full_text_end }}

{{else}}

  {{$gimme->article->full_text|regex_replace:'#<blockquote>(.*)</blockquote>#msi':'<div class="quote"><img src="/templates/images/blockquote.png" alt="Справка" width="31" height="26" />$1<b class="g-bg bg-article-funcs-lt"></b><b class="g-bg bg-article-funcs-lb"></b><b class="g-bg bg-article-funcs-rt"></b><b class="g-bg bg-article-funcs-rb"></b></div>'}}

{{/if}}

{{if $gimme->article->has_attachments}}
      <span class="c-article-pre">
      {{list_article_attachments}}<br /><a href="{{uri options="articleattachment"}}">{{$gimme->attachment->description}} ({{$gimme->attachment->file_name}}, {{$gimme->attachment->size_kb}}Kb)</a>{{/list_article_attachments}}
      </span>
{{/if}}
    </div>

    <div class="c-article-bottom c-article-funcs">
      <a href="#->  павялічыць/паменшыць шрыфт" class="c-article-funcs-item"><i class="ico ico-am"></i><i class="ico ico-ap"></i></a>
      <span class="c-article-funcs-item"><i class="ico ico-print"></i> <a target="_blank" href="/by/page/print/{{$gimme->article->number}}">надрукаваць </a></span>
      
      {{ include file="_article-share.tpl" }}

    </div>
  </div>
  <!-- //статья -->
</div></div></div>
  <span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
