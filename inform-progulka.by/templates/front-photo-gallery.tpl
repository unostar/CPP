<div id="galtrack">
<div class="wrap">

<div id="galtopline"> 
	<div class="left"><h3>ФОТОГАЛЕРЕЯ<h3></div>
	<div class="right"><a href="{{ uri options="template gallery.tpl" }}">Все темы фотогалереи >></a></div>
	<div class="clear"></div>
 </div><!-- /#galtopline -->

<div class="left">
	<div class="b-maincontent-il">
		<div class="b-maincontent-ir">
		  <div id="photo-scrollable" class="b-maincontent-i">
		    <div class="c-photovideo_photo g-tjustify">
		      <a class="prev c-photovideo_la" title="Назад"></a>
		      <a class="next c-photovideo_ra" title="Наперад"></a>
		    </div>
		    <div class="navi c-photovideo_bullets"></div>
		  </div>
		</div>
	</div>
</div><!-- /.left -->

<div class="right">
{{ local }}{{ set_issue number="1" }}{{ set_section number="900" }}
{{ list_articles length="8" constraints="type is photo_gallery" }} 
<div class="gallery-album">
    <a href="{{ uri options="template gallery.tpl" }}"><img alt="{{ $gimme->image1->description }}" src="{{ uri options="image 1 width 100 height 72" }}" /></a>
    <h4><a href="{{ uri options="template gallery.tpl" }}">{{ $gimme->article->gallery_name }}</a></h4>
</div> 
{{ /list_articles }}
{{ /local }}
</div><!-- /.right -->

</div><!-- /.wrap -->
</div><!-- /#galtrack -->
