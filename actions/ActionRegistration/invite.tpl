{assign var="noSidebar" value=true}
{include file='header.light.tpl'}


<div class="center">
	<form action="{router page='registration'}invite/" method="post">
		<h2 class="form-header">{$aLang.registration_invite}</h2>

		<p><label>{$aLang.registration_invite_code}<br />
		<input type="text" name="invite_code" class="input-text" /></label></p>

		<input type="submit" name="submit_invite" value="{$aLang.registration_invite_check}" class="button button-login"/>
	</form>
</div>


{include file='footer.light.tpl'}