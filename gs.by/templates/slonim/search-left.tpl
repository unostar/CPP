<div class="article">&nbsp;

<div id="cse-search-results"></div>
<script type="text/javascript">
  var googleSearchIframeName = "cse-search-results";
  var googleSearchFormName = "cse-search-box";
  var googleSearchFrameWidth = 400;
  var googleSearchDomain = "www.google.com";
  var googleSearchPath = "/cse";
</script>
<script type="text/javascript" src="/templates/slonim/javascript/show_afs_search.js"></script>

{{*
{{ list_search_results length="5" }}
    {{ if $gimme->current_list->at_beginning }}
        <h1 style="font-size:18px;">Знойдзена {{ $gimme->current_list->count }} артыкулаў.</h1>
    {{ /if }}

    <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>

{{ /list_search_results }}
{{ if $gimme->prev_list_empty }}
    <p>Не знойдзена артыкулаў</p>
{{ /if }}
*}}


      </div>