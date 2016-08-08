{{ local }}
{{ set_current_issue }}

      <div id="praekt">
         <p id="praektrg"><a href="{{ uri options="template prajecty.tpl" }}">усе праекты</a><span>Праекты</span> Рэгіянальнай газеты</p>
         <div id="praekt-inner">
{{ set_section number="170" }}
<p class="separated"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>         
{{ set_section number="250" }}
<p class="separated"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
{{ list_sections length="3" constraints="number greater 170 number smaller 260 number not 250" }}
      <p class="separated"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
{{ /list_sections }}
   </div><!-- /#praekt-inner -->
   </div>
{{ /local }}
