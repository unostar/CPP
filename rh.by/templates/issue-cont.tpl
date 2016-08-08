<div id="leftbar">

<div class="type-o-cont">{{ $gimme->issue->name }} ад {{ $gimme->issue->date|camp_date_format:"%e. %M %Y." }}</div>

{{ list_sections constraints="number smaller 200" }}
<div class="story">
   <h3><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></h3>
   {{ list_articles }}
   <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
   {{ /list_articles }}
</div><!-- /.story -->
{{ /list_sections }}

</div><!-- /#leftbar -->