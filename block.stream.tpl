<div class="block stream" id="block_stream">
	<div class="block-header-conteiner"><h2><span>{$aLang.block_stream} <a href="{router page='rss'}allcomments/" class="rss"></a></span></h2></div>
	
	<ul class="switcher">						
		<li id="block_stream_item_comment" class="active">{$aLang.block_stream_comments}</li>
		<li id="block_stream_item_topic">{$aLang.block_stream_topics}</li>
		
		{hook run='block_stream_nav_item'}
	</ul>					
	
	
	<div class="block-content" id="block_stream_content">
		{$sStreamComments}
	</div>
</div>

