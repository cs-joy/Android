package com.example.pyapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.chaquo.python.PyObject;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;

public class MainActivity extends AppCompatActivity {

    // define variable
    EditText Et1, Et2;
    Button Btn;
    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Et1 = (EditText) findViewById(R.id.et1);
        Et1 = (EditText) findViewById(R.id.et2);
        Btn = (Button) findViewById(R.id.btn);
        tv = (TextView) findViewById(R.id.text_view);

        if(!Python.isStarted())
            Python.start(new AndroidPlatform(this));

        Python py = Python.getInstance();
        PyObject myObj = py.getModule("script");

        // final PyObject[] obj = {null};

        Btn.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                                            //(function name, first argument, second argument) of our python script
                PyObject obj = myObj.callAttr("main", Et1.getText().toString(), Et2.getText().toString());

                tv.setText(obj.toString());
            }
        });

    }
}