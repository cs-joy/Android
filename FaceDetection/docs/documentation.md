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
    - ABI selection
      ```
        defaultConfig {
          ndk {
            abiFilters "armeabi-v7a", "arm64-v8a", "x86", "x86_64"
          }
        }
      ```
    - buildPython
      ```
      defaultConfig {
          python {
              buildPython "C:/path/to/python.exe"
          }
      }
      ```
    - Source code
      - By default, Chaquopy will look for Python source code in the python subdirectory of each source set. For example, the Python code for the main source set should go in src/main/python. To include Python source code from other directories, use the android.sourceSets block. For example:
      ```
      android {
          sourceSets {
              main {
                  python.srcDir "some/other/dir"
              }
          }
      }
      ```
    - 
