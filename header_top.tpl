<div id="logo-line">
    <div class="logo-line-inside">
        <a href="{cfg name='path.root.web'}" class="logo">Live<span>Street</span></a>
    </div>
</div>
<div id="header">
    <div class="header-inside">
        <div class="search-form">
            <form action="{router page='search'}topics/" method="get" class="search">
                <div>
                    <input class="text" type="text" value="" name="q" />
                    <input class="search-submit" type="submit" value="" />
                </div>
            </form>
        </div>
        <span class="search-label">{$aLang.search_keyword_text}</span>

        <ul class="pages">
            <li {if $sMenuHeadItemSelect=='blog'}class="active"{/if}><a href="{cfg name='path.root.web'}">{$aLang.topic_title}</a></li>
            <li {if $sMenuHeadItemSelect=='blogs'}class="active"{/if}><a href="{router page='blogs'}">{$aLang.blogs}</a></li>
            <li {if $sMenuHeadItemSelect=='people'}class="active"{/if}><a href="{router page='people'}">{$aLang.people}</a></li>
            {if $oUserCurrent}
            <li {if $sMenuItemSelect=='stream'}class="active"{/if}>
                <a href="{router page='stream'}">{$aLang.stream_personal_title}</a>
            </li>
            {/if}
            {hook run='main_menu'}
        </ul>
    </div>
</div>