# Face Detection Documentation

## Step 1:
- ### Setup Environment
  - #### Install 
    - Python on your OS (python v3.10) and Add it in your PATH(Environment Variable)
    - Java SDK (java sdk v11) and Add it in your PATH(Environment Variable)
    - Android Studio

  - #### Create Project
    - Create as an Empty Activity project

  - #### Configure Main Environment for binding Python
    - We use Chaquopy Python SDK to setup this environment (Chaquopy v13.00 and Supported Android Gradle plugin versions v4.1 - v7.3 and Minimum Android API level 21 and Python v3.8 - v3.11)
    - In your top-level build.gradle file, set the Chaquopy version:
      ```
      plugins {
          id 'com.chaquo.python' version '13.0.0' apply false
      }
      ```
    - In the module-level build.gradle file (usually in the app directory), apply the Chaquopy plugin after the Android plugin:
      ```
      plugins {
          id 'com.android.application'
          id 'com.chaquo.python'
      }
      ```
