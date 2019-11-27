<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>

    <#if isCurrentUser>
        <#include "parts/messageEdit.ftl"/>
    </#if>

    <#if message??>
        <div class="card my-3" data-id="${message.id}">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top"/>
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/><br/>
                <a href="?filter=${message.tag}"><i>#${message.tag}</i></a>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}"><strong>${message.getAuthorName()}</strong></a>
            </div>
        </div>
    <#else >
        <#include "parts/messageList.ftl"/>
    </#if>

</@c.page>