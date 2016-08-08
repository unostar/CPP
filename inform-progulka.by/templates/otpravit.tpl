{{ include file="_html-head.tpl" }}


<body id="article">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
    
      <div id="left-nav" class="left">

{{ include file="left-nav.tpl" }}            

{{ include file="_banner160x60.tpl" }}   
        
{{ include file="left-ourpubs.tpl" }}
        
{{ include file="_banner160x400.tpl" }}
        
        </div><!-- /#left-nav -->   
   
        <div id="topstoryblock">
        
          <div id="top-story">
             <div id="article-itself">
<h1>Письмо в редакцию</h1>
{{ include file="php/formmailer/dd-formmailer.php" }}

             </div><!-- /#article-itself -->

               <div class="clear"></div>
            </div><!-- /#top-story -->
                               
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
