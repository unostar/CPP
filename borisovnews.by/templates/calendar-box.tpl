      <div class="cal">

        <div class="center-content-blank-calendar" style="padding-top:10px;">
    <table width="100%" cellspacing="0" cellpadding="4" class="yui-skin-sam">
    <tr>
      <td>
        <div id="cal1Container" style="margin-bottom:3px;"></div>
{{ local }}
{{ unset_issue }}
{{ unset_section }}
{{ unset_article }}
    {{ unset_topic }}
        <form method="post" action="{{* uri options="template archive-calendar.tpl" *}}" name="dates" id="dates">
    <input type="hidden" name="date1" id="date1" />

        </form>
{{ /local }}
      </td>
    </tr>
    </table>
</div>
        </div>
<script type="text/javascript">
<!--
  YAHOO.namespace("example.calendar");
  YAHOO.example.calendar.init = function() {
    function handleSelect(type,args,obj) {
      var dates = args[0];
      var date = dates[0];
      var year = date[0], month = date[1], day = date[2];
      var txtDate1 = document.getElementById("date1");
      txtDate1.value = year + "-" + month + "-" + day;
      var linkTo = '{{ uri options="template archive-calendar.tpl" }}&date=' + txtDate1.value;
      window.location = linkTo;
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
          alert("Cannot select a date before 1/1/2006 or after {{ $smarty.now|camp_date_format:"%m/%d/%Y" }}");
        }
      }
    }

    // For this example page, stop the Form from being submitted, and update the cal instead
    function handleSubmit(e) {
      updateCal();
      YAHOO.util.Event.preventDefault(e);
    }

    YAHOO.example.calendar.cal1 = new YAHOO.widget.Calendar("cal1","cal1Container", 
                                                           { mindate:"1/1/2006", 
                                                             maxdate:"{{ $smarty.now|camp_date_format:"%m/%d/%Y" }}",
                                                             LOCALE_WEEKDAYS:"short", 
                                                             START_WEEKDAY: 1 });   

YAHOO.example.calendar.cal1.cfg.setProperty("MONTHS_SHORT",   ["Янв", "Фев", "Мар", "Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("MONTHS_LONG",    ["января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_1CHAR", ["В", "П", "В", "С", "Ч", "П", "С"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_SHORT", ["Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_MEDIUM",["Вск", "Пон", "Втр", "Срд", "Чтв", "Птн", "Сбт"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_LONG",  ["воскресенье", "понедельник", "вторник", "среда", "четверг", "пятница", "суббота"]); 
     

    YAHOO.example.calendar.cal1.selectEvent.subscribe(handleSelect, YAHOO.example.calendar.cal1, true);

{{ list_issues }}
{{ assign var="date" value=$gimme->issue->publish_date }}
YAHOO.example.calendar.cal1.addRenderer("{{ $date|camp_date_format:"%m/%d/%Y" }}", YAHOO.example.calendar.cal1.renderCellStyleHighlight1); 
{{ /list_issues }}

    YAHOO.example.calendar.cal1.render();
    {{* YAHOO.util.Event.addListener("update", "click", updateCal); *}}
    YAHOO.util.Event.addListener("dates", "submit", handleSubmit);

  }

  YAHOO.util.Event.onDOMReady(YAHOO.example.calendar.init);
//-->
</script>