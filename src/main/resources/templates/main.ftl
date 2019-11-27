<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<#include "parts/security.ftl">

<@c.page>

    <#if isAdmin>
        <#include "parts/messageEdit.ftl"/>
    </#if>

    <#include "parts/messageList.ftl"/>


</@c.page>