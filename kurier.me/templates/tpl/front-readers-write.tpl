<section class="readers-write">
  <h3>Читатели пишут</h3>
  <div class="columns">

    <div class="column">
			{{list_articles length="1" constraints="section is 420" ignore_issue="true"}}
      <section class="readers-photo">
				<h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
				{{if $gimme->article->has_image(1)}}<p><a class="fancybox" title="{{$gimme->article->name|escape:'html'}}" href="{{uri options="image 1"}}"><img src="{{uri options="image 1 width 220"}}" width="220" alt="{{$gimme->article->name|escape:'html'}}" /></a></p>{{/if}}
      </section><!-- .readers-photo -->
			{{/list_articles}}

      <section class="search-for-you">
				{{list_articles length="1" constraints="type is article section is 430" ignore_issue="true" order="bypublishdate desc"}}
	      <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
				{{if $gimme->article->has_image(1)}}<img src="{{uri options="image 1 width 124"}}" width="124" alt="{{$gimme->article->name|escape:'html'}}" />{{/if}}
				<h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
				<p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
				{{/list_articles}}
      </section><!-- .search-for-you -->
    </div><!-- .column-1 -->

    <section class="life-stories column">
			{{list_articles length="1" constraints="type is article section is 410" ignore_issue="true" order="bypublishdate desc"}}
      <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
			{{if $gimme->article->author->picture->imageurl}}<img src="{{$gimme->article->author->picture->imageurl}}" width="45" height="45" alt="{{$gimme->article->author->name|escape:'html'}}" />{{/if}}
			<h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
			<p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
			<p><a href="/?{{urlparameters options="template tpl/sendmail.tpl"}}&amp;type=editorial" class="button sendmail">Присылайте фотографии</a></p>
			<p><a href="/?{{urlparameters options="template tpl/sendmail.tpl"}}&amp;type=editorial" class="button sendmail">Присылайте новости</a></p>
			{{/list_articles}}
    </section><!-- .life-stories column-2 -->

    <div class="column">
      <section class="poll">
        <h3 class="block-title"><span>Опрос</span></h3>
				<script type="text/javascript" charset="utf-8" src="http://static.polldaddy.com/w/44591.js"></script>
      </section><!-- .poll -->
      <section class="socials">
        <h3 class="block-title"><span><b>ВК</b> в социальных сетях</span></h3>
        <ul>
          <li><a href="http://facebook.com/kypbep" target="_blank"><img src="/templates/img/icon/social-facebook.png" alt="Facebook"></a></li>
          <li><a href="http://twitter.com/VK__" target="_blank"><img src="/templates/img/icon/social-twitter.png" alt="Twitter"></a></li>
          <li><a href="http://www.youtube.com/VitebskiyKurier" target="_blank"><img src="/templates/img/icon/social-youtube.png" alt="YouTube"></a></li>
          <li><a href="http://vimeo.com/kurier" target="_blank"><img src="/templates/img/icon/social-vimeo.png" alt="Vimeo"></a></li>
          <li><a href="http://plus.google.com/u/0/102122752482542828173/posts" target="_blank"><img src="/templates/img/icon/social-google.png" alt="Google Plus"></a></li>
          <li><a href="http://kamunikat.org/vitebskij_kurier.html" target="_blank"><img src="/templates/img/icon/social-kamunikat.png" alt="Kamunikat"></a></li>
					<li><a href="http://ru.wikipedia.org/wiki/Витебский_Курьер" target="_blank"><img src="/templates/img/icon/social-wikipedia.png" alt="Wikipedia"></a></li>
        </ul>
      </section><!-- .socials -->
    </div><!-- .column-3 -->

  </div><!-- .columns -->
</section><!-- .readers-write -->