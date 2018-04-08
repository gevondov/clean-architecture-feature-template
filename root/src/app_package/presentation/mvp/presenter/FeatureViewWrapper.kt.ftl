package ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.presenter

import com.quartzsoft.freemarkertestingapplication.features.sample.presentation.view.SampleView

class ${viewWrapperName} : ${viewName} {

    private var view: ${viewName}? = null

    fun attachView(view: ${viewName}) {
        this.view = view
    }

    fun detachView() {
        this.view = null
    }

}
