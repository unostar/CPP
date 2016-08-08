  {{ set_section number="1" }}
  <div class="col-2">
        <p class="home-title"><a href="{{ uri options="section" }}">Навіны сайту</a></p>
{{ list_articles length="3" }}
{{ if $gimme->article->has_image(1) }}
        <img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" width="80px" />
{{ /if }}
        <p class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
        {{ $gimme->article->intro }}
{{ if $gimme->current_list->at_end }}
{{ else }}
        <div class="hr-home">
          <hr />
        </div>
{{ /if }}
{{ /list_articles }}        
      </div>
{{ set_default_section }}