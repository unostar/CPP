{{list_articles constraints="issue is 1 section is 940 type is link"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-maincontent">
<h2 class="header-block"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">Спасылкі</span></h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
<div class="b-maincontent-n-i"><ul class="list-links">
{{/if}}
<li>{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="50" height="50" />{{/if}}{{$gimme->article->link}}<a href="http://{{$gimme->article->link}}" target="_blank">{{$gimme->article->name|escape:'html'}}</a></li>
{{if $gimme->current_list->at_end}}
</ul></div>
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
{{/if}}
{{/list_articles}}
