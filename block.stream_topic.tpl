<ul class="list">
	{foreach from=$oTopics item=oTopic name="cmt"}
		{assign var="oUser" value=$oTopic->getUser()}
		{assign var="oBlog" value=$oTopic->getBlog()}

		<li {if $smarty.foreach.cmt.iteration % 2 == 1}class="even"{/if}>
			<a href="{$oUser->getUserWebPath()}" class="stream-user-ico"><img src="{$oUser->getProfileAvatarPath(24)}" alt="{$oUser->getLogin()}"/></a>
			<div class="overflow">
				<a href="{$oUser->getUserWebPath()}" class="user">{$oUser->getLogin()}</a>:
				<a href="{$oTopic->getUrl()}" class="topic-title">{$oTopic->getTitle()|escape:'html'}</a>
				<div class="stream-item-bottom">
					<div class="stream-comments"><a href="{$oTopic->getUrl()|escape:'html'}"><span class="comments-counter-ico">&nbsp;</span><span>{$oTopic->getCountComment()}</span></a></div>
					<a href="{$oBlog->getUrlFull()}" class="blog-title">{$oBlog->getTitle()|escape:'html'}</a>
				</div>
			</div>

		</li>


	{/foreach}
</ul>


<div class="bottom">
	<a href="{router page='new'}">{$aLang.block_stream_topics_all}</a>
</div>
