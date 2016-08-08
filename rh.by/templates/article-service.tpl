<div id="leftbar">
  <div class="story">
    <p class="uptitle">{{ $gimme->section->name }}</p>
    <h1>{{ $gimme->article->name }}</h1>

{{ include file="article-cont-tools.tpl" }}

    <p>{{ $gimme->article->text }}</p>

  </div><!-- /.story -->                              
</div><!-- /#leftbar -->