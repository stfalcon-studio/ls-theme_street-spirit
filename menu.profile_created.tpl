<ul class="nav nav-pills nav-pills-profile">
	<li {if $sMenuSubItemSelect=='topics'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}created/topics/"><span>{$aLang.topic_title}  {if $iCountTopicUser}</span> <sup>{$iCountTopicUser}</sup> {/if}</a>
	</li>
	
	<li {if $sMenuSubItemSelect=='comments'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}created/comments/"><span>{$aLang.user_menu_publication_comment}  {if $iCountCommentUser}</span> <sup>{$iCountCommentUser}</sup> {/if}</a>
	</li>
	
	{if $oUserCurrent and $oUserCurrent->getId()==$oUserProfile->getId()}
		<li {if $sMenuSubItemSelect=='notes'}class="active"{/if}>
			<a href="{$oUserProfile->getUserWebPath()}created/notes/"><span>{$aLang.user_menu_profile_notes}  {if $iCountNoteUser}</span> <sup>{$iCountNoteUser}</sup> {/if}</a>
		</li>
	{/if}
	
	{hook run='menu_profile_created_item' oUserProfile=$oUserProfile}
</ul>
{hook run='menu_profile_created' oUserProfile=$oUserProfile}
