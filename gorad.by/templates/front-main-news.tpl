<div class="b-maincontent m-header-block-blue">
  <h2 class="header-block">
    <b class="bg-header-block-l"></b>
    <b class="bg-header-block-r"></b>
    <span class="header-block-i">Галоўныя навіны</span>
  </h2>
  <div class="b-maincontent-il">
    <div class="b-maincontent-ir">
      <div class="b-maincontent-i">
        <!-- Тело -->
          <div class="c-mainnews">
            <div class="c-mainnews_items g-clean">
              <span class="c-img">
{{list_articles length="3" constraints="section smaller 100 OnFrontPage is on" order="bypublishdate desc" ignore_issue="true"}}
  <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">
  {{if $gimme->article->has_image(2)}}
                  <img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description|escape}}" {{if $gimme->article->image2->photographer}}title="Фота: {{$gimme->article->image2->photographer|escape}}"{{/if}} width="310" height="230" />
  {{else}}
                  <img src="/templates/images/nofoto-310x230.jpg" alt="Фота адсутнічае" width="310" height="230" />
  {{/if}}
  </a>
{{/list_articles}}
              </span>
              <div class="tabs">
{{list_articles length="3" constraints="section smaller 100 OnFrontPage is on" order="bypublishdate desc" ignore_issue="true"}}
                <div class="c-mainnews_item{{if $gimme->current_list->at_beginning}} active{{/if}}{{if $gimme->current_list->at_end}} last{{/if}}">
                  <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="c-mainnews_item-i">
                    <h3 class="c-mainnews_header">{{$gimme->article->name}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}</h3>
                    <span class="c-mainnews_text">{{$gimme->article->intro|strip_tags:false|truncate:200}}</span>
                  </a>
                </div>
{{/list_articles}}
              </div>
            </div>
          </div>
        <!-- //тело -->
      </div>
    </div>
  </div>
  <span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>

