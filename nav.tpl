<div id="nav">
	<div id="nav-inner">
		{if $oUserCurrent}
			<div class="profile">
				<a href="{$oUserCurrent->getUserWebPath()}"><img src="{$oUserCurrent->getProfileAvatarPath(48)}" alt="{$oUserCurrent->getLogin()}" class="avatar" /></a>
				<ul>
					<!--<li>

						(<a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}" class="logout">{$aLang.exit}</a>)
					</li>-->
					<li>
						<a href="{$oUserCurrent->getUserWebPath()}" class="username">
                            {if $oUserCurrent->getProfileName()}
                                {$oUserCurrent->getProfileName()}
                            {else}
                                {$oUserCurrent->getLogin()}
                            {/if}
                        </a>
						{if $iUserCurrentCountTalkNew}
							<a href="{router page='talk'}" class="new-message" id="new_messages" title="{$aLang.user_privat_messages_new}"><span class="message"></span>Новых сообщений: {$iUserCurrentCountTalkNew}</a>
						{/if}
							<a href="{router page='talk'}" id="new_messages" class="message"></a>

						<a href="{router page='settings'}profile/" class="author">{$aLang.user_settings}</a>
                        <a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}" class="author" >{$aLang.exit}</a>
						<br/>
						<span class="user-rating">{$aLang.user_rating} <strong>{$oUserCurrent->getRating()}</strong></span>
					</li>

					{hook run='userbar_item'}
				</ul>
			</div>
		{else}
			<div class="auth">
				<a href="{router page='login'}" class="login_form_show login-link">{$aLang.user_login_submit}</a> {$aLang.or}
				<a href="{router page='registration'}" class="registration-link">{$aLang.registration_submit}</a>
			</div>
		{/if}


		{if $oUserCurrent and ($sAction=='blog' or $sAction=='index' or $sAction=='new' or $sAction=='personal_blog' or $sAction=='feed' or $sAction=='top')}
			<a href="{router page='topic'}add/" class="button-publish"><span>{$aLang.topic_create}</span></a>
		{/if}


		{if $menu}
			{if in_array($menu,$aMenuContainers)}{$aMenuFetch.$menu}{else}{include file="menu.$menu.tpl"}{/if}
		{/if}






	</div>
</div>
