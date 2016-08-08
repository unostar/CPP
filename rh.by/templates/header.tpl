<div id="header">
   <div id="logo">
      <a title="Галоўная" href="/"><img alt="Home" src="/templates/images/logo.png" /></a>
      <p id="current-date">{{ $smarty.now|camp_date_format:"%e %M %Y " }}г.</p>
   </div><!-- /#logo -->

<div id="banner468">
<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://openx.omniton.net/delivery/ajs.php':'http://openx.omniton.net/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=44");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://openx.omniton.net/delivery/ck.php?n=a6a0a362&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://openx.omniton.net/delivery/avw.php?zoneid=44&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a6a0a362' border='0' alt='' /></a></noscript>
</div><!-- /#banner468 -->

   <div id="head-menu">
      <p>Наш Рэгiён:<br />
{{ local }}
{{ set_current_issue }}
{{ set_topic name="town:en" }}
{{assign var="page_n" value=$gimme->url->get_parameter(page)}}
{{$gimme->url->reset_parameter(page)}}
{{ list_subtopics order="bynumber asc" }}
      <a href="{{uri options="template topic-town.tpl"}}">{{ $gimme->topic->name }}</a>{{ if !($gimme->current_subtopics_list->at_end) }}, {{ /if }}
{{ /list_subtopics }}
{{$gimme->url->set_parameter(page,$page_n)}}
{{ /local }}
</p>
   </div><!-- /#head-menu -->

{{ include file="header-search-box.tpl" }}

</div><!-- /#header -->