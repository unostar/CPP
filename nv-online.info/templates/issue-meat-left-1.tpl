<div id="section-name"><p>Свежы нумар: {{ $gimme->issue->name }}</p></div>

<div id="meat-left">
       
{{ set_section number="200" }}
<div class="meat-item">
  <div class="meat-item-inner">

<div id="logorow"><img alt="logo" src="/templates/images/logo-smaller.png"  /></div>

{{ set_topic name="паласа:by" }}
{{ list_subtopics order="bynumber asc"}}

{{ if ($gimme->topic->name == "9")||($gimme->topic->name == "10")||($gimme->topic->name == "11")||($gimme->topic->name == "12") }}
{{ else }}
<div class="meat-item-uphead"><span>{{ $gimme->topic->name }} паласа</span></div>    

{{ list_articles constraints="type is A_text" }}


    <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
    
    <p class="pisao">З рубрыкі &quot;{{ $gimme->article->rubric }}&quot;
    {{ if !($gimme->article->author->name == "") }} | {{ $gimme->article->author->name }}{{ /if }}</p>


{{ /list_articles }}
{{ /if }}
{{ /list_subtopics }}

     
  </div><!-- /.meat-item-inner -->
</div><!-- /.meat-item -->

           
{{ include file="front-central-banner.tpl" }}        

</div><!-- /#meat-left -->

{{ unset_topic }}
{{ unset_section }}