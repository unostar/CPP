{{if $smarty.get.ajax}}
  {{include file="arche/tpl/section-content.tpl"}}
{{elseif $smarty.get.type == "rss"}}
  {{render file="arche/rss.tpl"}}
{{else}}
  {{render file="arche/section_main.tpl" params=$smarty.get.page}}
{{/if}}