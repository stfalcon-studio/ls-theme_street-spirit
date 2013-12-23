<ul class="nav nav-pills nav-pills-profile">
	<li {if $sMenuSubItemSelect=='topics'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites_topics}  {if $iCountTopicFavourite} <sup>{$iCountTopicFavourite}</sup> {/if}</a>
	</li>
	<li {if $sMenuSubItemSelect=='comments'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/comments/">{$aLang.user_menu_profile_favourites_comments}  {if $iCountCommentFavourite} <sup>{$iCountCommentFavourite}</sup> {/if}</a>
	</li>

	{hook run='menu_profile_favourite_item' oUserProfile=$oUserProfile}
</ul>

{hook run='menu_profile_favourite' oUserProfile=$oUserProfile}
