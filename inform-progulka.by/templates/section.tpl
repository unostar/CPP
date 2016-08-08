{{ include file="_html-head.tpl" }}

<body id="section">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
    
      <div id="left-nav" class="left">
        
{{ include file="left-nav.tpl" }}
        
{{ include file="left-scroll.tpl" }}
        
{{ include file="_banner160x400.tpl" }}
        
        </div><!-- /#left-nav -->   
              
        <div id="section-name" class="right"><p>НОВОСТИ ИЗ РУБРИКИ “{{ $gimme->section->name }}”</p></div>
        
        <div id="topstoryblock">

{{ if $gimme->section->number == 205 }}

{{ include file="section-readers-gallery.tpl" }}

{{ else }}
        
{{ include file="section-top-story.tpl" }}            
{{ include file="section-twobytwo.tpl" }}            

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
