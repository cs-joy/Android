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












### UI Design
Open `activity.xml` file, located at `src > main > res > layout > activity.xml`. After that copy the following code and paste into your `activity.xml` file

```xml
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity"
    tools:ignore="HardcodedText">


    <Button
        android:id="@+id/BSelectImage"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerHorizontal="true"
        android:text="Upload Image"
        android:layout_marginTop="100dp"/>

    <ImageView
        android:id="@+id/IVPreviewImage"
        android:layout_width="match_parent"
        android:layout_height="300dp"
        android:layout_below="@id/BSelectImage"
        android:layout_marginStart="16dp"
        android:layout_marginTop="36dp"
        android:layout_marginEnd="16dp" />


    <Button
        android:id="@+id/btnDetect"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="77dp"
        android:text="Detect"
        android:layout_centerHorizontal="true"
        android:layout_below="@id/IVPreviewImage"/>

</RelativeLayout>
```
### Write Python Script
go to `src/main/python` then create a new file called `face_detection.py` (or whatever you would like to give as an file name)
after that open the new file (`face_detection.py`)

copy the following code and paste into your python file
```py
import numpy as np
import cv2
from PIL import Image
import base64
import io
import face_recognition

def main(data):
    decoded_data = base64.b64decode(data)
    np_data = np.fromstring(decoded_data, np.uint8)
    img = cv2.imdecode(np_data, cv2.IMREAD_UNCHANGED)
    img_rgb = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    face_locations = face_recognition.face_locations(img_gray)
    for (top, right, bottom, left) in face_locations:
        cv2.rectangle(img_rgb, (left, top), (right, bottom), (0, 0, 255), 8)

    pil_img  = Image.fromarray(img_rgb)
    buff = io.BytesIO();
    pil_img.save(buff, format="PNG")
    img_str = base64.b64encode(buff.getvalue())

    return "" + str(img_str, 'utf-8')
```
