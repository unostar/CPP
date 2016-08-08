<div class="section-column-2 clearfix">
  <div class="column-2-content">
   <div class="main-box">
  <h2><span style="font-size:9px;">&lt;&lt;</span> Архiў cайта<span style="font-size:9px;">&gt;&gt;</span></h2><br/>
   {{ list_issues length="12" order="bydate desc" }}
   {{ if $gimme->issue->is_current }}
    {{ else }}
     <h1><a href="{{ uri options="template newspaper/archive-list.tpl" }}">{{ $gimme->issue->name }} ад {{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }}</a></h1> 
    {{ /if }}

    {{ if $gimme->current_list->at_end }} 
<p style="margin:20px 0 0 0;">
       {{ if $gimme->current_list->has_previous_elements }}
         <a class="smore" href="{{ uri options="previous_items" }}">Раней</a>
       {{ else }}
Раней
       {{ /if }}
|
    {{ if $gimme->current_list->has_next_elements }}
    <a class="smore" href="{{ uri options="next_items" }}" class="navigation">Пазней</a>
    {{ else }}                                     
Пазней
    {{ /if }}
</p>
    {{ /if }}
{{ /list_issues }}&nbsp;

  </div>
 </div>
</div>