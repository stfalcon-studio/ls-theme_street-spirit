<table class="table blog-list-table table-people">
		<tr class="thead">
			<td></td>
			{if $oUserCurrent}<td align="center" class="table-uer-menu"></td>{/if}
			<td align="center" class="small-table-column">{$aLang.blogs_readers}</td>
			<td align="center" class="small-table-column">{$aLang.blogs_rating}</td>
		</tr>

		{foreach from=$aBlogs item=oBlog}
			{assign var="oUserOwner" value=$oBlog->getOwner()}
			<tr>
				<td>
					<a href="{router page='blog'}{$oBlog->getUrl()}/"><img src="{$oBlog->getAvatarPath(48)}" alt="" class="avatar" /></a>
					<a href="{router page='blog'}{$oBlog->getUrl()}/" class="title">{$oBlog->getTitle()|escape:'html'}</a>
					{if $oBlog->getType()=='close'}<img src="{cfg name='path.static.skin'}/images/lock.png" alt="[x]" title="{$aLang.blog_closed}" class="private" />{/if}
					<p>{$aLang.blogs_owner}: <a href="{router page='profile'}{$oUserOwner->getLogin()}/" class="usertag">{$oUserOwner->getLogin()}</a></p>
				</td>
				{if $oUserCurrent}
					<td align="center">
						{if $oUserCurrent->getId()!=$oBlog->getOwnerId() and $oBlog->getType()=='open'}
							<div onclick="ls.blog.toggleJoin(this, {$oBlog->getId()}); return false;" class="join {if $oBlog->getUserIsJoin()}active{/if}"><span>{if $oBlog->getUserIsJoin()}{$aLang.blog_leave}{else}{$aLang.blog_join}{/if}</span></div>
						{else}
							&mdash;
						{/if}
					</td>
				{/if}
				<td align="center" id="blog_user_count_{$oBlog->getId()}" class="date">{$oBlog->getCountUser()}</td>
				<td align="center" class="rating {if $oBlog->getRating()>0}positive{elseif $oBlog->getRating()<0}negative{/if}"><strong>{$oBlog->getRating()}</strong></td>
			</tr>
		{/foreach}

</table>