<div class="poll-block">
      {{ set_section number="360" }}
      {{ list_articles length="1" ignore_issue=TRUE order="bypublishdate desc"}}
	    <p class="rest-news">Нашыя ўзнагароды</p>
            {{ list_article_images }}
            <a href="{{ uri options="image" }}" target="_blank"><img src="{{ uri options="image" }}" alt="{{ $gimme->article->image->description }}" width="85" class="popuppic" style="margin:20px 7px 0 0;" /></a>
            {{ /list_article_images }}
    {{ /list_articles }}
</div>

