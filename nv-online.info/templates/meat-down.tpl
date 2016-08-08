<div id="meat-down">

{{set_issue number="1"}}

{{list_articles length="1" constraints="issue is 1 section is 220"}}
  <div class="fifths">
    <div class="fifths-inner">
      <img class="fifth-logo" alt="RSS" src="/templates/images/fifths-RSS.gif" />
      <h4><a href="http://{{$gimme->publication->site}}/feed/index.rss">{{$gimme->article->name}}</a></h4>
      <p class="subh4">{{$gimme->article->subhead}}</p>
      <a href="http://{{$gimme->publication->site}}/feed/index.rss" target="_blank"><img src="/templates/images/rss-small.gif" />Навіны</a>
      <a href="http://{{$gimme->publication->site}}/feed/printed.rss"><img src="/templates/images/rss-small.gif" />Газетны нумар</a>
    </div>
  </div>
{{/list_articles}}

{{ set_section number="240" }}
{{ list_articles length="1" }}

  <div class="fifths">
    <div class="fifths-inner">
      <img class="fifth-logo" alt="Падпiска" src="/templates/images/fifths-padpiska.gif" />
      <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
      <p class="subh4">{{ $gimme->article->subhead }}</p>
      {{ $gimme->article->intro }}
    </div>
  </div>

{{ /list_articles }}

{{ set_section number="250" }}
{{ list_articles length="1" }}
  
  <div class="fifths">
    <div class="fifths-inner">
      <img class="fifth-logo" alt="contact" src="/templates/images/fifths-contact.gif" />
      <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
      <p class="subh4">{{ $gimme->article->subhead }}</p>
      {{ $gimme->article->intro }}
    </div>
  </div>
  
{{ /list_articles }}



  <div class="fifths">
    <div class="fifths-inner">
      {{ set_section number="230" }}
      {{ list_articles length="1" }}
      <img class="fifth-logo" alt="Рэклама" src="/templates/images/fifths-reklama.gif" />
      <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
      <h4><a href="{{ uri options="article" }}">"Народная воля"</a></h4>
      {{ $gimme->article->intro }}
      {{ /list_articles }}
    </div>
  </div>


  <div class="fifths-last">
    <div class="fifths-inner">
      <img class="fifth-logo" alt="PDF" src="/templates/images/fifths-pdf.gif" />
      <h4><strong>PDF</strong></h4>
     {{ set_issue number="1" }}
     {{ set_section number="260" }}
     {{ list_articles length="1" }}
      <p class="subh4">{{ $gimme->article->subhead }}</p>
      {{ $gimme->article->intro }}
     {{ /list_articles }}
 
      {{set_current_issue}}
      {{ set_section number="310" }}
      {{ list_articles length="1" }}
      {{ list_article_attachments }}
      <p><a href="{{ uri options="articleattachment" }}">спампаваць PDF-файл</a></p>
      {{ /list_article_attachments }}
      {{ /list_articles }}

{{set_default_issue}} 
{{set_default_section}}

    </div>
  </div>                 



{{set_default_issue}}
   
</div><!-- /#meat-down -->