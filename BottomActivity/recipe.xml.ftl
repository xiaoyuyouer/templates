<?xml version="1.0"?>
<recipe>
    <dependency mavenUrl="com.android.support:design:${buildApi}.+" />

    <#include "../common/recipe_manifest.xml.ftl" />

    <copy from="root/res/drawable"
            to="${escapeXmlAttribute(resOut)}/drawable" />
    <copy from="root/res/color"
            to="${escapeXmlAttribute(resOut)}/color" />
    <copy from="root/res/menu/navigation.xml"
            to="${escapeXmlAttribute(resOut)}/menu/navigation.xml" />

    <instantiate from="root/src/app_package/MainActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/src/app_package/BottomNavigationViewEx.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/widget/BottomNavigationViewEx.java" />
    <instantiate from="root/res/layout/activity_main.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>
