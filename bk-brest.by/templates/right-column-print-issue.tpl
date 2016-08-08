<div class="b-navi m-navi_bgbottom b-printnumber">
  <div class="b-bheader_blue"><span><b>Печатный номер</b></span></div>
  <strong class="b-printnumber_header">{{$gimme->issue->name}} от {{$gimme->issue->publish_date|camp_date_format:"%d.%m.%Y"}}</strong>
  <b class="bg-printnumber"></b>
  <ul class="g-none">
{{list_articles length="1" constraints="type is pdf section is 200"}}
  {{list_article_images length="1"}}
    <li><a id="print_issue_preview" href="{{uri options="image"}}" title="{{$gimme->image->description}}">Показать<br />титульный лист</a></li>
  {{/list_article_images}}
  {{list_article_attachments length="1"}}
    <li><a href="{{uri options="articleAttachment"}}">Скачать pdf-версию</a></li>
  {{/list_article_attachments}}
{{/list_articles}}
    <li><a href="/ru/page/archive/?type=pdf">Архив PDF</a></li>
  </ul>
</div>