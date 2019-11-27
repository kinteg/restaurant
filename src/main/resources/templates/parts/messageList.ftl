<#include "security.ftl">
<#import "pager.ftl" as p>
<#import "../delete.ftl" as d>

<div>List of messages</div>
<div class="card-columns" id="message-list">
    <#list page.content as message>
        <div class="card my-3" data-id="${message.id}">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top"/>
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/><br/>
                <a href="?filter=${message.tag}"><i>#${message.tag}</i></a>
            </div>
            <#if message.author.isAdmin()>
                <div class="card-footer text-muted">
                    <a href="/user-messages/${message.author.id}"><strong>${message.getAuthorName()}</strong></a>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        Edit
                    </a>
                    <a class="btn btn-primary" href="/delete?id=${message.id}">
                        Delete
                    </a>
                </div>
            </#if>
        </div>
    <#else>
        No messages
    </#list>
</div>
<@p.pager url page/>

