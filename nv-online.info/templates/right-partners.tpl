<div class="meat-right-item" id="poll-box">
<p class="meatrigred">ПАРТНЁРЫ</p>

{{set_issue number="1"}}{{set_section number="550"}}
      {{list_articles}}
      {{if $gimme->article->has_image(1)}}
        <a href="{{$gimme->article->author->name}}" target="_blank" style="clear:none;padding:2px;margin:0;" title="{{$gimme->article->intro}}"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" style="border:none;width:150px;" /></a>
      {{/if}}
      {{/list_articles}}
{{ set_default_issue }}
{{ set_default_section }}
</div>