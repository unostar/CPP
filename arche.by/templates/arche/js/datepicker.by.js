// jquery.DatepickerUI - BY language
jQuery(function(a){a.datepicker.regional.by={closeText:"Зачыніць",prevText:"&#x3c;Папяр",nextText:"Наст&#x3e;",currentText:"Сёння",monthNames:["Студзень","Люты","Сакавік","Красавік","Травень","Чэрвень","Ліпень","Жнівень","Верасень","Кастрычнік","Лістапад","Снежань"],monthNamesShort:["Студз.","Люты","Сакавік","Красав.","Трав.","Чэрв.","Ліпень","Жнів.","Верас.","Кастр.","Лістап.","Снеж."],dayNames:["нядзеля","панядзелак","аўторак","серада","чацвер","пятніца","субота"],dayNamesShort:["няд","пан","аўт","сер","чац","пят","суб"],dayNamesMin:["Нд","Пн","Аў","Ср","Чц","Пт","Сб"],weekHeader:"Тыд",dateFormat:"yy-mm-dd",firstDay:1,isRTL:false,showMonthAfterYear:false,yearSuffix:"",duration:"fast",gotoCurrent:true,showAnim:""};a.datepicker.setDefaults(a.datepicker.regional.by)});

$(document).ready(function(){

  $("#f_search_start_date").datepicker();
  $("#f_search_end_date").datepicker();

});