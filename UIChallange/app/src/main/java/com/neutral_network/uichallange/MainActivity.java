package com.neutral_network.uichallange;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.snackbar.Snackbar;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private EditText edtTxtName, edtTxtEmail, edtTxtPassword, edtTxtPassRepeat;
    private Button btnPickImage, btnRegister;
    private TextView txtWarnName, txtWarnEmail, txtWarnPass, txtWarnPassRepeat;
    private Spinner spinnerCountry;
    private RadioGroup rgGender;
    private CheckBox agreementCheck;
    private ConstraintLayout parent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initViews();

        // section of all set Click Listener

        btnPickImage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Yet to talk about", Toast.LENGTH_SHORT).show();
            }
        });

        btnRegister.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initRegister();
            }
        });
    }

    private void initRegister() {
        Log.d(TAG, "initRegister: Started");

        if (validateData()) {
            if (agreementCheck.isChecked()) {
                showSnackBar();
            } else {
                Toast.makeText(this, "You need to agree to the license agreement", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void showSnackBar() {
        Log.d(TAG, "showSnackBar: Started");
        txtWarnName.setVisibility(View.GONE);
        txtWarnEmail.setVisibility(View.GONE);
        txtWarnPass.setVisibility(View.GONE);
        txtWarnPassRepeat.setVisibility(View.GONE);

        Snackbar.make(parent, "You have successfully registered", Snackbar.LENGTH_INDEFINITE)
                .setAction("Dismiss", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        //
                    }
                }) .show();
    }

    private boolean validateData() {
        if (edtTxtName.getText().toString().equals("")) {
            txtWarnName.setVisibility(View.VISIBLE);
            txtWarnName.setText("Enter your name");
            return false;
        }

        if (edtTxtEmail.getText().toString().equals("")) {
            txtWarnEmail.setVisibility(View.VISIBLE);
            txtWarnEmail.setText("Enter your email");
            return false;
        }

        if (txtWarnPass.getText().toString().equals("")) {
            txtWarnPass.setVisibility(View.VISIBLE);
            txtWarnPass.setText("Enter your password");
            return false;
        }

        if (txtWarnPassRepeat.getText().toString().equals("")) {
            txtWarnPassRepeat.setVisibility(View.VISIBLE);
            txtWarnPassRepeat.setText("Re enter your password");
            return false;
        }

        if (!edtTxtPassword.getText().toString().equals(edtTxtPassRepeat.getText().toString())) {
            txtWarnPassRepeat.setVisibility(View.VISIBLE);
            txtWarnPassRepeat.setText("Password doesn't match");
            return false;
        }

        return true;
    }

    private void initViews() {
        Log.d(TAG, "initViews: Started");

        edtTxtName = findViewById(R.id.edtTxtName);
        edtTxtEmail = findViewById(R.id.edtTxtEmail);
        edtTxtPassword = findViewById(R.id.edtTxtPassword);
        edtTxtPassRepeat = findViewById(R.id.edtTxtPassRepeat);

        btnPickImage = findViewById(R.id.btnPickImage);
        btnRegister =findViewById(R.id.btnRegister);

        txtWarnName = findViewById(R.id.txtWarnName);
        txtWarnEmail = findViewById(R.id.txtWarnEmail);
        txtWarnPass = findViewById(R.id.txtWarnPass);
        txtWarnPassRepeat = findViewById(R.id.edtTxtPassRepeat);

        spinnerCountry = findViewById(R.id.spinnerCountry);

        rgGender = findViewById(R.id.rgGender);

        agreementCheck = findViewById(R.id.agreementCheck);

        parent = findViewById(R.id.parent);
    }
}