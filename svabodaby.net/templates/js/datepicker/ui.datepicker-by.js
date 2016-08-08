/* Russian (UTF-8) initialisation for the jQuery UI date picker plugin. */
/* Written by Danalan (danalan@danalan.info) */
jQuery(function($){
	$.datepicker.regional['by'] = {
		closeText: 'Зачыніць',
		prevText: '&#x3c;Папяр',
		nextText: 'Наступ&#x3e;',
		currentText: 'Сёння',
		monthNames: ['Студзень','Люты','Сакавік','Красавік','Травень','Чэрвень',
    'Ліпень','Жнівень','Верасень','Кастрычнік','Лістапад','Снежань'],
		monthNamesShort: ['Сту','Лют','Сак','Кра','Тра','Чэр',
		'Ліп','Аўг','Вер','Кас','Ліс','Сне'],
		dayNames: ['нядзеля','панядзелак','аўторак','серада','чацвер','пятніца','субота'],
		dayNamesShort: ['няд','пан','аўт','сер','чац','пят','суб'],
		dayNamesMin: ['Нд','Пн','Ат','Ср','Чц','Пт','Сб'],
		dateFormat: 'dd.mm.yy', firstDay: 1,
		isRTL: false};
	$.datepicker.setDefaults($.datepicker.regional['by']);
});