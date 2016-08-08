<nav class="nav-sub">
  <h3>Кнігарня ARCHE:</h3>
  <div>

    <ul>
{{local}}
{{set_publication identifier="2"}}
{{set_issue number="1"}}
{{set_section number="10"}}
{{set_topic name="Кнігарня ARCHE:by"}}
{{list_subtopics length="7" order="byNumber asc"}}
      <li><a href="http://{{$gimme->publication->site}}{{uri}}" target="_blank">{{$gimme->topic->name}}</a></li>
{{/list_subtopics}}
{{/local}}
    </ul>

		<ul class="nav-sub-sub">
			<li><a href="">Прайс-ліст</a></li>
			<li><a href="">Як аформіць заказ</a></li>
			<li><a href="">Аплата</a></li>
			<li><a href="">Дастава</a></li>
			<li><a href="">Навінкі</a></li>
			<li><a href="">Акцыі</a></li>
		</ul><!-- .nav-sub-sub -->

  </div>
</nav><!-- .nav-sub -->
