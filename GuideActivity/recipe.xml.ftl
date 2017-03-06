<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
	        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
	</#if>

	<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
	       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
	</#if>

    <instantiate from="root/src/app_package/WelcomeActivity.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/res/layout/activity_welcom.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />  
    <#if counts == '1'>
             <instantiate from="root/res/layout/welcome_slide1.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide1.xml" />
    <#elseif counts == '2'>
             <instantiate from="root/res/layout/welcome_slide1.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide1.xml" /> 
             <instantiate from="root/res/layout/welcome_slide2.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide2.xml" />
    <#elseif counts == '3'>
            <instantiate from="root/res/layout/welcome_slide1.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide1.xml" /> 
            <instantiate from="root/res/layout/welcome_slide2.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide2.xml" />
            <instantiate from="root/res/layout/welcome_slide3.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide3.xml" />
    <#elseif counts == '4'>
            <instantiate from="root/res/layout/welcome_slide1.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide1.xml" /> 
            <instantiate from="root/res/layout/welcome_slide2.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide2.xml" />
            <instantiate from="root/res/layout/welcome_slide3.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide3.xml" />
            <instantiate from="root/res/layout/welcome_slide4.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide4.xml" />
    <#else>
            <instantiate from="root/res/layout/welcome_slide1.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide1.xml" /> 
            <instantiate from="root/res/layout/welcome_slide2.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide2.xml" />
            <instantiate from="root/res/layout/welcome_slide3.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide3.xml" />
            <instantiate from="root/res/layout/welcome_slide4.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide4.xml" />
            <instantiate from="root/res/layout/welcome_slide5.xml.ftl"
		        to="${escapeXmlAttribute(resOut)}/layout/welcome_slide5.xml" />
    </#if>
    <merge from="root/res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
             
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
