  YAHOO.namespace("example.calendar");
  YAHOO.example.calendar.init = function() {
    function handleSelect(type,args,obj) {
      var dates = args[0];
      var date = dates[0];
      var year = date[0], month = date[1], day = date[2];
			
      var txtDate1 = document.getElementById("date1");
      txtDate1.value = year + "-" + month + "-" + day;
    }

    function updateCal() {

      var txtDate1 = document.getElementById("date1");

      if (txtDate1.value != "") {
        YAHOO.example.calendar.cal1.select(txtDate1.value);
        var selectedDates = YAHOO.example.calendar.cal1.getSelectedDates();
        if (selectedDates.length > 0) {
          var firstDate = selectedDates[0];
          YAHOO.example.calendar.cal1.cfg.setProperty("pagedate", (firstDate.getMonth()+1) + "/" + firstDate.getFullYear());
          YAHOO.example.calendar.cal1.render();
        } else {
          alert("Cannot select a date before 1/1/2006 or after 12/31/2008");
        }
      }
    }

    // For this example page, stop the Form from being submitted, and update the cal instead
    function handleSubmit(e) {
      updateCal();
      YAHOO.util.Event.preventDefault(e);
    }
		
    YAHOO.example.calendar.cal1 = new YAHOO.widget.Calendar("cal1","cal1Container", { mindate:"1/1/2006", maxdate:"12/23/2008" });


YAHOO.example.calendar.cal1.cfg.setProperty("MONTHS_SHORT",   ["Jan", "Feb", "M\u00E4r", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dez"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("MONTHS_LONG",    ["января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_1CHAR", ["S", "M", "D", "M", "D", "F", "S"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_SHORT", ["Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_MEDIUM",["Son", "Mon", "Die", "Mit", "Don", "Fre", "Sam"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_LONG",  ["воскресенье", "понедельник", "вторник", "среда", "четверг", "пятница", "суббота"]); 
     

    YAHOO.example.calendar.cal1.selectEvent.subscribe(handleSelect, YAHOO.example.calendar.cal1, true);

{{ list_issues }}
{{ assign var="date" value=$campsite->issue->publish_date }}
YAHOO.example.calendar.cal1.addRenderer("{{ $date|camp_date_format:"%m/%d/%Y" }}", YAHOO.example.calendar.cal1.renderCellStyleHighlight1); 
{{ /list_issues }}

    YAHOO.example.calendar.cal1.render();
    YAHOO.util.Event.addListener("update", "click", updateCal);

  }

  YAHOO.util.Event.onDOMReady(YAHOO.example.calendar.init);