{if $aPaging and $aPaging.iCountPage>1} 
	<div class="pagination">
		<ul>
			{if $aPaging.iPrevPage}
				<li class="prev"><a href="{$aPaging.sBaseUrl}/page{$aPaging.iPrevPage}/{$aPaging.sGetParams}" class="js-paging-prev-page" title="{$aLang.paging_previos}">&larr; <p>{$aLang.paging_previos}</p></a></li>
			{else}
				<li class="prev"><span>&larr; {$aLang.paging_previos}</span></li>
			{/if}
			
			
			{if $aPaging.iNextPage}
				<li class="next"><a href="{$aPaging.sBaseUrl}/page{$aPaging.iNextPage}/{$aPaging.sGetParams}" class="js-paging-next-page" title="{$aLang.paging_next}"><p>{$aLang.paging_next}</p> &rarr;</a></li>
			{else}
				<li class="next"><span>{$aLang.paging_next} &rarr;</span></li>
			{/if}
		</ul>
		<ul>
			{if $aPaging.iCurrentPage>1}<li><a href="{$aPaging.sBaseUrl}/{$aPaging.sGetParams}" title="{$aLang.paging_first}"><small>{$aLang.paging_first}</small></a></li>{/if}
			
			{foreach from=$aPaging.aPagesLeft item=iPage}
				<li class="page_num"><a href="{$aPaging.sBaseUrl}/page{$iPage}/{$aPaging.sGetParams}">{$iPage}</a></li>
			{/foreach}
			
			<li class="active"><span>{$aPaging.iCurrentPage}</span></li>
			
			{foreach from=$aPaging.aPagesRight item=iPage}
				<li class="page_num"><a href="{$aPaging.sBaseUrl}/page{$iPage}/{$aPaging.sGetParams}">{$iPage}</a></li>
			{/foreach}
			
			
			{if $aPaging.iCurrentPage<$aPaging.iCountPage}<li><a href="{$aPaging.sBaseUrl}/page{$aPaging.iCountPage}/{$aPaging.sGetParams}" title="{$aLang.paging_last}"><small>{$aLang.paging_last}</small></a></li>{/if}					
		</ul>
	</div>
{/if}