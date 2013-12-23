<header id="header" role="banner">
	{hook run='header_banner_begin'}
	<div class="container clear">
		<h1 class="site-name"><a href="{cfg name='path.root.web'}">{cfg name='view.name'}</a></h1>
	</div>
	
	<div class="wrap main_menu clear">
		<div class="container clear">
			<div class="search-header">
				<!-- <div class="search-header-show" id="search-header-show"><i class="icon-synio-search"></i> <a href="#" class="link-dotted">{$aLang.search_submit}</a></div> -->
				
				<form class="search-header-form" id="search-header-form" action="{router page='search'}topics/">
					<input type="text" placeholder="{$aLang.search}" maxlength="255" name="q" class="input-text">
					<input type="submit" value="" title="{$aLang.search_submit}" class="input-submit">
				</form>
			</div>

			<ul class="nav nav-main" id="nav-main">
				<li {if $sMenuHeadItemSelect=='blog'}class="active"{/if}><a href="{cfg name='path.root.web'}">{$aLang.topic_title}</a> <i></i></li>
				<li {if $sMenuHeadItemSelect=='blogs'}class="active"{/if}><a href="{router page='blogs'}">{$aLang.blogs}</a> <i></i></li>
				<li {if $sMenuHeadItemSelect=='people'}class="active"{/if}><a href="{router page='people'}">{$aLang.people}</a> <i></i></li>
				<li {if $sMenuHeadItemSelect=='stream'}class="active"{/if}><a href="{router page='stream'}">{$aLang.stream_menu}</a> <i></i></li>

				{hook run='main_menu_item'}

				<li class="nav-main-more"><a href="#" id="dropdown-mainmenu-trigger" onclick="return false">{$aLang.more}</a></li>
			</ul>
		</div>
	</div>
	
	<!-- <div class="container clear">
		<ul class="dropdown-nav-main dropdown-menu" id="dropdown-mainmenu-menu"></ul>

		{hook run='main_menu'}
		
		
		{hook run='userbar_nav'}
		
		{if $oUserCurrent}
			<div class="dropdown-user" id="dropdown-user">
				<a href="{$oUserCurrent->getUserWebPath()}"><img src="{$oUserCurrent->getProfileAvatarPath(48)}" alt="avatar" class="avatar" /></a>
				<a href="{$oUserCurrent->getUserWebPath()}" class="username">{$oUserCurrent->getLogin()}</a>
				
				<div class="dropdown-user-shadow"></div>
				<div class="dropdown-user-trigger" id="dropdown-user-trigger"><i></i></div>
				
				<ul class="dropdown-user-menu" id="dropdown-user-menu" style="display: none">
					<li class="item-stat">
						<span class="strength" title="{$aLang.user_skill}"><i class="icon-synio-star-green"></i> {$oUserCurrent->getSkill()}</span>
						<span class="rating {if $oUserCurrent->getRating() < 0}negative{/if}" title="{$aLang.user_rating}"><i class="icon-synio-rating"></i> {$oUserCurrent->getRating()}</span>
						{hook run='userbar_stat_item'}
					</li>
					{hook run='userbar_item_first'}
					<li class="item-messages">
						<a href="{router page='talk'}" id="new_messages">
							<i class="item-icon"></i>
							{$aLang.user_privat_messages}
							{if $iUserCurrentCountTalkNew}<div class="new">+{$iUserCurrentCountTalkNew}</div>{/if}
						</a>
					</li>
					<li class="item-favourite"><i class="item-icon"></i><a href="{$oUserCurrent->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites}</a></li> 
					<li class="item-profile"><i class="item-icon"></i><a href="{$oUserCurrent->getUserWebPath()}">{$aLang.footer_menu_user_profile}</a></li>
					<li class="item-settings"><i class="item-icon"></i><a href="{router page='settings'}profile/">{$aLang.user_settings}</a></li>
					<li class="item-create"><i class="item-icon"></i><a href="{router page='topic'}add/">{$aLang.block_create}</a></li>
					{hook run='userbar_item_last'}
					<li class="item-signout"><i class="item-icon"></i><a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a></li>
				</ul>
			</div>
		{else}
			<ul class="auth">
				{hook run='userbar_item'}
				<li><a href="{router page='registration'}" class="js-registration-form-show">{$aLang.registration_submit}</a></li>
				<li><a href="{router page='login'}" class="js-login-form-show sign-in">{$aLang.user_login_submit}</a></li>
			</ul>
		{/if}
		
		{if $iUserCurrentCountTalkNew}<a href="{router page='talk'}" class="new-messages">+{$iUserCurrentCountTalkNew} <i class="icon-synio-new-message"></i></a>{/if}
	</div> -->
	
	{hook run='header_banner_end'}
