package com.tss.chaquopyja;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class MainActivity extends AppCompatActivity {

    private EditText edtTxtCX, edtTxtCY;
    private Button btnPlot;
    private ImageView displayPlot;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edtTxtCX = findViewById(R.id.edtTxtCX);
        edtTxtCY = findViewById(R.id.edtTxtCY);

        btnPlot = findViewById(R.id.btnPlot);

        displayPlot = findViewById(R.id.imageView);

        if (!Python.isStarted()) {
            Python.start(new AndroidPlatform(this));
        }

        Python instance = Python.getInstance();
        PyObject module = instance.getModule("plotting");

        btnPlot.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    PyObject bytes = module.callAttr("plot", edtTxtCX, edtTxtCY);

                    ByteArrayOutputStream bos = new ByteArrayOutputStream();
                    try {
                        ObjectOutputStream oos = new ObjectOutputStream(bos);
                        oos.writeObject(bytes);
                        oos.flush();
                        byte[] data = bos.toByteArray();

                        Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);

                        displayPlot.setImageBitmap(bitmap);
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                } catch (PyException e) {
                    //Toast.makeText(this, "hi", Toast.LENGTH_LONG).show();
                    System.out.println("error: " + e);
                }



            }
        });

    }
}