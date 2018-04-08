<?xml version="1.0"?>
<globals>
    <#include "root://activities/common/common_globals.xml.ftl" />
    <global id="featureFolderName" value="${featureName?lower_case}" />

    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="resOut" value="${resDir}" />
    <global id="manifestOut" value="${manifestDir}" />

</globals>
