<article class="about-author">
	{{ list_articles length="1" constraints="author is `$author_const`" ignore_issue="true" ignore_section="true" }}
		{{ list_article_authors }}{{ if $gimme->author->name == $smarty.get.name }}
			{{ if $gimme->author->picture->defined }}<p class="photo"><img src="{{ $gimme->author->picture->imageurl }}" alt="{{ $gimme->author->name|escape:'html' }}"></p>{{ /if }}

			<h1>{{ $gimme->author->name }}</h1>

			<div class="text">
				{{ $gimme->author->biography->text|htmlspecialchars_decode }}
			</div><!-- .text -->

			{{ if $gimme->author->email != "" }}
			<p class="write-to-author">
				<a href="mailto:{{ $gimme->author->email|obfuscate_email }}">Написать автору</a>
			</p><!-- .write-to-author -->
			{{ /if }}

		{{ /if }}{{ /list_article_authors }}
	{{ /list_articles }}
</article><!-- .about-author -->
