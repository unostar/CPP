<ul class="links-menu">
  <li class="top"><div class="title">СЛУХАЙ</div></li>
  {{ local }}
  {{ set_current_issue }}
  {{ set_section number="1000" }}
  {{ unset_article }}
  {{ set_topic name="Radio:en" }}
  
  {{ list_subtopics }}
  <li><a href="{{ uri }}">{{ $gimme->topic->name }}</a></li>
  {{ /list_subtopics }}
  {{ /local }}
  <li class="bottom"></li>
</ul>

