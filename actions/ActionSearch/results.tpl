{include file='header.tpl'}


<h1 class="page-title">{$aLang.search_results}: <span class="search-request">{$aReq.q|escape:'html'}</span></h1>

<ul class="switcher">
{foreach from=$aRes.aCounts item=iCount key=sType name="sTypes"}
	<li {if $aReq.sType == $sType}class="active"{/if}>					
		<a href="{router page='search'}{$sType}/?q={$aReq.q|escape:'html'}">
			{$iCount} 
			{if $sType=="topics"}
				{$aLang.search_results_count_topics}
			{elseif $sType=="comments"}
				{$aLang.search_results_count_comments}
			{/if}
		</a>
	</li>				
{/foreach}
</ul>

{if $bIsResults}
	{if $aReq.sType == 'topics'}
		{include file='topic_list.tpl'}
	{elseif $aReq.sType == 'comments'}
		{include file='comment_list.tpl'}
	{/if}
{else}
	{$aLang.search_results_empty}
{/if}


{include file='footer.tpl'}