{if $oUserProfile}




<div class="block contacts nostyle">
	
	{if $oUserProfile->getProfileIcq()}
		<h2>{$aLang.profile_social_contacts}</h2>
		<ul>
			{if $oUserProfile->getProfileIcq()}
				<li class="icq"><a href="http://www.icq.com/people/about_me.php?uin={$oUserProfile->getProfileIcq()|escape:'html'}" target="_blank">{$oUserProfile->getProfileIcq()}</a></li>
			{/if}					
		</ul>
	{/if}
	
	
	
</div>

{if $oUserProfile->getProfileFoto()}
	<div class="block">
		<h2>Фото</h2>
		<img src="{$oUserProfile->getProfileFoto()}" alt="photo" />
	</div>
	{/if}

{/if}