<div id="leftbar">

<div class="type-o-cont">Праекты Рэгiянальнай газеты</div>

{{ set_section number="170" }}
<p class=class="archived-issue"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p><br/>
{{ set_section number="250" }}
<p class=class="archived-issue"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p><br/>
{{ list_sections constraints="number greater 170 number smaller 299 number not 250" }}
<p class=class="archived-issue"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p><br/>
{{ /list_sections }}
</div><!-- /#leftbar -->