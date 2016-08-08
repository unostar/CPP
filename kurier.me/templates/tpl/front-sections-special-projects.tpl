{{list_sections constraints="number greater 100 number smaller 200"}}
{{if $gimme->current_list->at_beginning}}
<section class="special-projects">
  <h2>{{if $gimme->language->code=="ru"}}Cпецпроекты <span>ВК</span>{{else}}<span>VC</span> Special Projects{{/if}}</h2>
  <ul>
{{/if}}
{{if $gimme->current_list->index==1}}{{assign var="first" value=' class="current"'}}{{else}}{{assign var="first" value=""}}{{/if}}
{{list_articles length="1" constraints="type is article" ignore_issue="true" order="bypublishdate desc"}}
    <li{{$first}}>
      <h3>{{$gimme->section->name}}</h3>
      <div>
        <p class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 220 height 110"}}" width="220" height="110" alt="{{$gimme->article->name|escape:'html'}}" /></a></p>
        <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
        <p class="intro">{{$gimme->article->intro|strip_tags:false|strip}}</p>
      </div>
    </li>
{{/list_articles}}
{{if $gimme->current_list->at_end}}
  </ul>
</section><!-- .special-projects -->
{{/if}}
{{/list_sections}}
