package ${escapeKotlinIdentifiers(packageName)}.features.${featureFolderName}.presentation.view

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import ${escapeKotlinIdentifiers(packageName)}.R

class ${activityName} : AppCompatActivity() {

    companion object {
        fun newIntent(context: Context) = Intent(context, ${activityName}::class.java)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${activityLayoutName})

        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                    .add(R.id.view_fragment_container, ${fragmentName}.newInstance())
                    .commit()
        }
    }

}
