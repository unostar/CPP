{{if $gimme->url->get_parameter(page)}}{{assign var="page" value=$gimme->url->get_parameter(page)}}{{else}}{{assign var="page" value="1"}}{{/if}}
<div class="article_box"><h4>{{$gimme->section->name}}</h4></div>

<div class="article_box">
{{list_articles length="70" columns="7" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->row==$page}}
  <div class="big_article section">
    <div class="big_article_data{{if $gimme->current_list->at_beginning}} first{{/if}}">
      <span class="art_image">{{if $gimme->article->has_image(1)}}<a rel="lightbox" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1"}}&ImageRatio=20" alt="{{$gimme->article->image1->description}}" style="height:100% !important" /></a>{{/if}}</span>
      <h2><a href="{{uri options="issue"}}">{{$gimme->article->name}}</a></h2>
      <p class="date">{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>
      <p style="margin-left:122px">{{assign var="this_issue" value=$gimme->article->issue->number}}{{local}}{{set_issue number=$this_issue}}{{list_articles constraints="type is article" ignore_section="true"}}&#0167; {{$gimme->article->name}} ({{$gimme->article->section->name}})<br />{{/list_articles}}{{/local}}</p>
{{list_article_attachments length="1"}}
      <p class="more"><a href="{{uri options="articleAttachment"}}" class="readmore">Cпампаваць PDF версію</a></p>
{{/list_article_attachments}}
    </div>
  </div>
{{/if}}
{{/list_articles}}
{{if $gimme->prev_list_empty}}
<p class="date">Матэрыялы не знойдзены</p>
{{/if}}
</div>

{{if !$gimme->prev_list_empty}}
<div class="section-pages">
  <ul>
  <li>Старонкі :</li>
{{list_articles length="70" columns="7" ignore_issue="true"}}
{{if $gimme->current_list->column==1}}
    <li{{if $gimme->current_list->row==$page}} class="selected"><a>{{else}}><a href="/by/page/pdf?page={{$gimme->current_list->row}}">{{/if}}{{$gimme->current_list->row}}</a></li>
{{/if}}
{{/list_articles}}
  </ul>
</div>
{{/if}}
{{ include file="section-column-1-banner.tpl" }}