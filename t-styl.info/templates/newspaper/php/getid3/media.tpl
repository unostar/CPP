{{ php }}
require_once('/var/www/tstyl/campsite/templates/newspaper/php/getid3/getid3.php'); 
$filename = ('http://ts.omniton.net/attachment/000000003.mp3');
$getID3 = new getID3; 
$ThisFileInfo = $getID3->analyze($filename);
getid3_lib::CopyTagsToComments($ThisFileInfo);
echo @$ThisFileInfo['playtime_string']."<br>";
echo @$ThisFileInfo['mime_type'];
$filename;
{{ /php }}

<rss version="2.0" xmlns:media="http://search.yahoo.com/mrss/">
	<channel>
		<title>RSS Playlist pancevackipres.com</title>
		<link>http://www.pancevackipres.com</link>

{{ local }}
{{ unset_issue }}
{{ set_section number = "1000" }}
{{ list_articles ignore_issue="true" }}
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
		<item>
			<title>{{ $gimme->attachment->file_name }}</title>
			<link></link>

			<description>{{ $gimme->attachment->description }}</description>

			<media:content url="http://{{ $gimme->publication->site}}{{ uri options="articleattachment"}}" type="audio/mpeg"/>
		</item>
{{ /list_article_attachments }}
{{ /if }}
{{ /list_articles }}
{{ /local }}
		
	</channel>
</rss>
