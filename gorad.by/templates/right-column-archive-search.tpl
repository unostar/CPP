<div class="b-maincontent">
<h2 class="header-block"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">Пашыраны пошук</span></h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
<div id="archive_search_form" class="b-maincontent-n-i">
	<form class="f-archiv" method="post" action="/by/page/archive" name="search_articles">
    <input type="hidden" value="177" name="tpl" />
    <input type="hidden" value="Шукаць" name="f_search_articles" />
		<div class="f-archiv-bigtext-w"><input type="text" class="text" value="{{$gimme->search_articles_action->search_phrase}}" name="f_search_keywords" /></div>
		<div class="f-archiv-check-w"><input type="checkbox" class="check" checked="checked" name="f_match_all" /> шукаць па ўсім словам</div>
		<div class="g-clean"><label>Шукаць:</label><div class="f-archiv_row"><input type="radio" class="radio" name="f_search_scope" value="content" checked="checked" /> тэкст</div></div>
		<div class="g-clean"><div class="f-archiv_row m-archiv_row-top"><input type="radio" class="radio" name="f_search_scope" value="title" /> па назве</div></div>
		<div class="g-clean"><div class="f-archiv_row m-archiv_row-top"><input type="radio" class="radio" name="f_search_scope" value="author" /> па аўтару</div></div>
		<div class="g-clean"><label>Выпуск:</label><div class="f-archiv_row">{{camp_select object="search" attribute="issue"}}</div></div>
		<div class="g-clean"><label>Рубрыка:</label><div class="f-archiv_row">{{camp_select object="search" attribute="section"}}</div></div>
		<div class="g-clean"><label>Дата:</label><div class="f-archiv_row"><div class="g-left"><input type="text" class="smalltext" id="f_search_start_date" name="f_search_start_date" /></div> <div class="g-right"><input type="text" class="smalltext" id="f_search_end_date" name="f_search_end_date" /></div></div></div>
		<div class="g-tac"><span class="button-main"><input type="submit" name="f_search_articles" class="button-main-i" value="Шукаць" /></span></div>
	</form>
</div>
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
