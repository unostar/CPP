<div id="leftbar">

<div class="type-o-cont">АРХІЎ</div>

<div class="story">
{{ list_issues length="20" constraints="number greater 1" order="bynumber desc"}}
<p class="archived-issue">
<a href="{{ uri options="template issue.tpl" }}">{{ $gimme->issue->name }} (№{{ $gimme->issue->number }})</a> ад {{ $gimme->issue->date|camp_date_format:"%e %M %Y" }}
{{list_articles constraints="section is 350"}}&nbsp;&nbsp;&nbsp;{{list_article_attachments length="1"}}<a href="{{uri options="articleAttachment"}}"><img src="/templates/images/pdf.gif" /> PDF версія</a>{{/list_article_attachments}}{{/list_articles}}
</p>

   {{ if $gimme->current_list->at_end }}

      <div id="prevnext">

      {{ if $gimme->current_list->has_previous_elements }}
         <span><a href="{{ uri options="prev_items" }}">Папярэдняя</a></span>
      {{ else }}
         <span>Папярэдняя</span>
      {{ /if }}
      <span>|</span>
      {{ if $gimme->current_list->has_next_elements }}
         <span><a href="{{ uri options="next_items" }}">Наступная</a></span>
      {{ else }}
         <span>Наступная</span>
      {{ /if }}

      </div><!-- /#prevnext -->

   {{ /if }}

{{ /list_issues }}
</div><!-- /.story -->

{{ include file="advanced-search.tpl" }}        

</div><!-- /#leftbar -->