{{ if $gimme->article->has_image(100) }}
<script type="text/javascript" src="/templates/javascript/minigal/minigal.js"></script>
<h2 style="border-bottom:1px solid #C0C0C0;color:#555555;font-size:12px;font-weight:bold;margin:0 0 20px 0;padding:20px 0 5px 0;">ФОТО ПО ТЕМЕ</h2>
<div id="minigal" class="sliderwrapper"><div class="tc"><div class="tl"><div class="tr"></div></div></div>
{{list_article_images}}
  {{if $gimme->image->article_index > 99}}
<div class="contentdiv"><a href="{{uri options="image"}}" rel="minigalZoom" title="{{$gimme->image->description|escape}} // Фото: {{$gimme->image->photographer|escape}}" style="background:url({{uri options="image"}}&ImageRatio=38) no-repeat center;"></a>{{$gimme->image->description}}</div>
{{/if}}
{{ /list_article_images }}
</div>
<div id="paginate-minigal" class="pagination">
<div class="wrapper">
{{list_article_images}}
{{if $gimme->image->article_index > 99}}
<a href="#" class="toc" style="background:url({{uri options="image"}}&ImageRatio=8) no-repeat center;" title="{{$gimme->image->description|escape}}"></a>
{{/if}}
{{ /list_article_images }}
</div>
<div class="bc"><div class="bl"><div class="br"></div></div></div>
</div>
<span style="display:block;width:328px;color:#555555;font-size:11px;font-weight:normal;margin:0 auto;padding:5px 0 10px 0;">* Фотографии отображаются в уменьшенном масштабе. Кликните мышкой для просмотра полноразмерного варианта.</span>
<script type="text/javascript">initminigal();</script>
{{/if}}