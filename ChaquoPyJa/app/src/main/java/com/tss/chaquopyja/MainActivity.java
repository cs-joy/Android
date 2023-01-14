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

    private EditText edtTxtFname, edtTxtLname;
    private Button btnFullName;

    private TextView displayGreet;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edtTxtFname = findViewById(R.id.edtTxtFname);
        edtTxtLname = findViewById(R.id.edtTxtLname);

        btnFullName = findViewById(R.id.btnFullName);

        displayGreet = findViewById(R.id.displayGreet);

        if (!Python.isStarted()) {
            Python.start(new AndroidPlatform(this));
        }

        Python instance = Python.getInstance();
        PyObject module = instance.getModule("concatenation");

        btnFullName.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                PyObject obj = module.callAttr("concatenate", edtTxtFname.getText().toString(), edtTxtLname.getText().toString());
                displayGreet.setText(obj.toString());
            }
        });


    }
}