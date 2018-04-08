package ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.presenter

import ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.view.${viewName}

class ${presenterImplName} : ${presenterName} {

    private val view = ${viewWrapperName}()

    override fun attachView(view: ${viewName}) {
        this.view.attachView(view)
    }

    override fun detachView() {
        this.view.detachView()
    }

}
