<div id="service" class="ui-tabs">
	<ul class="ui-tabs-nav">
		<li class="top-rounded"><a href="#transport"><span>ТРАНСПОРТ</span></a></li>
		<li class="top-rounded"><a href="#spravka"><span>СПРАВКА</span></a></li>
		<li class="top-rounded"><a href="#otdyh"><span>ОТДЫХ</span></a></li>
	</ul>

	{{ local }}
	{{ set_issue number="1" }}
	{{ set_section number="500" }}
		<div id="transport">
			<ul>
			{{ list_articles constraints="type is page" }}
				<li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
			{{ /list_articles }}
			</ul>
		</div><!-- /#transport -->

	{{ set_section number="510" }}
		<div id="spravka">
			<ul>
			{{ list_articles constraints="type is page" }}
				<li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
			{{ /list_articles }}
			</ul>
		</div><!-- /#spravka -->  

	{{ set_section number="520" }}
		<div id="otdyh">
			<ul>
			{{ list_articles constraints="type is page" }}
				<li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
			{{ /list_articles }}
			</ul>
		</div><!-- /#otdyh -->  
	 {{ /local }}
</div><!-- /#service -->
