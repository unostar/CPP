document.documentElement.id = 'js';

$(document).ready(function(){
	$('.slideshow ul').galleryView({
		transition_interval: 0,
		panel_width: 900,
		panel_height: 600,
		show_overlays: true,
		show_panel_nav: true,
		frame_width: 120,
		frame_height: 80
	});
});