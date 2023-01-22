package com.tss.facedetection;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.chaquo.python.PyObject;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;

public class MainActivity extends AppCompatActivity {

    private Button btn;
    private TextView txtView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn = findViewById(R.id.btnC);
        txtView = findViewById(R.id.txtV);

        if (! Python.isStarted()) {
            Python.start(new AndroidPlatform(this));
        }

        final Python pyInstance = Python.getInstance();

        PyObject module = pyInstance.getModule("hello");

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                PyObject ob = module.callAttr("test");
                txtView.setText(ob.toString());
            }
        });

    }
}