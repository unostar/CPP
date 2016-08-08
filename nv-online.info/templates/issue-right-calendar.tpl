<div class="meat-right-item" style="border-top: none; position: relative; top: -25px">
  <p class="meatrigred">ШУКАЦЬ У АРХІВЕ З ДАПАМОГАЙ КАЛЕНДАРА</p>

<div class="center-content-blank-calendar">
    <table width="100%" cellspacing="0" cellpadding="4" class="yui-skin-sam">
    <tr>
      <td>
        <div id="cal1Container" style="margin-bottom:3px;"></div>
{{ local }}
{{ unset_issue }}
{{ unset_section }}
{{ unset_article }}
    {{ unset_topic }}
        <form method="post" action="{{* uri options="template front.tpl" *}}" name="dates" id="dates">
    <input type="hidden" name="date1" id="date1" />

        </form>
{{ /local }}
      </td>
    </tr>
    </table>
</div>

<script type="text/javascript">
  YAHOO.namespace("example.calendar");
  YAHOO.example.calendar.init = function() {
    function handleSelect(type,args,obj) {
      var dates = args[0];
      var date = dates[0];
      var year = date[0], month = date[1], day = date[2];
      var txtDate1 = document.getElementById("date1");
      txtDate1.value = year + "-" + month + "-" + day;
      var linkTo = '{{ uri options="template calendar-results.tpl" }}&date=' + txtDate1.value;
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

YAHOO.example.calendar.cal1.cfg.setProperty("MONTHS_SHORT",   ["Jan", "Feb", "M\u00E4r", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dez"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("MONTHS_LONG",    ["студзень", "люты", "сакавiк", "красавiк", "май", "чэрвень", "лiпень", "жнiвень", "верасень", "каcтрычнiк", "лiстапад", "снежань"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_1CHAR", ["S", "M", "D", "M", "D", "F", "S"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_SHORT", ["Нд", "Пн", "Аўт", "Ср", "Чц", "Пт", "Сб"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_MEDIUM",["Son", "Mon", "Die", "Mit", "Don", "Fre", "Sam"]); 
YAHOO.example.calendar.cal1.cfg.setProperty("WEEKDAYS_LONG",  ["нядзеля", "панядзелак", "аўторак", "серада", "чацвер", "пятнiца", "субота"]); 
     

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

</script>

</div>