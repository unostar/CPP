{{ php }}
$tagcloud = array();
{{ /php }}

{{ set_topic name = "Інфо:by" }}
{{ list_subtopics }}
  {{ assign var = "posts_count" value = "0" }}

  {{ list_articles ignore_issue="true" ignore_section="true" }}
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
    echo '<li><span style="font-size: '.$fontSize.'%"><a href="/?tpl=582&tag='.$tag.'" title="Артыкулаў з тэгам «'.$tag.'»: '.$posts_count.'">'.$tag.'</a></span></li>';
  }
{{ /php }}
</ul>