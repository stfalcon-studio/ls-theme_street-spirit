			{hook run='content_end'}
			</div><!-- /content-inner -->
		</div><!-- /content -->

		{if !$noSidebar}
			{include file='sidebar.tpl'}
		{/if}
	</div><!-- /wrapper -->

	<div id="footer">
		<div id="footer-inner">
			<div class="right">
				&copy; Powered by <a href="http://livestreetcms.ru">LiveStreet CMS</a>
				<div class="studio">{$aLang.text_skin_made_in}<a href="http://stfalcon.com/"><img src="{cfg name='path.static.skin'}/images/studio-logo.png" alt="stfalcon.com"/></a></div>
			</div>

			<div class="left">
				<div class="footer-menu">
					<ul>
						<li>
							{if $oUserCurrent}
							<h3>{$oUserCurrent->getLogin()}</h3>
							<ul>
								<li><a href="{router page='topic'}add/">{$aLang.topic_create}</a></li>
                                {if $oUserCurrent->isAdministrator()}
                                    <li><a href="{cfg name='path.root.web'}/admin">{$aLang.admin_title}</a></li>
                                {/if}
								<li><a href="{router page='talk'}">{$aLang.talk_menu_inbox}</a></li>
								<li><a href="{router page='settings'}profile/">{$aLang.user_settings} {$aLang.user_settings_profile}</a></li>
								<li><a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a></li>
							</ul>
							{else}
							<ul>
								<li><a href="{router page='login'}" class="login_form_show login-link">{$aLang.user_login_submit}</a></li>
								<li><a href="{router page='registration'}">{$aLang.registration_submit}</a></li>
							</ul>
							{/if}

						</li>
						<li>
							{if $aLang.menu_section}<h3>{$aLang.menu_section}</h3>{/if}
							<ul>
								<li><a href="{router page='blogs'}">{$aLang.blogs}</a></li>
								<li><a href="{router page='people'}">{$aLang.people}</a></li>
								<li><a href="{router page='stream'}">{$aLang.profile_activity}</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</div><!-- /container -->

{hook run='body_end'}

</body>
</html>