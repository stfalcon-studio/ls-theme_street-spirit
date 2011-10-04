{assign var="noSidebar" value=true}
{include file='header.light.tpl'}


<div class="center">
	{if $bLoginError}
		<p class="system-messages-error">{$aLang.user_login_bad}</p>
	{/if}

	<form action="{router page='login'}" method="post">
		<h2 class="form-header">{$aLang.user_authorization}</h2>

		{hook run='form_login_begin'}

		<p><label>{$aLang.user_login}<br /><input tabindex="1" type="text" name="login" class="input-text" /></label></p>
		<p><label>{$aLang.user_password}<br /><input tabindex="2" type="password" name="password" class="input-text" /></label></p>
		
		<p><input type="submit" name="submit_login" class="button button-login" value="{$aLang.user_login_submit}" />
		<label><input tabindex="3" type="checkbox" name="remember" checked="checked" class="checkbox" />{$aLang.user_login_remember}</label>
		</p>
		<p><a href="{router page='registration'}">{$aLang.user_registration}</a><br />
		<a href="{router page='login'}reminder/">{$aLang.user_password_reminder}</a></p>

		{hook run='form_login_end'}
	</form>


	{if $oConfig->GetValue('general.reg.invite')}
		<br />
		<form action="{router page='registration'}invite/" method="post">
			<h2 class="form-header">{$aLang.registration_invite}</h2>

			<p><label>{$aLang.registration_invite_code}<br />
			<input type="text" tabindex="1" name="invite_code" /></label></p>
			<input type="submit" tabindex="2" name="submit_invite" value="{$aLang.registration_invite_check}" />
		</form>
	{/if}
</div>


{include file='footer.light.tpl'}