<ul class="list">
	{foreach from=$aComments item=oComment name="cmt"}
		{assign var="oUser" value=$oComment->getUser()}
		{assign var="oTopic" value=$oComment->getTarget()}
		{assign var="oBlog" value=$oTopic->getBlog()}

		<li {if $smarty.foreach.cmt.iteration % 2 == 1}class="even"{/if}>
			<a href="{$oUser->getUserWebPath()}" class="stream-user-ico"><img src="{$oUser->getProfileAvatarPath(24)}" alt="{$oUser->getLogin()}"/></a>
			<div class="overflow">
				<a href="{$oUser->getUserWebPath()}" class="user">{$oUser->getLogin()}</a>:
				<a href="{if $oConfig->GetValue('module.comment.nested_per_page')}{router page='comments'}{else}{$oTopic->getUrl()}#comment{/if}{$oComment->getId()}" class="topic-title">{$oTopic->getTitle()|escape:'html'}</a>
				<div class="stream-item-bottom">
					<div class="stream-comments"><a href="{if $oConfig->GetValue('module.comment.nested_per_page')}{router page='comments'}{else}{$oTopic->getUrl()}#comment{/if}{$oComment->getId()}"><span class="comments-counter-ico">&nbsp;</span><span>{$oTopic->getCountComment()}</span></a></div>
					<a href="{$oBlog->getUrlFull()}" class="blog-title">{$oBlog->getTitle()|escape:'html'}</a>
				</div>
			</div>
		</li>
	{/foreach}
</ul>


<div class="bottom">
	<a href="{router page='comments'}">{$aLang.block_stream_comments_all}</a>
</div>