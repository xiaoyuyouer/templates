<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
	        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
	  </#if>

	  <#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
	       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
	  </#if>   
    <dependency mavenUrl="com.android.support:recyclerview-v7:${buildApi}.+"/>

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="res/layout/activity_simple.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityName}.xml" />

    <instantiate from="res/layout/layout_item_a.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/layout_item_a.xml" />

    <instantiate from="res/layout/layout_item_b.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/layout_item_b.xml" />

    <instantiate from="res/layout/layout_item_c.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/layout_item_c.xml" />

    <instantiate from="src/app_package/MultiTypeActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/adapter/MultiTypeAdapter.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/adapter/${adapterClass}.java" />

    <instantiate from="src/app_package/bean/ItemA.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/bean/ItemA.java" />

    <instantiate from="src/app_package/bean/ItemB.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/bean/ItemB.java" />

    <instantiate from="src/app_package/bean/ItemC.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/bean/ItemC.java" />
    
    <instantiate from="src/app_package/bean/ViewItem.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/bean/ViewItem.java" />
    
    <instantiate from="src/app_package/holder/BaseViewHolder.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/holder/BaseViewHolder.java" />

    <instantiate from="src/app_package/holder/ItemAViewHolder.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/holder/ItemAViewHolder.java" />

    <instantiate from="src/app_package/holder/ItemBViewHolder.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/holder/ItemBViewHolder.java" />

    <instantiate from="src/app_package/holder/ItemCViewHolder.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/holder/ItemCViewHolder.java" />

    <instantiate from="src/app_package/type/MultiTypeFactory.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/type/MultiTypeFactory.java" />

    <instantiate from="src/app_package/type/MultiTypeFactoryImpl.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/type/MultiTypeFactoryImpl.java" />

    <open file="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.java" />

</recipe>
