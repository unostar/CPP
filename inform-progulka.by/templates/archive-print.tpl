{{ include file="_html-head.tpl" }}


<body id="archive">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
    
      <div id="left-nav" class="left">

{{ include file="left-nav.tpl" }}
            
{{ include file="_banner160x60.tpl" }}
        
{{ include file="left-ourpubs.tpl" }}
        
        </div><!-- /#left-nav -->   
              
        <div id="section-name" class="right"><p>PDF АРХИВ</p></div>
        
        <div id="topstoryblock">
        
          <div id="top-story" class="ui-tabs">
            
        <ul class="ui-tabs-nav">
            <li class="top-rounded"><a href="#inform-progulka"><span>ИНФОРМ-ПРОГУЛКА</span></a></li>
            <li class="top-rounded"><a href="#vita-press"><span>ВИТА-ПРЕСС</span></a></li>
            <li class="top-rounded"><a href="#gazeta-luninecki"><span>ГАЗЕТА ПА-ЛУНІНЕЦКІ</span></a></li>
        </ul>                       

{{ include file="archive-print-progulka.tpl" }}            

{{ include file="archive-print-vitapress.tpl" }}
            
{{ include file="archive-print-luninecki.tpl" }}          
            
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
