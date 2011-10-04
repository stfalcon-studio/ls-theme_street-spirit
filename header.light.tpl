<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML Basic 1.1//EN"
    "http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd">

<html lang="ru">

<head>
	{hook run='html_head_begin'}
	<title>{$sHtmlTitle}</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<!--[if gte IE 7]>
        <link rel="stylesheet" type="text/css" href="{cfg name='path.static.skin'}/css/ie8-and-up.css" />
	<![endif]-->
	{$aHtmlHeadFiles.css}

	{if $bRefreshToHome}
		<meta  HTTP-EQUIV="Refresh" CONTENT="3; URL={cfg name='path.root.web'}" />
	{/if}
	{hook run='html_head_end'}
</head>

<body>
{hook run='body_begin'}
<div id="container">
	<div id="header-light">
		<a href="{cfg name='path.root.web'}" class="logo">Live<span>Street</span></a>
	</div>

	{if !$noShowSystemMessage}
		{include file='system_message.tpl'}
	{/if}