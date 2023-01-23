import numpy as np
import cv2
import PLI from Image
import base64
import io

def image_process(imgString):
    decodedData = base64.b64decode(imgString)
    np_data = np.fromString(decodedData, np.uint8)
    img = cv2.imdecode(np_data, cv2.IMREAD_UNCHANGED)
    img_grayscale = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    pil_img  = Image.fromarray(img_grayscale)
    buff = io.BytesIO();
    pil_img.save(buff, format="PNG")
    img_str = base64.b64decode(buff.getvalue())

    return "" + str(img_str, 'utf-8')