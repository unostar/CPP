<header class="header">
  <h1 class="logo"><a href="/{{$gimme->language->code}}/"><img src="/templates/img/logo.png" width="375" height="69" alt="{{if $gimme->language->code=="ru"}}Витебский курьер{{else}}Vitebsk courier{{/if}}"></a></h1><!-- .logo -->
  <nav>
    <ul class="nav-main">
{{set_issue number="1"}}

      <li{{if $gimme->default_section->number > 1 && $gimme->default_section->number < 100 || !$gimme->default_section->defined}} class="current"{{/if}}>
      <a>{{if $gimme->language->code=="ru"}}Новости{{else}}News{{/if}}</a>
        <ul class="second-level">
{{list_sections constraints="number greater 1 number smaller 100"}}
          <li{{if $gimme->section->number==$gimme->default_section->number}} class="current"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
        </ul><!-- .second-level -->
      </li>

      <li{{if $gimme->default_section->number > 100 && $gimme->default_section->number < 200}} class="current"{{/if}}>
      <a>{{if $gimme->language->code=="ru"}}Спецпроекты{{else}}Special Projects{{/if}}</a>
        <ul class="second-level">
{{list_sections constraints="number greater 100 number smaller 200"}}
          <li{{if $gimme->section->number==$gimme->default_section->number}} class="current"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
        </ul><!-- .second-level -->
      </li>

      <li{{if $gimme->default_section->number > 200 && $gimme->default_section->number < 300}} class="current"{{/if}}>
      <a>{{if $gimme->language->code=="ru"}}Советы{{else}}Advices{{/if}}</a>
        <ul class="second-level">
{{list_sections constraints="number greater 200 number smaller 300"}}
          <li{{if $gimme->section->number==$gimme->default_section->number}} class="current"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
        </ul><!-- .second-level -->
      </li>

      <li{{if $gimme->default_section->number > 300 && $gimme->default_section->number < 400}} class="current"{{/if}}>
      <a>{{if $gimme->language->code=="ru"}}Отдых и развлечения{{else}}Leisure & entertainment{{/if}}</a>
        <ul class="second-level">
{{list_sections constraints="number greater 300 number smaller 400"}}
          <li{{if $gimme->section->number==$gimme->default_section->number}} class="current"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
        </ul><!-- .second-level -->
      </li>

      <li{{if $gimme->default_section->number > 400 && $gimme->default_section->number < 500}} class="current"{{/if}}>
      <a>{{if $gimme->language->code=="ru"}}Читатели пишут{{else}}Readers write{{/if}}</a>
        <ul class="second-level">
{{list_sections constraints="number greater 400 number smaller 500"}}
          <li{{if $gimme->section->number==$gimme->default_section->number}} class="current"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
        </ul><!-- .second-level -->
      </li>

      <li{{if $gimme->default_section->number > 600 && $gimme->default_section->number < 700}} class="current"{{/if}}>
      <a>{{if $gimme->language->code=="ru"}}О нас{{else}}About us{{/if}}</a>
        <ul class="second-level">
{{list_sections constraints="number greater 600 number smaller 700"}}
          <li{{if $gimme->section->number==$gimme->default_section->number}} class="current"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
        </ul><!-- .second-level -->
      </li>

{{list_sections constraints="number greater 500 number smaller 600"}}
      <li{{if $gimme->section->number==$gimme->default_section->number}} class="current"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}

{{set_issue number="1"}}{{set_default_section}}{{set_default_article}}{{unset_topic}}
    </ul><!-- .nav-main -->
  </nav>
{{*
  <ul class="lang">
    <li{{if $gimme->language->code=="en"}} class="current"{{/if}}><a href="/en/">EN</a></li>
    <li{{if $gimme->language->code=="ru"}} class="current"{{/if}}><a href="/ru/">RU</a></li>
  </ul><!-- .lang -->
*}}
  <ul class="social">
    <li class="mail"><a href="/?{{urlparameters options="template tpl/sendmail.tpl"}}&amp;type=editorial" class="sendmail">Почта</a></li>
    <li class="youtube"><a href="http://www.youtube.com/VitebskiyKurier" target="_blank">YouTube</a></li>
    <li class="twitter"><a href="http://twitter.com/VK__" target="_blank">Twitter</a></li>
    <li class="facebook"><a href="http://facebook.com/kypbep" target="_blank">Facebook</a></li>
  </ul><!-- .social -->

  <ul class="nav-additional">
    <li><a href="/{{$gimme->language->code}}/page/commercial/">{{if $gimme->language->code=="ru"}}Реклама{{else}}Commercials{{/if}}</a></li>
    <li><a href="/{{$gimme->language->code}}/page/archive/">{{if $gimme->language->code=="ru"}}Архив{{else}}Archive{{/if}}</a></li>
    <li><a href="/{{$gimme->language->code}}/page/pdf/">PDF</a></li>
    <li><a href="http://feeds.feedburner.com/vitebsk-kurier">RSS</a></li>
    <li><a href="http://m.{{$gimme->publication->site}}">PDA</a></li>
  </ul><!-- .nav-additional -->

  <div id="cse-search-form"></div>

  <ul class="informers">
    {{php}}include ('/var/www/xml-forest/vitkur-header_weather.html');{{/php}}
    {{php}}include ('/var/www/xml-forest/vitkur-header_rates.html');{{/php}}
    <li class="date"><time datetime="{{$smarty.now|date_format:"%Y-%m-%d"}}">{{$smarty.now|camp_date_format:"Сегодня: %W, %d.%m.%Y"}}</time></li>
  </ul><!-- .informers -->

</header><!-- .header -->
