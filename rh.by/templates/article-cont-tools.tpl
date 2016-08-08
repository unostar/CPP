<div id="article-tools">
   <a id="drukavac" href="{{ uri options="template printer.tpl" }}">Друкаваць</a>
{{ if $gimme->article->comments_enabled }}
   <a id="komentari" href="#comments">Камэнтарыi ({{ $gimme->article->comment_count }})</a>
{{ /if }}
   <a id="peraslac" href="http://{{ $gimme->publication->site }}{{ uri options="template php/sendtofriend/sendtofriend.php"}}">Пераслаць на э-адрас</a>

{{ local }}
{{ set_issue number="1" }}
{{ set_section number="4" }}
{{ list_articles length="1" order="bypublishdate desc" constraints="type is static" }}
   <a id="areses" href="{{ uri options="article" }}">{{ $gimme->section->name }}</a>
{{ /list_articles }}
{{ /local }}
</div><!-- /#article-tools -->