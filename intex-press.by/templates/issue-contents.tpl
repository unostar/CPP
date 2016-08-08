{{ include file="_html-head.tpl" }}
<body>
<div id="wrapper">
<!-- begin header wrapper-->
{{ include file="_header.tpl" }}
<!-- end header wrapper -->
<!-- begin middle content -->
<div id="content-wrapper" class="clearfix">
<!-- begin section content -->
<div class="section-content">
<div class="section clearfix">
<div class="section-left">
<div class="section-title">Содержание</div>
<div class="issue-contents">
{{list_sections constraints="number smaller 70 number not 5"}}
{{list_articles}}
{{if $gimme->current_list->index == 1}}
<p class="contents-title">{{$gimme->section->name}}</p>
<h3><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h3>
{{else}}
<h3><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h3>
{{/if}}
{{/list_articles}}
{{/list_sections}}
</div>
</div>
<div class="section-right">{{ include file="section-right.tpl" }}</div>
<div class="section-fulldivider"><hr /></div>
</div>
<div class="banner-section">{{ include file="banner-middle728x90.tpl" }}</div>
</div>
<!-- end section content -->
<div class="column-divider clearfix"><hr /></div>
</div>
<!-- end middle content -->
<!-- begin footer content -->
{{ include file="_footer.tpl" }}
<!-- end footer content -->
</div>
</div>
</body>
</html>
