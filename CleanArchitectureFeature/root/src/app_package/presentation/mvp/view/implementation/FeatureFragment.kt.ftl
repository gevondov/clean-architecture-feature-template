package ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.view

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${escapeKotlinIdentifiers(packageName)}.R
import ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.presenter.${presenterName}

class ${fragmentName} : Fragment(), ${viewName} {

    companion object {
        fun newInstance() = ${fragmentName}()
    }

    lateinit var presenter: ${presenterName}

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = inflater.inflate(R.layout.${fragmentLayoutName}, container, false)

        return view
    }

    override fun onStart() {
        super.onStart()

        presenter.attachView(this)
    }

    override fun onStop() {
        super.onStop()

        presenter.detachView()
    }

}
