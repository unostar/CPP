    <ul id="cssdropdown">
      <li {{ if $gimme->default_section->defined || $gimme->template->name == "slonim/rss.tpl"}} class="mainitems" {{ else }}class="current"{{ /if}} style="border-left:1px solid #d2d2d2;"> <a href="/">Главная</a> </li>
{{ list_sections constraints="number greater 9 number smaller 61" }}
      <li {{ if $gimme->default_section == $gimme->section }}class="current"{{ else }}class="mainitems"{{ /if }}> <a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a> </li>
{{ /list_sections }}
{{ assign var="menusec" value=$gimme->section->number }}
      <li {{ if $menusec == 105 || $menusec == 110 || $menusec == 120 || $menusec == 130 || $menusec == 140}}class="current"{{else}}class="mainitems"{{/if}}> <a href="#">Отдушина </a>
        <ul class="subuls" style="width: 18em">
{{ list_sections constraints="number greater 101 number smaller 141"}}
          <li><a style="display:block;margin:0px;padding:6px;" href="{{ uri options="section" }}"> {{ $gimme->section->name }}</a></li>
{{/list_sections }}
        </ul>
      </li>
      <li {{ if $gimme->template->name == "slonim/rss.tpl" }}class="current"{{ else }}class="mainitems"{{/if}}><a href="{{ uri options="template slonim/rss.tpl" }}" class="rss-menu">RSS</a> </li>
    </ul>
    <a rel="nofollow" href="http://www.twitter.com/gs_by" style="margin-left:5px;"><img src="http://twitter-badges.s3.amazonaws.com/t_small-b.png" alt="Follow gs_by on Twitter"/></a>
    <br/>
    <div class="menu-hr" style="clear:both;">
      <hr/>
    </div>
       <div id="navcontainer-1">
    <ul id="navlist">
      {{ local }}
        {{ set_issue number="1" }}
        {{ list_sections constraints="number is 180" }}
          <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
        {{ /list_sections }}
        {{ list_sections constraints="number greater_equal 150 number smaller_equal 160" }}
          <li{{ if $gimme->current_list->at_end }} class="last"{{ /if }}><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
        {{ /list_sections }}
      {{ /local }}
      <li class="right last"><a href="{{uri options="template slonim/gallery.tpl"}}">Фотогалерея</a></li>
{{ list_sections constraints="number is 200" }}
      <li class="right"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
{{ /list_sections }}
  </div>