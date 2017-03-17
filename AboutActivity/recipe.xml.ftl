<?xml version="1.0"?>
<recipe>
<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
</#if>
<#if hasAppBar && !(hasDependency('com.android.support:design'))>
    <dependency mavenUrl="com.android.support:design:${buildApi}.+"/>
</#if>
<#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+" />
</#if>

    <#include "../common/recipe_manifest.xml.ftl" />

    <merge from="root/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
    <merge from="root/res/values/styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <#include "../common/recipe_no_actionbar.xml.ftl" />
    <instantiate from="root/res/layout/app_bar.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />

    <instantiate from="root/src/app_package/AboutActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
