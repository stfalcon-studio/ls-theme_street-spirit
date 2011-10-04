{include file='header.tpl'}

<h2>{$aLang.blog_user_readers_all} ({$iCountBlogUsers}): <a href="{$oBlog->getUrlFull()}">{$oBlog->getTitle()}</a></h2>
	
<div class="page people">
	{if $aBlogUsers}

		<table class="table table-people">

				<tr class="thead">
					<td>{$aLang.user}</td>
					<td align="center" class="small-table-column">{$aLang.user_skill}</td>
					<td align="center" class="small-table-column">{$aLang.user_rating}</td>
				</tr>

			

			{foreach from=$aBlogUsers item=oBlogUser}
			{assign var="oUser" value=$oBlogUser->getUser()}
				<tr>				
					<td><a href="{$oUser->getUserWebPath()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="" class="avatar" /></a><a href="{$oUser->getUserWebPath()}" class="username">{$oUser->getLogin()}</a></td>														
					<td align="center" class="strength">{$oUser->getSkill()}</td>							
					<td align="center" class="rating"><strong>{$oUser->getRating()}</strong></td>
				</tr>
			{/foreach}						

		</table>
					
		<br/>
		{include file='paging.tpl' aPaging=$aPaging}
	{else}
   	 	{$aLang.blog_user_readers_empty}
    {/if}
</div>


{include file='footer.tpl'}