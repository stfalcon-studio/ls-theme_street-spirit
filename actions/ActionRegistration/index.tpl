{assign var="noSidebar" value=true}
{include file='header.tpl'}



	<form action="{router page='registration'}" method="post">
		<div class="center">
		<h2 class="form-header">{$aLang.registration} <a href="#"><span class="openid-ico"></span>Войти, используя OpenID</a></h2>

		{hook run='form_registration_begin'}

		<p><label>{$aLang.registration_login}<br />
		<input tabindex="1" type="text" name="login" value="{$_aRequest.login}" class="input-text input-wide" /><br />
		<span class="note">{$aLang.registration_login_notice}</span></label></p>

		<p><label>{$aLang.registration_mail}<br />
		<input tabindex="2" type="text" name="mail" value="{$_aRequest.mail}" class="input-text input-wide" /><br />
		<span class="note">{$aLang.registration_mail_notice}</span></label></p>

		<p><label>{$aLang.registration_password}<br />
		<input tabindex="3" type="password" name="password" value="" class="input-text input-wide" /><br />
		<span class="note">{$aLang.registration_password_notice}</span></label></p>

		<p><label>{$aLang.registration_password_retry}<br />
		<input tabindex="4" type="password" value="" id="repass" name="password_confirm" class="input-text input-wide" /></label></p>

		<p class="captcha-wrap">
		<label>{$aLang.registration_captcha}</label>
		<img src="{cfg name='path.root.engine_lib'}/external/kcaptcha/index.php?{$_sPhpSessionName}={$_sPhpSessionId}" onclick="this.src='{cfg name='path.root.engine_lib'}/external/kcaptcha/index.php?{$_sPhpSessionName}={$_sPhpSessionId}&amp;n='+Math.random();" alt=""/>
		<span class="arr">→</span>
		<input tabindex="5" type="text" name="captcha" value="" maxlength="3" class="input-text input-100" />
		</p>

		{hook run='form_registration_end'}
		</div>
		
		<div class="button-line">
			<div class="center">
				<span><input tabindex="6" type="submit" name="submit_register" class="button big-button" value="{$aLang.registration_submit}" /></span>
			</div>
		</div>
	</form>



{include file='footer.tpl'}