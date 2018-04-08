## Overview
Android Studio template to create clean architecture feature using Kotlin language.

The feature will be created with the following structure: 

- src
  - features
    - featureName
      - data
        - FeatureRepository.kt
        - FeatureRepositoryImpl.kt
      - domain
        - FeatureInteractor.kt
        - FeatureInteractorImpl.kt
      - presentation
        - presenter
          - FeaturePresenter.kt
          - FeaturePresenterImpl.kt
          - FeatureViewWrapper.kt
        - view
          - FeatureView.kt
          - FeatureActivity.kt
          - FeatureFragment.kt
- res
  - layout
    - activity_feature.xml
    - fragment_feature.xml
          
## Usage
1. Clone this repository
2. Copy `CleanArchitectureFeature` folder to the `android-studio-folder/plugins/lib/templates/other/` folder
3. Restart Android Studio
4. Find new template under the `File > New > Other > Clean Architecture Feature` menu
