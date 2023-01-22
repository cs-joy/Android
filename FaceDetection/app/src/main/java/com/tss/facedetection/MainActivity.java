package com.tss.facedetection;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.util.Base64;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.chaquo.python.PyObject;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;

import java.io.ByteArrayOutputStream;

public class MainActivity extends AppCompatActivity {
    private Button btnDetect;
    private ImageView imgVO;
    private BitmapDrawable drawable;
    private Bitmap bitmap;
    private String imgString = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnDetect = findViewById(R.id.btnDetect);
        imgVO = findViewById(R.id.imgVO);

        if (! Python.isStarted()) {
            Python.start(new AndroidPlatform(this));
        }

        final Python pyInstance = Python.getInstance();

        btnDetect.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                drawable  = (BitmapDrawable)imgVO.getDrawable();
                bitmap = drawable.getBitmap();
                imgString = getStringImage(bitmap);

                PyObject module = pyInstance.getModule("hello");

                PyObject obj = module.callAttr("main", imgString);
                String str = obj.toString();
                byte data[] = android.util.Base64.decode(str, Base64.DEFAULT);
                Bitmap bmap = BitmapFactory.decodeByteArray(data, 0, data.length);

                imgVO.setImageBitmap(bmap);

            }
        });

    }

    private String getStringImage(Bitmap bitmap) {
        //
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, baos);
        byte[] imageBytes = baos.toByteArray();
        String encodedImage = android.util.Base64.encodeToString(imageBytes, Base64.DEFAULT);

        return encodedImage;
    }
}