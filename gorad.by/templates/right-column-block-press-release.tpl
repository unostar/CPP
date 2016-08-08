<div class="b-maincontent">
  <h2 class="header-block"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i"><a href="/by/page/pressrelease">Прэс-рэлізы</a></span></h2>
  <div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
    <!-- Тело -->
    <div class="b-maincontent-n-i">
      <ul class="list-withimage">

{{list_articles length="4" constraints="section is 160" ignore_issue="true" order="bypublishdate desc"}}
            <li><h3><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="48" height="48" />{{/if}}{{$gimme->article->name|escape:'html'}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}</a></h3>{{if $gimme->article->comment_count}}<span class="c-preview-comments"><i class="ico"></i>{{$gimme->article->comment_count}}</span>{{/if}}</li>
{{/list_articles}}

      </ul>
    </div>
    <!-- //тело -->
  </div>
  </div>
  </div>
  <span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
