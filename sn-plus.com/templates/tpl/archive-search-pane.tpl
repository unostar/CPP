<div class="search-pane">

	<form method="post" action="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/" name="search_articles" class="search-articles">
		<input type="hidden" name="f_search_level" value="1" />
		<input type="hidden" name="f_search_articles" value="Искать в архиве" />
		<fieldset>
			<label>Искать:</label>
			<input type="text" value="{{$gimme->search_articles_action->search_phrase}}" name="f_search_keywords">
			<label class="all-words">По всем словам<input type="checkbox" name="f_match_all"></label>
		</fieldset>
		<fieldset class="place">
			<label>Поиск по:</label>
			<ul>
				<li><label><input type="radio" value="content" name="f_search_scope" checked> Тексту</label></li>
				<li><label><input type="radio" value="title" name="f_search_scope"> Заголовку</label></li>
				<li><label><input type="radio" value="author" name="f_search_scope"> Автору</label></li>
			</ul>
		</fieldset>
		<fieldset>
			<label>Рубрика:</label>
			{{ camp_select object="search" attribute="section" }}
		</fieldset>
		<fieldset class="date">
			<label>Дата:</label>
			<ul>
				<li>
					<input type="text" name="f_search_start_date" id="f_search_start_date">
				</li>
				<li>
					по
					<input type="text" name="f_search_end_date" id="f_search_end_date">
				</li>
			</ul>
		</fieldset>

		<p class="submit"><input type="submit" value="Искать в архиве" name="f_search_articles"></p>
	</form><!-- .articles-search -->

	<div class="calendar">

		{{ calendarcpp container="SearchPaneCalendar" style="calendar" settings="changeMonth: true, changeYear: true" url="/ru/page/archive/?action=calendar" article_date_style="" clickable_dates="articles" }}

	</div><!-- .calendar -->

</div>