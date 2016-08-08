<div class="section-column-2 clearfix">
  <div class="column-2-content">
   <div class="main-box">

{{* collecting post from calendar and storing it into variable for later usage 
 checking if there is actually any articles on given date and if so, then rendering of page will begin. however if not, check will return null and will print out that archive is empty... *}}

{{ assign var="post" value=$smarty.get.date }}




<div class="ticker">Архiў cайта - {{ $post|camp_date_format:"%d %M %Y" }}</div>


{{ list_sections }}
  {{ list_articles order="bypublishdate desc" ignore_issue="true" constraints="publish_date is $post"}}

        {{ if $gimme->current_list->at_beginning }}
{{ assign var="check" value="1" }}
          <div class="article-comments" style="padding:20px 0 0 0;border-top:1px solid #ebebeb; margin:10px 0 0 0;">
          <h3 class="comment-title" style="margin-bottom:10px;">{{ $gimme->section->name }}</h3> 
        {{ /if }}

<p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ include file="newspaper/icons.tpl" }}</p> 

                               {{ if $gimme->current_list->at_end }}
                               </div>
                               {{ /if }}
  {{ /list_articles }}
{{ /list_sections }}



{{ if $check != "1" }}
<p>У архіве няма матэрыялаў па абранай Вамі даце. Калі ласка, абярыце іншую дату!</p>
{{ /if }}

  </div>
 </div>
</div>