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

    <#if needDomainLayer>
        <instantiate from="src/app_package/domain/FeatureInteractor.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/domain/${interactorName}.kt" />

        <instantiate from="src/app_package/domain/FeatureInteractorImpl.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/domain/${interactorImplName}.kt" />
    </#if>

    <#if presentationLayerType == "mvp">
        <instantiate from="src/app_package/presentation/mvp/presenter/FeaturePresenter.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/presentation/presenter/${presenterName}.kt" />

        <instantiate from="src/app_package/presentation/mvp/presenter/FeaturePresenterImpl.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/presentation/presenter/${presenterImplName}.kt" />

        <instantiate from="src/app_package/presentation/mvp/presenter/FeatureViewWrapper.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/presentation/presenter/${viewWrapperName}.kt" />

        <instantiate from="src/app_package/presentation/mvp/view/FeatureView.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/presentation/view/${viewName}.kt" />

        <#if presentationImplementationType == 'activity'>
            <instantiate from="src/app_package/presentation/mvp/view/implementation/FeatureActivity.kt.ftl"
                           to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/presentation/view/${activityName}.kt" />

            <instantiate from="res/layout/activity_layout.xml.ftl"
                           to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

            <merge from="manifest/ActivityManifest.xml.ftl"
                     to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

        <#else>
            <instantiate from="src/app_package/presentation/mvp/view/implementation/FeatureFragment.kt.ftl"
                           to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/presentation/view/${fragmentName}.kt" />

            <instantiate from="res/layout/fragment_layout.xml.ftl"
                           to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

            <#if presentationImplementationType == 'activityAndFragment'>
                <instantiate from="src/app_package/presentation/mvp/view/implementation/FeatureActivityWithFragment.kt.ftl"
                               to="${escapeXmlAttribute(srcOut)}/features/${escapeXmlAttribute(featureFolderName)}/presentation/view/${activityName}.kt" />

                <instantiate from="res/layout/activity_with_fragment_layout.xml.ftl"
                               to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

                <merge from="manifest/ActivityManifest.xml.ftl"
                         to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
            </#if>

        </#if>
    </#if>

</recipe>
