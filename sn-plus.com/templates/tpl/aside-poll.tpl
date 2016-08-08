{{ list_polls length="1" order="bynumber desc" }}
	{{ if !$gimme->poll_action->defined }}
		<section class="poll{{ if $gimme->template->name != "front.tpl" }} expandable{{ /if }}">
			<header>
				<h3>Опрос</h3>
			</header>

			<div>
				<p class="question">{{ $gimme->poll->question }}</p><!-- .question -->

				<div id="poll">
	{{ /if }}

	{{ if $gimme->poll->is_votable && !$gimme->poll_action->defined }}
		{{ poll_form template="tpl/aside-poll.tpl" submit_button=false }}
			{{ list_poll_answers }}
				{{ if $gimme->current_list->at_beginning }}
					<ul class="answers">
				{{ /if }}

				<li><label>{{ pollanswer_edit }}{{ $gimme->pollanswer->answer }}</label></li>

				{{ if $gimme->current_list->at_end }}
					</ul><!-- .answers -->
				{{ /if }}
			{{ /list_poll_answers }}

			<p class="submit">
				<input type="submit" value="Ответить" id="submit_poll">
				<a href="" class="results">Результаты</a>
			</p><!-- .submit -->
		{{ /poll_form }}
	{{ else }}
		{{ list_poll_answers }}
			{{ if $gimme->current_list->at_beginning }}
				<ul class="answers">
			{{ /if }}

			<li class="votes">
				{{ $gimme->pollanswer->answer }}
				<span class="votes-bar" style="width: {{ $gimme->pollanswer->percentage|string_format:"%d" }}%;">{{ $gimme->pollanswer->percentage|string_format:"%d" }}%</span>
			</li>

			{{ if $gimme->current_list->at_end }}
				</ul><!-- .answers -->
			{{ /if }}
		{{ /list_poll_answers }}

		<p class="all">Всего проголосовало: {{ $gimme->poll->votes }}</p>
	{{ /if }}

	{{ if !$gimme->poll_action->defined }}
				</div><!-- #poll -->
			</div>
		</section>
	{{ /if }}
{{ /list_polls }}
