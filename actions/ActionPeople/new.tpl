{include file='header.tpl' menu='people'}

				
<h1 class="page-title">{$aLang.user_list_new}</h1>

{if $aUsersRegister}
	<table class="table table-people">
			<tr class="table">
				<td></td>													
				<td align="center" class="width170">{$aLang.user_date_registration}</td>
				<td align="center" class="small-table-column">{$aLang.user_skill}</td>
				<td align="center" class="small-table-column">{$aLang.user_rating}</td>
			</tr>
		{foreach from=$aUsersRegister item=oUser}
			<tr>
				<td><a href="{$oUser->getUserWebPath()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="" class="avatar" /></a><a href="{$oUser->getUserWebPath()}" class="username">{$oUser->getLogin()}</a></td>														
				<td align="center" class="date">{date_format date=$oUser->getDateRegister()}</td>
				<td align="center" class="strength">{$oUser->getSkill()}</td>							
				<td align="center" class="rating"><strong>{$oUser->getRating()}</strong></td>
			</tr>
		{/foreach}						
	</table>
{else}
	{$aLang.user_empty}
{/if}


{include file='paging.tpl' aPaging="$aPaging"}
{include file='footer.tpl'}