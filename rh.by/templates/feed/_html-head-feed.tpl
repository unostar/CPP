{{local}}{{set_current_issue}}
{{php}}
$this->assign("sections",array(
  10 => 'events',
  20 => 'culture',
  30 => 'bazar',
  40 => 'accident',
  50 => 'society',
  60 => 'sports',
  100 => 'feedback',
  110 => 'youth',
  120 => 'history',
  130 => 'ecology',
  140 => 'health',
  150 => 'kaleidoscope'
));
{{/php}}
<link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - Усе артыкулы сайта" href="http://{{$gimme->publication->site}}/feed/index.rss" />
{{list_sections constraints="number smaller 160"}}
{{assign var="sect_num" value=$gimme->section->number}}
<link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - {{$gimme->section->name}}" href="http://{{$gimme->publication->site}}/feed/{{$sections.$sect_num}}.rss" />
{{/list_sections}}
{{/local}}
