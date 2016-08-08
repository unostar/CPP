//$("#main-menu .menu-scale").show("slow",function(){$("#main-menu .menu-control").show("slow");});
// really don't know, if we need this effect, as it consumes too much resources

$(document).ready(function(){
$("#main-menu .menu-item-button, #main-menu .menu-item-button-big").mouseover(function(){$(this).prev().css("color","#D30000");});
$("#main-menu .menu-item-button, #main-menu .menu-item-button-big").mouseout(function(){$(this).prev().css("color","#FFF");});
$("#main-menu .menu-item-button, #main-menu .menu-item-button-big").hover(function(){$("#menu-scale-bar").animate({left:(Math.floor(Math.random()*520)+parseFloat(210))+"px"},500,"swing");});
});

