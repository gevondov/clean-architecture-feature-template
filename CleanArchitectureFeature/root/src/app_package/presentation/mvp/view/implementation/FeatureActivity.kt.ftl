package ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.view

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import ${escapeKotlinIdentifiers(packageName)}.R
import ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.presenter.${presenterName}

class ${activityName} : AppCompatActivity(), ${viewName} {

    companion object {
        fun newIntent(context: Context) = Intent(context, ${activityName}::class.java)
    }

    lateinit var presenter: ${presenterName}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${activityLayoutName})
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
