<div id="section-name"><p>Print issue: {{ $gimme->issue->name }}</p></div>

<div id="meat-left">
       
{{ unset_topic }} 
{{ list_sections }}

<div class="meat-item">
  <div class="meat-item-inner">

{{ if $gimme->current_sections_list->at_beginning }}<div id="logorow"><img alt="logo" src="/templates/images/logo-smaller.png"  /></div>{{ /if }}

    <div class="meat-item-uphead"><span>{{ $gimme->section->name }}</span></div>

{{ list_articles length="1" constraints="type is A_text" }}

    <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>

{{ /list_articles }}

    <div class="right-list">
      <p class="jasche">ЯШЧЭ З ГЭТАЙ РУБРЫКІ</p>
      <ul>

{{ list_articles constraints="type is A_text" }}
{{ if $gimme->current_articles_list->index == 1 }}
{{ else }}
  <li{{ if $gimme->current_articles_list->at_end }} class="last"{{ /if }}><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /if }}
{{ /list_articles }}

      </ul>
    </div>

{{ list_articles length="1" constraints="type is A_text" }}

    {{ if $gimme->article->has_image(1) }}<img class="meat-item-image" alt="{{ $gimme->article->image1->description }}" src="{{ uri options="image 1" }}" />{{ /if }}
    <div class="intro">{{ $gimme->article->intro }}</div>        
    <div class="intro-tools">{{ $gimme->article->publish_date|camp_date_format:"%e. %M %Y г." }} <a href="{{ uri options="article" }}">Камэнтары ({{ $gimme->article->comment_count }})</a>

{{ /list_articles }}

</div>          
  </div>
</div><!-- /.meat-item -->

{{ /list_sections }}
           
{{ include file="front-central-banner.tpl" }}        

</div><!-- /#meat-left -->