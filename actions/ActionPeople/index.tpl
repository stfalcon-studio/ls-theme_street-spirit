{include file='header.tpl' menu='people'}


<h1 class="page-title">{$aLang.user_list} <span class="sup">({$aStat.count_all})</span></h1>

<ul class="switcher">
	<li {if $sEvent=='good'}class="active"{/if}><a href="{router page='people'}good/">{$aLang.user_good}</a></li>
	<li {if $sEvent=='bad'}class="active"{/if}><a href="{router page='people'}bad/">{$aLang.user_bad}</a></li>
</ul>

{if $aUsersRating}
	<table class="table table-people">
		
			<tr class="thead">
				<td></td>
				<td align="center" class="small-table-column">{$aLang.user_skill}</td>
				<td align="center" class="small-table-column">{$aLang.user_rating}</td>
			</tr>
		

		
		{foreach from=$aUsersRating item=oUser}
			<tr>
				<td><a href="{$oUser->getUserWebPath()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="" class="avatar" /></a><a href="{$oUser->getUserWebPath()}" class="username">{$oUser->getLogin()}</a></td>
				<td align="center" class="strength">{$oUser->getSkill()}</td>
				<td align="center" class="rating {if $oUser->getRating()>0}positive{elseif $oUser->getRating()<0}negative{/if}"><strong>{$oUser->getRating()}</strong></td>
			</tr>
		{/foreach}
		
	</table>
{else}
	{$aLang.user_empty}
{/if}


{include file='paging.tpl' aPaging="$aPaging"}
{include file='footer.tpl'}