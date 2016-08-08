{{ include file="_html-head.tpl" }}

<body id="home">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
        <div id="left-nav" class="left">
        
{{ include file="left-nav.tpl" }}
            
        </div><!-- /#left-nav -->
        
{{ include file="ticker.tpl" }}  
        
        <div id="topstoryblock">
        
{{ include file="front-top-story.tpl" }}
            
{{ include file="front-two-more.tpl" }}
            
        </div><!-- /#topstoryblock -->
    
      <div class="sidebar right">

{{ include file="sidebar-weamon.tpl" }} 
           
{{ include file="sidebar-most.tpl" }}

        </div><!-- /.sidebar -->
    
    </div><!-- /.wrap /.backgrounded -->
    
{{ include file="front-photo-gallery.tpl" }}
    
    <div id="maincont2" class="wrap backgrounded">
    
    <div id="newsbysection" class="left">
        
{{ include file="front-newsbysec.tpl" }}

{{include file="blogs.tpl"}}

{{ include file="_banner-front-2rows.tpl" }}

            <div class="promoblock clear">
            
{{ include file="_banner160x400.tpl" }}
            
{{ include file="front-ourpubs.tpl" }}

            </div><!-- /.promoblock -->     
 
             <div class="promoblock">
             {{ include file="_banner550x160.tpl" }}
             </div><!-- /.promoblock -->        
 
        </div><!-- /#newsbysections -->
        
        <div class="sidebar right">
        
          <div id="calban">
            
{{ include file="sidebar-calendar.tpl" }}

{{ include file="_banner125x250.tpl" }}

                <div class="clear"></div>
            </div><!-- /#calban -->
            
{{ include file="sidebar-readers.tpl" }}
            
{{ include file="sidebar-concurs.tpl" }}
            
{{ include file="sidebar-uvazeni.tpl" }} 

{{ include file="front-right-banner.tpl" }}    

{{ include file="sidebar-family.tpl" }}    
            
{{ include file="sidebar-poll.tpl" }}

{{ include file="sidebar-service.tpl" }}
            
        </div><!-- /.sidebar -->
        
    </div><!-- /.wrap /.backgrounded --> 
    
{{ include file="footer.tpl" }}
    
</body>
</html>