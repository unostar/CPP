<form method="post" action="http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/archive/" class="search">
	<input type="hidden" name="f_search_level" value="1">
	<input type="hidden" name="f_search_articles" value="Найти">
	<input type="text" name="f_search_keywords" placeholder="Поиск...">
	<input type="submit" value="Найти" name="f_search_articles">
</form><!-- .search -->
