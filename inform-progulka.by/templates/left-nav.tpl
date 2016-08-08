          <img id="sectit" alt="РУБРИКИ САЙТА" src="/templates/images/leftnav-title.png" />
          <ul id="nav">
          
{{ local }}          
{{ set_current_issue }}         
{{ list_sections constraints="number smaller 200" }}     
<li><a {{ if ($gimme->section->number == $gimme->default_section->number) }}class="cursec" {{ /if }}href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>     
{{ /list_sections }}
{{ /local }}          

          </ul>