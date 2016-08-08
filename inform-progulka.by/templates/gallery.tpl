{{ include file="_html-head.tpl" }}

<script type="text/javascript"> 
$(document).ready(function(){     
//Photo gallery - pwi plugin
$("#photo_gallery").pwi({
  username: 'inform.progulka',
{{ if $gimme->article->defined }}  
  mode: 'album',
  album: '{{ $gimme->article->name }}',
{{ /if }}
  maxResults: 12,
  albumThumbSize: 144,
  thumbSize: 144,
  showSlideshowLink: false,
  popupExt: function(photos){
  photos.fancybox({
    'titleShow'   : true,
    'titlePosition' : 'inside',
   'hideOnContentClick': false
  })
  }
}); 
}); 
</script>

<body id="archive">

{{ include file="header.tpl" }}
    
    <div id="maincont1" class="wrap backgrounded">
    
      <div id="left-nav" class="left">

{{ include file="left-nav.tpl" }}
            
{{ include file="_banner160x60.tpl" }}
        
        </div><!-- /#left-nav -->   
              
        <div id="section-name" class="right"><p>Фотогалерея</p></div>
        
        <div id="topstoryblock">
        
          <div id="top-story" class="ui-tabs">                                         

              <div id="photo_gallery"></div>                   
            
          </div><!-- /#top-story -->
                        
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
