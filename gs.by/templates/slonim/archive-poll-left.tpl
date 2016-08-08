<div class="article">
<h1 style="font-size: 18px;">Архив опросов</h1>
<script language="javascript" src="/javascript/prototype/prototype.js"></script>

<table class="main" cellspacing="0" cellpadding="0" width="640px;">
<tr>
  <td valign="top">
    {{** main content area **}}
    <table class="content" cellspacing="0" cellpadding="0">
    <tr>
      <td style="padding:0 0 0 20px;">

    {{ if $gimme->poll->defined }}
    
       
        {{ include file='slonim/archive-poll-left-poll.tpl' included=true}}
        
        <br>
        <a href="{{ uri options="slonim/archive-poll.tpl" }}">Архив опросов</a>
        
    {{ else }}
       
        <p>
        
        <tr>
            <th align="left" width="200px">Наименование</th>
            <th width="100px">Начало опроса</th>
            <th width="100px">Конец опроса</th>
            <th width="40px">Проголосовало</th>
        </tr>  
        <tr><td colspan="4"><hr></td></tr>

  
        {{ list_polls name="polls_list" length="10" order='bylastmodified ASC' }}
           <tr align="center">
            <td align="left">
                <a href="{{ uri options="template slonim/archive-poll.tpl" }}&amp;f_poll_nr={{ $gimme->poll->number }}&amp;f_poll_language_id={{ $gimme->poll->language_id }}">
                    {{ $gimme->poll->name }}
                </a>
            </td>
            <td>{{ $gimme->poll->date_begin|camp_date_format:"%d.%m.%Y" }}</td>
            <td>{{ $gimme->poll->date_end|camp_date_format:"%d.%m.%Y" }}</td>
            <td>{{ $gimme->poll->votes }}
          </tr>
           
        {{ if  $gimme->current_list->at_end }}
        <tr><td colspan="4"><hr></td></tr>
        <tr>
            <td>найдено: {{ $gimme->current_list->count }} </td>
            <td colspan="3">
                {{ if $gimme->current_list->has_previous }}
                    <a href="{{ uripath }}?p_polls_list_start={{ $gimme->current_list->previous }}">предыдущий</a>
                {{ else }}
                    предыдущий 
                {{ /if }}
                |
                {{ if $gimme->current_list->has_next }}
                    <a href="{{ uripath }}?p_polls_list_start={{ $gimme->current_list->next }}">следующий</a>
                {{ else }}
                    следующий
                {{ /if }}
            </td>
        </tr>
        {{ /if }}
           
        {{ /list_polls }}

    
    {{ /if }}
      
      
      </td>
    </tr>
    </table>
    {{** end main content area **}}
  </td>
  <td valign="top">
    
  </td>
</tr>
</table>

      </div>

