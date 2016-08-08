$(document).ready(function(){

	// главные новости на главной
	$('.main-events .event').featureList({
		output: '.main-events .photos li'
	});

	// разворачиваем блоки в сайдбаре
	$('.expandable header').click(function() {
		$(this).parent().toggleClass("expanded");
	});

	// Опросы в сайдбаре
	$('#poll form').submit(function(){
		var url = $(this).attr("action");
		var form = $(this).serialize();
		$.post(url,form,function(data){$('#poll').html(data);});
		return false;
	});
	$("#poll .results").live("click",function(){
		$('#poll form').find('input[type="radio"]').each(function() {
			$(this).removeAttr("checked");
		});

		$('#poll form').submit();

		return false;
	});

	// Форма на странице архива
	$("#f_search_start_date").datepicker();
	$("#f_search_end_date").datepicker();
	$("form[name=search_articles] select[name=f_search_section] option[value=600]").remove();
	$("form[name=search_articles] select[name=f_search_section] option[value=610]").remove();
	$("form[name=search_articles] select[name=f_search_section] option[value=620]").remove();
	$("form[name=search_articles] select[name=f_search_section] option[value=630]").remove();
	$("form[name=search_articles] select[name=f_search_section] option[value=640]").remove();

});






// делаем одинаковую высоту у двух одинаковых блоков на главной
$(window).load(function() {
	var currentTallest = 0;

	$('.home .block').each(function() {
		currentTallest = Math.max(currentTallest, $(this).height());
	});
	$('.home .block').each(function() {
		$(this).height(currentTallest);
	});
});
