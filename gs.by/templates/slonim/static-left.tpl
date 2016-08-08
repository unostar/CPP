<div class="article">
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}{{ if $gimme->article->Author != "" }} <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />Автор: {{ $gimme->article->Author }}{{ /if }} {{ if $gimme->section->number == "540" }}
{{ else }}{{ if $gimme->article->comments_enabled }}<img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />Комментарий {{ list_article_comments order="bydate asc"}}{{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}      {{ /list_article_comments }}{{ /if}}{{ /if }}</p>
        <h1>{{ $gimme->article->name }}</h1>
        <p class="extra"> <span class="print"><a href="{ uri options="template slonim/print.tpl" }}">Напечатать</a></span> <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> <span class="email"><a href="{{ uri options="template slonim/phpscripts/sendtofriend/sendtofriend.php"}}">Отправить ссылку</a></span></p>
           {{ if $gimme->article->has_image(2) }}
        <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}"  class="article-pic"/>
            {{ /if }}
        <p class="intro">{{ $gimme->article->intro }}</p>
        <p class="text">{{ $gimme->article->Full_text }}</p>
       {{ if $gimme->article->has_attachments }}
           {{ list_article_attachments all_languages="true"}}
              <p><a href="{{ uri options="articleAttachment" }}">скачать {{ $gimme->attachment->file_name }}</a>, {{ $gimme->attachment->size_kb }}(kb), {{ $gimme->attachment->description }}</p><br/>
           {{ /list_article_attachments }}
        {{ /if }}
{{ if ($gimme->section->number == "540") || ($gimme->section->number == "550") }}
{{ else }}
{{ include file="slonim/article-left-comments.tpl" }}
{{ /if }}
      </div>