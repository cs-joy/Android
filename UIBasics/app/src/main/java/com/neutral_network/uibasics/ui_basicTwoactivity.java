//package com.neutral_network.uibasics;
//
//import android.os.Bundle;
//import android.view.View;
//import android.widget.Button;
//import android.widget.EditText;
//import android.widget.TextView;
//import android.widget.Toast;
//
//import androidx.appcompat.app.AppCompatActivity;
//
//public class ui_basicTwoactivity extends AppCompatActivity implements View.OnClickListener {
//    private TextView txtHello;
//    private EditText edtTxtName;
//
//    // second way for button
//    @Override
//    public void onClick(View view) {
//        switch (view.getId()) {
//            case R.id.btnSwitch:
//                // Toast
//                // Toast message is better for testing purposes
//                Toast.makeText(this, "Hello Toast", Toast.LENGTH_SHORT) .show();
//
//                // Console
//                System.out.println("Hello, Switch on console");
//                break;
//
//            case R.id.btnSay:
//                txtHello.setText("Hello " + edtTxtName.getText().toString());
//                System.out.println("Hello, " + edtTxtName.getText().toString());
//                break;
//            case R.id.edtTxtName:
//                Toast.makeText(this, "Attempting to type something", Toast.LENGTH_SHORT) .show();
//                break;
//            default:
//                break;
//        }
//    }
//
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        //setContentView(R.layout.activity_main);
//        setContentView(R.layout.activity_read);
//
//        // first way
//        Button btnPrgm = findViewById(R.id.btnProgram);
//        btnPrgm.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                System.out.println("Button Working.. Hello Console!");
//            }
//        });
//
//        // second way
//        Button btnSwtch = findViewById(R.id.btnSwitch);
//        btnSwtch.setOnClickListener(this);
//
//        btnSwtch.setOnLongClickListener(new View.OnLongClickListener() {
//            @Override
//            public boolean onLongClick(View v) {
//                Toast.makeText(ui_basicTwoactivity.this, "Long Press", Toast.LENGTH_LONG) .show();
//                return true;
//            }
//        });
//
//        txtHello = findViewById(R.id.txtHello);
//        edtTxtName = findViewById(R.id.edtTxtName);
//        edtTxtName.setOnClickListener(this);
//        Button btnSy = findViewById(R.id.btnSay);
//        btnSy.setOnClickListener(this);
//    }
//
//    public void onHelloButtonClick(View view) {
//        // R = Resources and this give us permission to access all static files inside of our application
//        TextView txtWelcome = findViewById(R.id.txtWelcome);
//        txtWelcome.setText("Hello again :)");
//    }
//}