<script language="javascript" src="/templates/javascript/prototype.js"></script>
<table class="main" cellspacing="0" cellpadding="0">
<tr>
  <td valign="top">
    <div id="breadcrubm">
    {{ breadcrumb }}
    </div>
    {{** main content area **}}
    <table class="content" cellspacing="0" cellpadding="0">
    <tr>
      <td>

    {{ if $gimme->poll->defined }}
    
        <h3>Poll Details</h3>
        
        {{ include file='poll-form.tpl' included=true}}
        
        <br>
        <a href="{{ uri options="template section-polls.tpl" }}">All Polls</a>
        
    {{ else }}
       
        <p>
        
        <tr>
            <th align="left">Name</th>
            <th>Voting Begin</th>
            <th>Voting End</th>
            <th>Current</th>
            <th>Alloved/Taken Votes</th>
            <th>Votes</th>
        </tr>  
        <tr><td colspan="6"><hr></td></tr>

{{ list_polls name="poslednji" length="1" order='bylastmodified ASC' }}
{{ include file='poll-form.tpl' included=true}}
{{ /list_polls }}


        {{ list_polls name="polls_list" length="10" order='bylastmodified ASC' }}
           <tr align="center">
            <td align="left">
                <a href="{{ uri options="template section-polls.tpl" }}&amp;f_poll_nr={{ $gimme->poll->number }}&amp;f_poll_language_id={{ $gimme->poll->language_id }}">
                    {{ $gimme->poll->name }}
                </a>
            </td>
            <td>{{ $gimme->poll->date_begin|date_format }}</td>
            <td>{{ $gimme->poll->date_end|date_format }}</td>
            <td>{{ if $gimme->poll->is_current }} Y {{ else }} N {{ /if }}</td>
            <td>{{ $gimme->poll->votes_per_user }}/{{ $gimme->poll->user_vote_count }}</td>
            <td>{{ $gimme->poll->votes }}
          </tr>
           
        {{ if  $gimme->current_list->at_end }}
        <tr><td colspan="6"><hr></td></tr>
        <tr>
            <td>{{ $gimme->current_list->count }} Items</td>
            <td colspan="5">
                {{ if $gimme->current_list->has_previous }}
                    <a href="{{ uripath }}?p_polls_list_start={{ $gimme->current_list->previous }}">previous</a>
                {{ else }}
                    previous    
                {{ /if }}
                |
                {{ if $gimme->current_list->has_next }}
                    <a href="{{ uripath }}?p_polls_list_start={{ $gimme->current_list->next }}">next</a>
                {{ else }}
                    next
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
