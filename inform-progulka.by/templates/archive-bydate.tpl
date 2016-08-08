{{ include file="_html-head.tpl" }}

<body id="archive">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
    
      <div id="left-nav" class="left">

{{ include file="left-nav.tpl" }}
            
{{ include file="_banner160x60.tpl" }}
        
        </div><!-- /#left-nav -->   
              
        <div id="section-name" class="right"><p>АРХИВ САЙТА</p></div>
        
        <div id="topstoryblock">
        
          <div id="top-story" class="ui-tabs">                                          

{{ include file="archive-bydate-cont.tpl" }}                     
            
            </div><!-- /#top-story -->
            
{{ include file="archive-advanced-search.tpl" }}
                        
        </div><!-- /#topstoryblock -->
                
    
      <div class="sidebar right">

          <div id="calban">
            
{{ include file="sidebar-calendar.tpl" }}

{{ include file="_banner125x250.tpl" }}

                <div class="clear"></div>
            </div><!-- /#calban -->
            
{{ include file="sidebar-uvazeni.tpl" }}           
            
{{ include file="sidebar-poll.tpl" }}

        </div><!-- /.sidebar -->
    
    </div><!-- /.wrap /.backgrounded -->
    
{{ include file="footer.tpl" }}
    
</body>
</html>
