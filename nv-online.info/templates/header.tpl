<div id="header-outter">
  <div id="header">
  {{* include file="header-banner.tpl" *}}
  {{ include file="header-projects.tpl" }}
  <div id="header-date"><span><a href="/">nv-online.info</a>, {{ $smarty.now|camp_date_format:"%W %e %M %Y г." }}</span></div>

{{ include file="header-subnav.tpl" }}

<div id="main-logo" ><a href="/"><img alt="NV Logo" src="/templates/images/logo.png" /></a></div>
        
{{ include file="header-uvaga.tpl" }}

<div id="header-right">
{{ dynamic }}
{{ include file="header-weather.tpl" }}
{{ include file="header-citat.tpl" }}
{{ /dynamic }}
</div><!-- /#header-right -->

{{ include file="header-main-nav.tpl" }}

</div><!-- /#header -->
</div><!-- /#header-outter -->