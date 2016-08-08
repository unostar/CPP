                <div class="article-tools">
                  <a class="print-this" href="{{ uri options="template print.tpl" }}">Напечатать статью</a>
<script type="text/javascript">
var newwindow;
function sendtf(url)
{
  newwindow=window.open(url,'name','height=400,width=300');
  if (window.focus) {newwindow.focus()}
}
</script> 
                  <a class="send-this" href="javascript:sendtf('{{ uri options="template php/sendtofriend/sendtofriend.php"}}');">Отправить ссылку</a>
                    <a class="resize-this" href=""><span class="incr">А+</span></a> <span>/</span> <a class="resize-this" href=""><span class="resetFont">A=</span></a> <span>/</span> <a class="resize-this" href=""><span class="decr" href="">А-</span></a>
                    <a class="comment-count" href="#article-comments">{{ $gimme->article->comment_count }}</a>
                </div><!-- /.article-tools -->