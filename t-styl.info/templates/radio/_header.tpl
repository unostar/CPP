<div class="header" id="header">
  <div class="header-content">
    <div class="header-left"> <a href="/"><img src="/templates/radio/images/logo.gif" alt="лого Твой стыль" width="118px" /></a> </div>
    <div class="header-right">
      <p class="top-menu"><a href="http://www.t-styl.info" target="_blank">Газета</a>
      {{ set_section number="500" }}<a href="{{ uri options="section" }}">Хто тут?</a>
      {{ set_section number="550" }}<a href="{{ uri options="section" }}">About us</a>
{{ set_default_section }}
      <a href="{{ uri options="template radio/archive.tpl" }}">Архiў</a>
      <a href="{{ uri options="template radio/rss.tpl" }}" class="rss">RSS</a>
      <a href="http://t-styl.livejournal.com/" target="_blank" class="lj">LJ</a></p>
      {{search_form submit_button=" " template="radio/search.tpl"  button_html_code="class=\"button\"" html_code="class=\"search-box\"" }}
      <input type="hidden" name="f_search_scope" value="content" />
      <input type="text" name="f_search_keywords" maxlength="255" value="Пошук" onfocus="if(this.value=='Пошук')this.value=''" onblur="if(!this.value)this.value='Пошук'" />
      {{ /search_form }}
   </div>

<div id="main-menu">
  <div class="menu-scale">
    <div id="menu-scale-bar"></div>
{{set_section number="5"}}
    <div class="menu-item-big{{if $gimme->default_section==$gimme->section}} switched{{/if}}"><p>Праграмы</p><a href="{{uri options="section"}}"{{if $gimme->default_section!=$gimme->section}} class="menu-item-button-big"{{/if}}></a></div>
{{set_default_section}}
  </div>
  <div class="menu-control">
    <div class="menu-text">ГАРОДНЯ І СВЕТ ВАЧЫМА ГАРАДЗЕНЦАЎ | Глядзі і слухай "Твой стыль"!</div>
{{list_sections length="10" constraints="number greater 9 number smaller 101"}}
    <div class="menu-item{{if $gimme->default_section==$gimme->section}} switched{{/if}}"><p>{{$gimme->section->name}}</p><a href="{{uri options="section"}}"{{if $gimme->default_section!=$gimme->section}} class="menu-item-button"{{/if}}></a></div>
{{/list_sections}}
  </div>
</div>

  </div>
</div>