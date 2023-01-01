package com.neutral_network.uibasics;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    // second way for button
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnSwitch:
                // Toast
                // Toast message is better for testing purposes
                Toast.makeText(this, "Hello Toast", Toast.LENGTH_SHORT) .show();

                // Console
                System.out.println("Hello, Switch on console");
                break;
            default:
                break;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.activity_main);
        setContentView(R.layout.activity_read);

        // first way
        Button btnPrgm = findViewById(R.id.btnProgram);
        btnPrgm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                System.out.println("Button Working.. Hello Console!");
            }
        });

        // second way
        Button btnSwtch = findViewById(R.id.btnSwitch);
        btnSwtch.setOnClickListener(this);

        btnSwtch.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                Toast.makeText(MainActivity.this, "Long Press", Toast.LENGTH_LONG) .show();
                return true;
            }
        });
    }

    public void onHelloButtonClick(View view) {
        // R = Resources and this give us permission to access all static files inside of our application
        TextView txtWelcome = findViewById(R.id.txtWelcome);
        txtWelcome.setText("Hello again :)");
    }
}