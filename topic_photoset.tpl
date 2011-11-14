{assign var="oBlog" value=$oTopic->getBlog()}
{assign var="oUser" value=$oTopic->getUser()}
{assign var="oVote" value=$oTopic->getVote()}

<script type="text/javascript">
    jQuery(window).load(function($) {
        ls.photoset.showMainPhoto({$oTopic->getId()});
    });
</script>

<div class="topic photo">
    <div class="user-title">
        <a href="{$oBlog->getUrlFull()}" class="title-blog">{$oBlog->getTitle()|escape:'html'}</a>
    </div>
    <h1 class="title">
        {if $oTopic->getPublish()==0}
        <img src="{cfg name='path.static.skin'}/images/draft.png" title="{$aLang.topic_unpublish}" alt="{$aLang.topic_unpublish}" />
        {/if}
        {if $bTopicList}
        <a href="{$oTopic->getUrl()}" class="title-topic">{$oTopic->getTitle()|escape:'html'}</a>
        {else}
        {$oTopic->getTitle()|escape:'html'}
        {/if}
        <a href="#" onclick="return ls.favourite.toggle({$oTopic->getId()},this,'topic');" class="favourite {if $oUserCurrent && $oTopic->getIsFavourite()}active{/if}"></a>
    </h1>
    {if $oUserCurrent and ($oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getOwnerId()==$oUserCurrent->getId() or $oUserCurrent->getId()==$oTopic->getUserId() or $oBlog->getUserIsModerator())}
    <div class="info-top">
        <span class="actions">
            {if $oUserCurrent->getId()==$oTopic->getUserId() or $oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getUserIsModerator() or $oBlog->getOwnerId()==$oUserCurrent->getId()}
                <a href="{cfg name='path.root.web'}/{$oTopic->getType()}/edit/{$oTopic->getId()}/" title="{$aLang.topic_edit}" class="edit">{$aLang.topic_edit}</a>
            {/if}
            {if $oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getOwnerId()==$oUserCurrent->getId()}
            <a href="{router page='topic'}delete/{$oTopic->getId()}/?security_ls_key={$LIVESTREET_SECURITY_KEY}" title="{$aLang.topic_delete}"
               onclick="return confirm('{$aLang.topic_delete_confirm}');" class="delete">{$aLang.topic_delete}</a>
            {/if}
        </span>
    </div>
    {/if}
    <div class="topic-photo-preview" onclick="window.location='{$oTopic->getUrl()}#photoset'" id="photoset-main-preview-{$oTopic->getId()}">
        {assign var=oMainPhoto value=$oTopic->getPhotosetMainPhoto()}
        <div class="topic-photo-count" id="photoset-photo-count-{$oTopic->getId()}">{$oTopic->getPhotosetCount()} {$aLang.topic_photoset_photos}</div>
        <img src="{$oMainPhoto->getWebPath(500)}" alt="image" id="photoset-main-image-{$oTopic->getId()}" />
        {if $oMainPhoto->getDescription()}
        <div class="topic-photo-desc" id="photoset-photo-desc-{$oTopic->getId()}">{$oMainPhoto->getDescription()}</div>
        {/if}
    </div>

    {assign var=iPhotosCount value=$oTopic->getPhotosetCount()}
    <div class="content">
        {if $bTopicList}
        {$oTopic->getTextShort()}
        {if $oTopic->getTextShort()!=$oTopic->getText()}
        <br /><a href="{$oTopic->getUrl()}#cut" title="{$aLang.topic_read_more}">
            {if $oTopic->getCutText()}
            {$oTopic->getCutText()}
            {else}
            {$aLang.topic_photoset_show_all|ls_lang:"COUNT%%`$iPhotosCount`"} &rarr;
            {/if}
        </a>
        {/if}
        {else}
        {$oTopic->getText()}
        {/if}
    </div>


    {if !$bTopicList}
    <script type="text/javascript" src="{cfg name='path.root.engine_lib'}/external/prettyPhoto/js/prettyPhoto.js"></script>
    <link rel='stylesheet' type='text/css' href="{cfg name='path.root.engine_lib'}/external/prettyPhoto/css/prettyPhoto.css">
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('.photoset-image').prettyPhoto({
                social_tools:'',
                show_title: false,
                slideshow:false,
                deeplinking: false
            });
        });
    </script>

    <div class="topic-photo-images">
        <h2>{$oTopic->getPhotosetCount()} {$oTopic->getPhotosetCount()|declension:$aLang.topic_photoset_count_images}</h2>
        <a name="photoset"></a>
        <ul id="topic-photo-images" >
            {assign var=aPhotos value=$oTopic->getPhotosetPhotos(0, $oConfig->get('module.topic.photoset.per_page'))}
            {if count($aPhotos)}
            {foreach from=$aPhotos item=oPhoto}
            <li><a class="photoset-image" href="{$oPhoto->getWebPath(1000)}" rel="[photoset]"  title="{$oPhoto->getDescription()}"><img src="{$oPhoto->getWebPath('50crop')}" alt="{$oPhoto->getDescription()}" /></a></li>
            {assign var=iLastPhotoId value=$oPhoto->getId()}
            {/foreach}
            {/if}
            <script type="text/javascript">
                ls.photoset.idLast='{$iLastPhotoId}';
            </script>
        </ul>
        {if count($aPhotos)<$oTopic->getPhotosetCount()}
        <a href="javascript:ls.photoset.getMore({$oTopic->getId()})" id="topic-photo-more" class="topic-photo-more">{$aLang.topic_photoset_show_more} &darr;</a>
        {/if}
    </div>
    {/if}


    <ul class="tags">
        {foreach from=$oTopic->getTagsArray() item=sTag name=tags_list}
        <li><a href="{router page='tag'}{$sTag|escape:'url'}/">{$sTag|escape:'html'}</a>{if !$smarty.foreach.tags_list.last}{/if}</li>
        {/foreach}
    </ul>



    <ul class="info">
        {if !$bTopicList}
			{include file='block.addthis.tpl'}
        {/if}

        <li class="username">
            <a href="{$oUser->getUserWebPath()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="{$oUser->getLogin()}" class="avatar" /></a>
            <a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>,
        </li>

        <li class="date">{date_format date=$oTopic->getDateAdd()}</li>

        {if $bTopicList}
        <li class="comments-counter">
            {if $oTopic->getCountComment()>0}
            <a href="{$oTopic->getUrl()}#comments" title="{$aLang.topic_comment_read}"><span class="comments-counter-ico">&nbsp;</span>{$oTopic->getCountComment()}{if $oTopic->getCountCommentNew()}<span>+{$oTopic->getCountCommentNew()}</span>{/if}</a>
            {else}
            <a href="{$oTopic->getUrl()}#comments" title="{$aLang.topic_comment_add}"><span class="comments-counter-ico">&nbsp;</span>{$aLang.topic_comment_add}</a>
            {/if}
        </li>
        {/if}

        {assign var="bVoteAllow" value=1}
        {if ($oUserCurrent && $oTopic->getUserId()==$oUserCurrent->getId())
        || strtotime($oTopic->getDateAdd())<$smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time')}
        {assign var="bVoteAllow" value=0}
        {/if}
        <li {if !$oVote && $bVoteAllow}style="display:none;" {/if}class="vote-counter" id="vote_area_res_topic_{$oTopic->getId()}">
            {$aLang.topic_rating}:
            <span class="vote-wrap {if $oVote || ($oUserCurrent && $oTopic->getUserId()==$oUserCurrent->getId()) || strtotime($oTopic->getDateAdd())<$smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time')}{if $oTopic->getRating()>0}positive{elseif $oTopic->getRating()<0}negative{/if}{/if} {if !$oUserCurrent || $oTopic->getUserId()==$oUserCurrent->getId() || strtotime($oTopic->getDateAdd())<$smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time')}guest{/if}{if $oVote} voted {if $oVote->getDirection()>0}plus{elseif $oVote->getDirection()<0}minus{/if}{/if}">
                <span id="vote_total_topic_{$oTopic->getId()}" class="total" title="{$aLang.topic_vote_count}: {$oTopic->getCountVote()}">{if $oVote || ($oUserCurrent && $oTopic->getUserId()==$oUserCurrent->getId()) || strtotime($oTopic->getDateAdd())<$smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time')}{if $oTopic->getRating()>0}+{$oTopic->getRating()}{else}{$oTopic->getRating()}{/if}{else}<a href="#" onclick="return ls.vote.vote({$oTopic->getId()},this,0,'topic');">?</a>{/if}</span>
                <span class="total-ico">&nbsp;</span>
            </span>
        </li>
        <li {if $oVote || !$bVoteAllow}style="display: none;" {/if}id="vote_area_btn_topic_{$oTopic->getId()}" class="voting-line {if $oVote || !$bVoteAllow}{if $oTopic->getRating()>0}positive{elseif $oTopic->getRating()<0}negative{/if}{/if} {if !$oUserCurrent || !$bVoteAllow}guest{/if}{if $oVote} voted {if $oVote->getDirection()>0}plus{elseif $oVote->getDirection()<0}minus{/if}{/if}">
            <span class="vote-ico">&nbsp;</span>
            <a href="#" class="plus" onclick="return ls.vote.vote({$oTopic->getId()},this,1,'topic');">{$aLang.topic_vote_plus}</a> &nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="#" class="minus" onclick="return ls.vote.vote({$oTopic->getId()},this,-1,'topic');">{$aLang.topic_vote_minus}</a>
        </li>
        {hook run='topic_show_info' topic=$oTopic}
    </ul>
    {if !$bTopicList}
    {hook run='topic_show_end' topic=$oTopic}
    {/if}
</div>