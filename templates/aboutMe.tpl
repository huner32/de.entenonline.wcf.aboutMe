{include file='documentHeader'}

<head>
	<title>{lang}wcf.aboutMe.title{/lang} - {PAGE_TITLE|language}</title>
	
	{include file='headInclude'}
	
	<link rel="canonical" href="{link controller='AboutMe'}{/link}" />
</head>

<body id="tpl{$templateName|ucfirst}">

{include file='header'}

<header class="boxHeadline">
	<h1>{ABOUTME_TITLE|language}</h1>
	<p>{ABOUTME_DESCRIPTION|language}</p>
</header>

{include file='userNotice'}

<div class="container containerPadding marginTop">
	<fieldset>
		<legend>{ABOUTME_HEADLINE|language}</legend>
	
		<div class="htmlContent">
			{if ABOUTME_CONTENT_ENABLE_HTML}{@ABOUTME_CONTENT|language}{else}{@ABOUTME_CONTENT|language|newlineToBreak}{/if}
		</div>
		
		{event name='contentFields'}
	</fieldset>

	{event name='fieldsets'}
</div>

{include file='footer'}

</body>
</html>