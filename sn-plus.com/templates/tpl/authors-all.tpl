{{ php }}
$all_authors = array();
{{ /php }}

{{ list_articles constraints="section greater 1 section smaller 161" ignore_issue="true" }}
	{{ list_article_authors }}
		{{ php }}
			$gimme = $this->get_template_vars('gimme');

			$all_authors[$gimme->author->name]++;
		{{ /php }}
	{{ /list_article_authors }}
{{ /list_articles }}

<ul class="authors-list">
{{ php }}

foreach ($all_authors as $author => $authors_articles) {
	echo '<li><a href="/ru/page/authors/?name='.urlencode($author).'">'.$author.'</a> <small>(материалов: '.$authors_articles.')</small></li>';
}

{{ /php }}
</ul><!-- .authors-list -->
