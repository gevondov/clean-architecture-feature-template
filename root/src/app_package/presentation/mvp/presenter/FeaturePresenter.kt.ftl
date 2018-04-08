package ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.presenter

import ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.view.${viewName}

interface ${presenterName} {

    fun attachView(view: ${viewName})
    fun detachView()

}
