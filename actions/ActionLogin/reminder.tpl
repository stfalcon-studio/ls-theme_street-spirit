{assign var="noSidebar" value=true}
{include file='header.tpl'}



	
	<form action="{router page='login'}reminder/" method="post">
		<div class="center">
			<h2 class="form-header">{$aLang.password_reminder}</h2>

			<p><label for="mail">{$aLang.password_reminder_email}<br />
			<input type="text" name="mail" id="name" class="input-200" /></label></p>	
			<div class="reg-exp">На ваш почтовый ящик будет выслана ссылка с инструкцией по смене пароля.</div>
		</div>
		<div class="button-line">
			<div class="center"><span><input type="submit" name="submit_reminder" class="button" value="{$aLang.password_reminder_submit}" /></span></div>
		</div>
	</form>



{include file='footer.tpl'}