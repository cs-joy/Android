# Face Detection Documentation

## Step 1:
- ### Setup Environment
  - #### Install 
    - Python on your OS (python v3.10) and Add it in your PATH(Environment Variable)
    - Java SDK (java sdk v11) and Add it in your PATH(Environment Variable)
    - Android Studio (Electric Eel 2022.1.1)

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
    - External Python packages may be built into the app using the pip block in build.gradle. Within this block, add install lines, which can take any of the forms accepted by pip install. For example:
      ```
      defaultConfig {
        python {
          pip {
            // A requirement specifier, with or without a version number:
            install "scipy"
            install "requests==2.24.0"

            // An sdist or wheel filename, relative to the project directory:
            install "MyPackage-1.2.3-py2.py3-none-any.whl"

            // A directory containing a setup.py, relative to the project
            // directory (must contain at least one slash):
            install "./MyPackage"

            // "-r"` followed by a requirements filename, relative to the
            // project directory:
            install "-r", "requirements.txt"
          }
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
#### Android Studio plugin
To add Python editing suppport to the Android Studio user interface, you may optionally install the “Python Community Edition” plugin. However, Chaquopy isn’t integrated with this plugin, so you’ll see the warning “No Python interpreter configured for the module”, and your code will probably display many error indicators such as “Unresolved reference” and “No module named”. These are harmless: just go ahead and run your app, and if there really is an error, the details will be displayed in the Logcat.
