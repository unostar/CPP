{{ include file="_html-head.tpl" }}


<body id="article">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
    
      <div id="left-nav" class="left">

{{ include file="left-nav.tpl" }}            
  
{{ include file="left-ourpubs.tpl" }}
        
{{ include file="_banner160x400.tpl" }}
        
        </div><!-- /#left-nav -->   
{{ if $gimme->section->number lt 200 }}              
        <div id="section-name" class="right"><p>НОВОСТИ ИЗ РУБРИКИ “{{ $gimme->section->name }}”</p></div>
{{ /if }}        
        <div id="topstoryblock">
        
          <div id="top-story" class="ui-tabs">
          
{{ if $gimme->section->number lt 500 }}
            
        <ul class="ui-tabs-nav">
            <li class="top-rounded"><a href="#article-itself"><span>ТЕКСТ СТАТЬИ</span></a></li>
            <li class="top-rounded"><a href="#article-comments"><span>КОММЕНТАРИИ</span></a></li>
        
{{ local }}    
{{ list_article_images }}
    {{ if $gimme->current_article_images_list->at_end }}
        {{ if $gimme->current_article_images_list->index gt 2 }}  
        {{ assign var="image_count" value=$gimme->current_article_images_list->index-2 }}
        {{ /if }}
    {{ /if }} 
{{ /list_article_images }}            
            
        {{ if $image_count }}  
         <li class="top-rounded"><a href="#article-gallery"><span>ФОТОГАЛЕРЕЯ</span></a></li>
        {{ /if }}           
            
{{ /local }}
                   
        </ul>            
            
{{ include file="article-text.tpl" }}
            
{{ include file="article-comments.tpl" }}
            
{{ local }}    
{{ list_article_images }}
    {{ if $gimme->current_article_images_list->at_end }}
        {{ if $gimme->current_article_images_list->index gt 2 }}  
        {{ assign var="image_count" value=$gimme->current_article_images_list->index-2 }}
        {{ /if }}
    {{ /if }} 
{{ /list_article_images }}            
            
        {{ if $image_count }}  
{{ include file="article-gallery.tpl" }}  
        {{ /if }}           
            
{{ /local }}            

{{ else }}        
{{ include file="article-static.tpl" }}
{{ /if }}       
     
            </div><!-- /#top-story -->
        
{{ if $gimme->section->number lt 500 }}    
    <script type="text/javascript">
  $(function() {
    $("#top-story").tabs();
  }); 
  </script>
            
{{ include file="articles-other.tpl" }}
{{ /if }}                        
        </div><!-- /#topstoryblock -->
                
    
      <div class="sidebar right">

{{ include file="sidebar-weamon.tpl" }}
            
{{ include file="sidebar-most.tpl" }}

          <div id="calban">
            
{{ include file="sidebar-calendar.tpl" }}

{{ include file="_banner125x250.tpl" }}

                <div class="clear"></div>
            </div><!-- /#calban -->
            
{{ include file="sidebar-uvazeni.tpl" }}           
            
{{ include file="sidebar-poll.tpl" }}

{{ include file="sidebar-service.tpl" }}

        </div><!-- /.sidebar -->
    
    </div><!-- /.wrap /.backgrounded -->
    
{{ include file="footer.tpl" }}
    
</body>
</html>
