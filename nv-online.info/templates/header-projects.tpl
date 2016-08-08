{{set_current_issue}}
<link href="/templates/js/contentslider/contentslider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/templates/js/contentslider/contentslider.js"></script>
<div id="header-banner">
<div id="paginate-projects" class="pagination">
  <a href="#" class="prev"></a>
{{list_sections length="3" constraints="number greater 209 number smaller 213"}}
  <a href="{{uri options="section"}}" class="toc">{{$gimme->section->name}}</a>
{{/list_sections}}
  <a href="#" class="next"></a>
</div>
{{php}}
$this->assign('kid', array(
'1'=>array('name'=>'Юрый Захаранка','photo'=>'zaharanka.jpg','ago'=>strtotime('1999-05-07 21:00:00')),
'2'=>array('name'=>'Віктар Ганчар','photo'=>'ganchar.jpg','ago'=>strtotime('1999-09-16 21:00:00')),
'3'=>array('name'=>'Анатоль Красоўскі','photo'=>'krasouski.jpg','ago'=>strtotime('1999-09-16 21:00:00')),
'4'=>array('name'=>'Дзмітрый Завадскі','photo'=>'zavadski.jpg','ago'=>strtotime('2000-07-07 21:00:00'))
));
{{/php}}
<div id="projects" class="sliderwrapper">

<div class="contentdiv kidnapped">{{set_section number="210"}}
<ul>
{{section name=id loop=5 start=1 step=1}}
{{math equation="((now - ago) / div)" now=$smarty.now ago=$kid[$smarty.section.id.index].ago div=86400 format="%d" assign=kidnapped}}
<li{{if $smarty.section.id.index==4}} class="last"{{/if}}>
<div class="img_box"><img src="/templates/images/{{$kid[$smarty.section.id.index].photo}}" alt="{{$kid[$smarty.section.id.index].name}}" /></div>
<a href="{{uri options="section"}}" class="name">{{$kid[$smarty.section.id.index].name}}</a>
<p class="date">знік {{$kidnapped}} дзён таму</p>
</li>
{{/section}}
</ul>
</div>

{{*
<div class="contentdiv articles">{{set_section number="211"}}
<ul>
{{ list_articles length="4" ignore_issue="true" }}
<li{{if $gimme->current_list->at_end}} class="last"{{/if}}>
<div class="img_box">{{if $gimme->article->has_image(2)}}<img alt="{{$gimme->article->image2->description}}" src="{{uri options="image 2"}}" />{{/if}}</div>
<a class="link" href="{{uri options="article"}}">{{$gimme->article->name}}</a>
</li>
{{ /list_articles }}
</ul>
</div>
*}}

<div class="contentdiv articles">{{set_section number="212"}}
<ul>
{{ list_articles length="4" ignore_issue="true" }}
<li{{if $gimme->current_list->at_end}} class="last"{{/if}}>
<div class="img_box">{{if $gimme->article->has_image(2)}}<img alt="{{$gimme->article->image2->description}}" src="{{uri options="image 2"}}" />{{/if}}</div>
<a class="link" href="{{uri options="article"}}">{{$gimme->article->name}}</a>
</li>
{{ /list_articles }}
</ul>
</div>

</div>
<script type="text/javascript">
featuredcontentslider.init({
  id: "projects",
  contentsource: ["inline", ""],
  toc: "markup",
  nextprev: ["prev", "next"],
  revealtype: "mouseover",
  enablefade: [true, 0.2],
  autorotate: [true, 8000]
});
</script>
</div>
{{set_default_issue}}
{{set_default_section}}