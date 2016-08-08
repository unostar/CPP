{{ local }}
{{ set_issue number="1" }}
{{ set_section number="6" }}
{{ set_article name="весь номер по полосам" }}
{{ assign var=actuals value=$gimme->article->field_f }}
{{ assign var=economics value=$gimme->article->field_s }}
{{ assign var=society value=$gimme->article->field_t }}
{{ assign var=application value=$gimme->article->filed_fo }}
{{ /local }}

<div class="home-column-middle">
       <div class="content-middle">
{{ local }}
{{ set_current_issue }}
{{ unset_section }}
<h3 class="top-title-article">Печатный выпуск {{ $gimme->issue->name }}</h3><br/>
<h2 class="top-news" style="color:#939393;">Весь номер по полосам</h2><br/><br/>

<div class="all-pages">

<h2 class="main">Актуалии</h2>
<p class="author" style="float:right;clear:right;text-align:right;margin:0 0 10px 0;">{{ $actuals }}</p><br/>
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="1 полоса - раздел Актуалии:ru" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">1 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="2 полоса - раздел Актуалии:ru" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">2 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="3 полоса - раздел Актуалии:ru" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">3 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="4 полоса - раздел Актуалии:ru" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">4 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAD:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">5 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAE:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">6 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAF:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">7 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAG:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">8 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAH:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">9 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAI:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">10 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAJ:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">11 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageAK:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">{{ $gimme->topic->name }}</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

</div>
{{ /local }}
<a name="2"></a>
{{ local }}
{{ set_current_issue }}
{{ unset_section }}
<div class="all-pages">
<h2 class="main">Экономикс</h2>
<p class="author" style="float:right;clear:right;text-align:right;margin:0 0 10px 0;">{{ $economics }}</p><br/>
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageET:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">7 полоса</p></div>
{{ /if }}



{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEU:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">8 полоса</p></div>
{{ /if }}

{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEK:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">9 полоса</p></div>
{{ /if }}

{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEL:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">10 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
 <!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEA:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">11 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEB:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">12 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEC:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">13 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>

{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageED:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">14 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEE:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">15 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEF:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">16 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEG:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">17 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEH:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">18 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEI:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">19 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEJ:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">20 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEM:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">21 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEN:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">22 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEO:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">23 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEP:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">24 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageEQ:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">25 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageER:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">26 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageES:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">27 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

</div>
{{ /local }}
<a name="3"></a>
{{ local }}
{{ set_current_issue }}
{{ unset_section }}
<div class="all-pages">
<h2 class="main">Общество</h2>
<p class="author" style="float:right;clear:right;text-align:right;margin:0 0 10px 0;">{{ $society }}</p><br/>
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSS:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">18 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageST:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">19 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSU:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">20 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSV:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">21 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSW:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">22 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSX:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">23 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<br />
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSQ:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">24 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSR:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">25 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSN:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">26 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSO:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">27 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSP:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">28 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSA:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}

{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">29 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSB:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">30 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSD:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">31 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSE:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">32 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSF:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">33 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSG:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">34 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSH:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">35 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSI:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">36 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSJ:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">37 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSK:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">38 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSL:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">39 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageSM:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">40 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

</div>
{{ /local }}

{{ local }}
{{ set_current_issue }}
{{ unset_section }}
<div class="all-pages">
<h2 class="main">Приложение</h2>
<p class="author" style="float:right;clear:right;text-align:right;margin:0 0 10px 0;">{{ $application }}</p><br/>

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApS:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">11 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApT:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">12 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApU:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">13 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApL:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">14 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApM:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">15 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApN:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">16 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApO:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">17 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApP:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">18 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApQ:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">19 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApR:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">20 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApA:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">21 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApB:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">22 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApC:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">23 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApD:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">24 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApE:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">25 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApF:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">26 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApG:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">27 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->
<!-- begin topic block -->
{{ assign var=flag value=0 }}
{{ set_topic name="pageApK:en" }}
{{ list_articles order="bypublishdate desc" }}
{{ if ($gimme->current_list->at_beginning) }}
{{ assign var=flag value=1 }}
{{ /if }}
{{ /list_articles }}
{{ if ($flag == 1) }}
   <div class="application-right"><p class="author">28 полоса</p></div>
{{ /if }}
{{ list_articles order="bypublishdate desc" }}
                             <div class="rest_from_section">
           <div class="section-articles">

    <h3 class="all-pages-title">{{ $gimme->section->name }}</h3>
    <p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
    <p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>
    <p class="text">{{ $gimme->article->Intro }}</p>
                            </div>
          </div>
{{ /list_articles }}
<!-- end topic block -->

</div>
{{ /local }}
 </div>
 </div>