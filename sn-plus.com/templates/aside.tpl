<aside class="aside">
	{{ if $gimme->template->name == "front.tpl" }}
		{{ include file="tpl/aside-news-list.tpl" }}
		{{ include file="tpl/aside-persons.tpl" persons_count="5" }}
		{{ include file="tpl/aside-poll.tpl" }}
		{{ include file="tpl/aside-jokes.tpl" }}
		{{ include file="tpl/_banner-aside-bottom-front.tpl" }}
	{{ /if }}
	{{ if $gimme->template->name != "front.tpl" }}
		{{ include file="tpl/_banner-aside-top.tpl" }}
		{{ include file="tpl/aside-main-news.tpl" }}
		{{ include file="tpl/aside-news-list.tpl" }}
		{{ include file="tpl/aside-persons.tpl" persons_count="1" }}
		{{ include file="tpl/aside-feuilleton.tpl" }}
		{{ include file="tpl/aside-poll.tpl" }}
		{{ include file="tpl/aside-jokes.tpl" }}
		{{ include file="tpl/aside-feedback.tpl" }}
		{{ include file="tpl/_banner-aside-bottom.tpl" }}
	{{ /if }}
</aside><!-- .aside -->