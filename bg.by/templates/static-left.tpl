<div class="article-column" id="article-column">
<div class="meta"> <a href="{{ uri options="template phpscripts/sendtofriend/sendtofriend.php"}}" class="send">отправить ссылку</a><img src="/templates/images/separator-pipe.gif" alt="separator" class="separator"  />
<a href="{{ uri options="template print.tpl" }}" class="print">версия для печати</a><img src="/templates/images/separator-pipe.gif" alt="separator" class="separator" />
<a href="#" onclick="javascript:TextSize(-1);return false;" title="Уменьшить шрифт"><img src="/templates/images/fontsmall.gif" alt="" class="icon" /></a>
<!--a href="#" onclick="changeFontSize('article-left-content',0)" title="Установить шрифт по умолчанию"><img src="/templates/images/fontreset.gif" alt="" class="icon" /></a-->
<a href="#" onclick="javascript:TextSize(1);return false;" title="Увеличить шрифт"><img src="/templates/images/fontbig.gif" alt="" class="icon" /></a>
изменить шрифт</div>
{{ if $gimme->article->has_image(2) }}
        <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" class="picture" />
{{ /if }}
{{ if $gimme->article->intro == "" }}
{{ else }}
        <p class="intro">{{ $gimme->article->intro }}</p>
{{ /if }}
        <p class="text" id="text">{{ $gimme->article->Full_text }}</p>
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
<p><a href="{{ uri options="articleAttachment" }}">скачать {{ $gimme->attachment->file_name }}, {{ $gimme->attachment->size_kb }}(kb)</a></p>
{{ /list_article_attachments }}
{{ /if }}
</div>