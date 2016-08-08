<div class="main-column-3">

{{ include file="specproekty.tpl" }}
{{ include file="_banner-right-240x400-AdOcean.tpl"}}
{{ include file="_banner-right-300x250.tpl" }}

{{ include file="button-criminals.tpl"}}

{{ if $gimme->section->number gt 250}}
{{ else }}
  {{ include file="column-3-mostread.tpl" }}
{{ /if }}

{{ include file="poll.tpl" }}
<br />
{{ include file="tag-cloud-block.tpl" }}
</div>