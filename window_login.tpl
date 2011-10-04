{if !$oUserCurrent}
<div class="login-form jqmWindow" id="login_form">
    <a href="#" class="close jqmClose"></a>

    <form action="{router page='login'}" method="post">
        <div class="autorization-line"><h3>{$aLang.user_authorization}</h3> или <a href="{router page='registration'}">{$aLang.user_registration}</a></div>

        {hook run='form_login_popup_begin'}
        <dl>
            <dt><label>{$aLang.user_login}:</label></dt>
            <dd><input tabindex="1" type="text" class="input-text" name="login" id="login-input"/></dd>
            <dt><label><a href="{router page='login'}reminder/">{$aLang.user_password_reminder}</a> {$aLang.user_password}:</label></dt>
            <dd><input tabindex="2" type="password" name="password" class="input-text" /></dd>
            <dt>&nbsp;</dt>
            <dd><input tabindex="4" type="submit" name="submit_login" class="green-button" value="{$aLang.user_login_submit}" /><label class="label-remember"><input tabindex="3" type="checkbox" name="remember" class="checkbox" checked="checked" />{$aLang.user_login_remember}</label></dd>
        </dl>
    </form>
</div>
{/if}