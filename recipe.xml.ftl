<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <#if needDataLayer>
        <instantiate from="src/app_package/data/FeatureRepository.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/data/${repositoryName}.kt" />

        <instantiate from="src/app_package/data/FeatureRepositoryImpl.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/data/${repositoryImplName}.kt" />
    </#if>
</recipe>
