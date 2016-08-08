<div class="section-left-content">
{{if $gimme->default_section->number == "1"}}
      {{ include file="section-cont-left-pdf.tpl" }}
{{elseif $smarty.get.afisha}}
      {{ include file="section-cont-left-afisha.tpl" }}
{{else}}
      {{ include file="section-cont-left.tpl" }}
{{/if}}
    </div>
      {{* include file="section-cont-right.tpl" *}}
      {{ include file="_sidebar.tpl" }}