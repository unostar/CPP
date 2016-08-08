{{ php }}
$tagcloud = array();
{{ /php }}

{{ assign var="tagcloud_type" value=$smarty.get.type }}

{{ set_topic name = "tagcloud:en" }}
{{ list_subtopics }}
	{{ assign var = "posts_count" value = "0" }}

	{{ list_articles length="1" ignore_issue="true" ignore_section="true" }}
		{{ assign var = "posts_count" value = $gimme->current_list->count }}
	{{ /list_articles }}

	{{ if $posts_count > 0 }}
		{{ php }}
			$gimme = $this->get_template_vars('gimme');
			$posts_count = $this->get_template_vars('posts_count');

			$tagcloud[$gimme->topic->name] = $posts_count;
		{{ /php }}
	{{ /if }}
{{ /list_subtopics }}

<ul class="tag-cloud">
{{ php }}
	$min = 999999;
	$max = 1;
	$minSize = 90;
	$maxSize = 240;

	$tagcloud_full = $tagcloud;

	// определяем половину облака с наибольшим числом статей
	$tagcloud_rare = $tagcloud;
	asort($tagcloud_rare);

	$tagcloud_half = round(count($tagcloud_rare) / 2);
	$tagcloud_rare = array_chunk($tagcloud_rare, $tagcloud_half, TRUE);
	$tagcloud_rare = $tagcloud_rare[0];

	$tagcloud_frequent = array_diff_key($tagcloud_full, $tagcloud_rare);

	// выводим или сокращенное облако или полное (в зависимости url)
	$tagcloud_type = $this->get_template_vars('tagcloud_type');

	if ($tagcloud_type == "full") {
		$tagcloud = $tagcloud_full;
	} else {
		$tagcloud = $tagcloud_frequent;
	}

	foreach ($tagcloud as $tag => $posts_count) {
		if ($posts_count > $max) {
			$max = $posts_count;
		}
		if ($posts_count < $min) {
			$min = $posts_count;
		}
	}

	foreach ($tagcloud as $tag => $posts_count) {
		if ($min == $max) {
			$fontSize = round(($maxSize - $minSize) / 2 + $minSize);
		}
		else {
			$fontSize = round((($posts_count - $min)/($max - $min)) * ($maxSize - $minSize) + $minSize);
		}
		echo '<li><span style="font-size: '.$fontSize.'%"><a href="/?tpl=section-tag.tpl&tag='.$tag.'" title="Статей с тегом «'.$tag.'»: '.$posts_count.'">'.$tag.'</a></span></li>
		';
	}
{{ /php }}
</ul>