{if $oUserFriend and ($oUserFriend->getFriendStatus()==$USER_FRIEND_ACCEPT+$USER_FRIEND_OFFER or $oUserFriend->getFriendStatus()==$USER_FRIEND_ACCEPT+$USER_FRIEND_ACCEPT)}
	<div id="delete_friend_item"><a href="#"  title="{$aLang.user_friend_del}" onclick="return ls.user.removeFriend(this,{$oUserProfile->getId()},'del');"><i></i>{$aLang.user_friend_del}</a></div>
{elseif $oUserFriend and $oUserFriend->getStatusTo()==$USER_FRIEND_REJECT and $oUserFriend->getStatusFrom()==$USER_FRIEND_OFFER and $oUserFriend->getUserTo()==$oUserCurrent->getId()}
	<div id="add_friend_item"><a href="#"  title="{$aLang.user_friend_add}" onclick="return ls.user.addFriend(this,{$oUserProfile->getId()},'accept');"><i></i>{$aLang.user_friend_add}</a></div>
{elseif $oUserFriend and $oUserFriend->getFriendStatus()==$USER_FRIEND_OFFER+$USER_FRIEND_REJECT and $oUserFriend->getUserTo()!=$oUserCurrent->getId()}
	<div>{$aLang.user_friend_offer_reject}</div>							
{elseif $oUserFriend and $oUserFriend->getFriendStatus()==$USER_FRIEND_OFFER+$USER_FRIEND_NULL and $oUserFriend->getUserFrom()==$oUserCurrent->getId()}
	<div>{$aLang.user_friend_offer_send}</div>						
{elseif $oUserFriend and $oUserFriend->getFriendStatus()==$USER_FRIEND_OFFER+$USER_FRIEND_NULL and $oUserFriend->getUserTo()==$oUserCurrent->getId()}
	<div id="add_friend_item"><a href="#"  title="{$aLang.user_friend_add}" onclick="return ls.user.addFriend(this,{$oUserProfile->getId()},'accept');"><i></i>{$aLang.user_friend_add}</a></div>
{elseif !$oUserFriend}
	<div id="add_friend_form" class="modal">
		<header class="modal-header">
			<h3>{$aLang.profile_add_friend}</h3>
			<a href="#" class="close jqmClose"></a>
		</header>

		<form onsubmit="return ls.user.addFriend(this,{$oUserProfile->getId()},'add');" class="modal-content">
			<p><label for="add_friend_text">{$aLang.user_friend_add_text_label}</label>
			<textarea id="add_friend_text" rows="3" class="input-text input-width-full"></textarea></p>

			<button type="submit"  class="button button-primary">{$aLang.user_friend_add_submit}</button>
		</form>
	</div>
	<div id="add_friend_item"><a href="#"  title="{$aLang.user_friend_add}" id="add_friend_show"><i></i>{$aLang.user_friend_add}</a></div>
{else}
	<div id="add_friend_item"><a href="#" title="{$aLang.user_friend_add}" onclick="return ls.user.addFriend(this,{$oUserProfile->getId()},'link');"><i></i>{$aLang.user_friend_add}</a></div>
{/if}