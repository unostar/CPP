{{ local }}
{{ set_current_issue }}
{{ set_section number="300" }}
{{ assign var="flag" value="1" }}
{{ list_articles length="1" order="bypublishdate desc" constraints="type is service" }}
{{ if $flag }}
{{ if ($gimme->article->publish_date|camp_date_format:"%m-%d" == $smarty.now|camp_date_format:"%m-%d") || ($gimme->article->name == $smarty.now|camp_date_format:"%e %M") }}
<div class="type-o-cont">{{ $gimme->section->name }} - {{ $smarty.now|camp_date_format:"%e.%m.%Y " }}</div>                
<div class="divcont">
   <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>        	
   <div class="intro">{{ $gimme->article->intro }}</div>
   
</div>
{{ assign var="flag" value="0" }}
{{ /if }}
{{ /if }}
{{ /list_articles }}
{{ /local }}