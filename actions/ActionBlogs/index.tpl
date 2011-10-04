{assign var="noSidebar" value=true}
{include file='header.tpl' sMenuHeadItemSelect="blogs"}
<h1 class="page-title">{$aLang.blogs}</h1>

{include file='blog_list.tpl'}
{include file='paging.tpl' aPaging="$aPaging"}
{include file='footer.tpl'}