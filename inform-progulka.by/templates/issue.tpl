{{ include file="_html-head.tpl" }}


<body id="archive">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
    
      <div id="left-nav" class="left">

{{ include file="left-nav.tpl" }}
            
{{ include file="_banner160x60.tpl" }}
        
{{ include file="left-ourpubs.tpl" }}
        
        </div><!-- /#left-nav -->   
              
        <div id="section-name" class="right"><p>АРХИВ САЙТА</p></div>
        
        <div id="topstoryblock">
        
          <div id="top-story" class="ui-tabs">
            
        <ul class="ui-tabs-nav">
            <li class="top-rounded"><a href="#last-issue"><span>ПОСЛЕДНИЙ ВЫПУСК</span></a></li>
            <li class="top-rounded"><a href="#other-issues"><span>ДРУГИЕ ВЫПУСКИ</span></a></li>
                    <li class="top-rounded"><a href="#poll-archive"><span>АРХИВ ОПРОСОВ</span></a></li>
        </ul>                       

{{ include file="archive-last-issue.tpl" }}            

{{ include file="archive-other-issues.tpl" }}
            
{{ include file="archive-poll-archive.tpl" }}          
            
            </div><!-- /#top-story -->
            
    <script type="text/javascript">
  $(function() {
    $("#top-story").tabs();
  }); 
  </script>
            
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
