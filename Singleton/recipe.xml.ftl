<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/Singleton.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />
</recipe>