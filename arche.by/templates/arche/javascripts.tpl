<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e41bd05678d09e5"></script>
<script type="text/javascript">
var disqus_shortname = 'archeby';
(function () {
  var s = document.createElement('script'); s.async = true;
  s.type = 'text/javascript';
  s.src = 'http://disqus.com/forums/' + disqus_shortname + '/count.js';
  (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());
</script>
{{if $gimme->template->name == "arche/article.tpl" || $gimme->template->name == "arche/front.tpl"}}
<script src="http://platform.twitter.com/widgets.js" type="text/javascript"></script>
<script src="http://connect.facebook.net/be_BY/all.js#appId=196779940381384&amp;xfbml=1"></script>
{{/if}}
{{if $gimme->template->name == "arche/article.tpl"}}
{{set_default_article}}
<script type="text/javascript" src="http://vkontakte.ru/js/api/share.js?11"></script>
<script type="text/javascript">
document.getElementById('vk_share_button').innerHTML = VK.Share.button(false,{
  type: "round",
  text: "Рэкамэндаваць",
  url: '[http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}]',
  title: '{{$gimme->article->name}}',
  description: '{{$gimme->article->intro|strip_tags:false|strip}}',
  image: '[{{url options="image 1"}}]',
  noparse: true
});
</script>
<script type="text/javascript">
var disqus_shortname = 'archeby';
var disqus_identifier = 'archeby-{{$gimme->article->number}}';
var disqus_url = 'http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}';
(function() {
  var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
  dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();
</script>
{{/if}}
