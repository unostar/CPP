<div class="meat-right-item" id="popular">
<p class="meatrigred">папулярнае</p>
{{if $gimme->template->name == "issue-front-polosa.tpl"}}
  {{assign var="const" value="section is 300"}}
{{else}}
  {{assign var="const" value="section smaller 100"}}
{{/if}}

  <div id="popular-online" style="border-top:none;">
  {{list_articles length="5" constraints=$const order="bypopularity desc"}}
  <div class="news-popular{{if $gimme->current_list->at_end}}-last{{/if}}">
  <a href="{{uri options="article"}}">{{$gimme->article->name}} ({{$gimme->article->reads}})</a>
  </div>
  {{/list_articles}}
  </div>

</div>
