{{ dynamic }}
<div id="section-name"><p>АРХІЎ</p></div>

  <div id="central-divide">

<div id="big-story">
<div id="big-story-inner">

{{ list_issues length="10" order="bynumber desc" }}

  <div class="more-stories-item">
    <h3><a href="{{ uri options="template issue-front.tpl" }}">{{ $gimme->issue->name }} (№{{ $gimme->issue->number }})</a> ад {{ $gimme->issue->publish_date|camp_date_format:"%e %M %Y" }}</h3>
{{list_articles length="1" constraints="section is 310"}}
{{list_article_attachments length="1"}}
  <h4 style="margin-bottom:5px;padding-bottom:10px;border-bottom:1px solid #CCC;"><a href="{{uri options="articleAttachment"}}"><img src="/templates/images/fifths-pdf.gif" alt="PDF" height="12" />&nbsp;PDF версія выдання</a></h4>
{{/list_article_attachments}}
{{/list_articles}}
  </div>                 

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

</div>
</div><!-- /#big-story -->

{{ include file="archive-calendar.tpl" }}

  </div><!-- /#central-divide -->


<div class="meat-item">
  <div class="meat-item-inner">
    {{ include file="search-advanced.tpl" }}

  </div>
</div>
{{ /dynamic }}