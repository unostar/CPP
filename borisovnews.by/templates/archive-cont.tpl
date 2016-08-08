<div id="archive-3" class="clearfix">
<div class="h1">Архив</div>
{{*
<div class="home-program-slider" id="slider">
<a class="prev"></a>
<div class="scrollable">
  <div class="items">
    {{list_articles constraints="section is 1" ignore_issue="true" order="bypublishdate desc"}}
    <div>
      {{if $gimme->article->has_image(1)}}
      <a rel="lightbox" href="{{ uri options="image 2" }}" style="padding:0" title="Печатное издание &laquo;Борисовские Новости&raquo;"><img src="{{ uri options="image 1" }}" alt="{{$gimme->article->image1->description}}" /></a><br/>
      {{/if}}
      <a class="archive-issue-link" href="{{uri options="template issue-contents.tpl"}}">№{{ $gimme->issue->number }} ад {{ $gimme->issue->publish_date|camp_date_format:"%d.%M %Y" }}</a>
    </div>
    {{ /list_articles }}
  </div>
</div>
<a class="next"></a>
<br clear="all" />
<script type="text/javascript">$(function(){$("div.scrollable").scrollable({size:4,clickable:false,interval:0,speed:800});});</script>
</div>
*}}
<hr class="section-divider" />
<div class="archive-1-column">
  <div class="h1 small">Архив статей</div>
  {{ include file="calendar-box.tpl" }}
</div>
<div class="archive-2-column">
  <div class="h1 small">Последние</div>
{{ list_issues length="15" order="bydate desc" }}
{{if !$gimme->issue->is_current}}
  <p><a href="{{uri options="template issue-contents.tpl"}}">{{ $gimme->issue->name }}</a></p>
{{/if}}
{{ /list_issues }}
</div>


<div class="archive-3-column">
  <div class="h1 small">Поиск</div>
{{ search_form template="search.tpl" submit_button="Поиск" html_code="id=\"advanced-search\"" button_html_code="id=\"advasearch\"" }}
<fieldset>
   <div class="form-item">
      <label for="SearchKeyword">Искать:</label>
     {{ camp_edit object="search" attribute="keywords" html_code="class=\"wider\"" }}
   </div>
              
   <div class="form-item">
      <label for="matchAll">&nbsp;</label>{{ camp_select object="search" attribute="mode" }}по всем словам
   </div>
                    
   <div class="form-item">
      <label for="SearchCriteria" class="fcrit">Критерии поиска:</label>
      <div id="SearchCriteria">
      <input type="radio" name="f_search_scope" value="title" />&nbsp;название
      <input type="radio" name="f_search_scope" value="content" checked="checked" />&nbsp;текст
      <input type="radio" name="f_search_scope" value="author" />&nbsp;автор
      </div>
   </div>

   <div class="form-item">
      <label for="SearchIssue">Выпуск:</label>
     {{ camp_select object="search" attribute="issue" html_code="class=\"nodeitem\"" }}
   </div>

   <div class="form-item"><label for="SearchDate">Дата:</label><div id="SearchDate">{{ camp_edit object="search" attribute="start_date" }}{{ camp_edit object="search" attribute="end_date" }}</div></div>
</fieldset>
{{ /search_form }}
</div>
 </div>


</div>
