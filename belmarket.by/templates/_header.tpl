<div id="header" class="clearfix">
  <div class="header-content clearfix">
    <div class="logo-img">
      <a href="/"><img src="/templates/images/logo.gif" alt="Логотип Белорусы и рынок" border="0" /></a><br/>
      <p>Eженедельная аналитическая газета для деловых людей</p>
    </div><!-- /.logo-img -->
    <div class="header-left clearfix">
      <div class="today">
        {{ dynamic }}
        <p class="day">{{$smarty.now|camp_date_format:"%W"}}</p>
        <p class="date">{{$smarty.now|camp_date_format:"%e %M %Y"}}</p>
        <p class="time">{{$smarty.now|camp_date_format:"%H:%i"}}</p>
        {{ /dynamic }}
{{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
        {{set_section number="5"}}
        {{list_articles length="1"}}
        <p class="iss_number">№ {{$gimme->article->name}}</p>
        <p class="dates">{{$gimme->article->Lead}}</p>
        {{ /list_articles }}
        {{set_default_section}}
  {{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
      </div><!-- /.today -->
    </div><!-- /.header-left clearfix -->
    {{ dynamic }}
    {{ include file="_header-currency.tpl" }}
    {{ include file="_header-prices.tpl" }}
    {{ include file="_header-weather.tpl" }}
    {{ /dynamic }}
  </div>
</div>
