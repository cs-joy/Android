package com.scc.homework;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onClickBtnAdd(View view) {
        EditText edtTxtNumber1 = findViewById(R.id.edtTxtNumber1);
        EditText edtTxtNumber2 = findViewById(R.id.edtTxtNumber2);

        TextView additionResult = findViewById(R.id.additionResult);

        String num1 = edtTxtNumber1.getText().toString();
        String num2 = edtTxtNumber2.getText().toString();
        // convert string to integer
        int a = Integer.parseInt(num1); // https://www.freecodecamp.org/news/java-string-to-int-how-to-convert-a-string-to-an-integer/
        int b = Integer.parseInt(num2);

        // string to double
        double n1 = Double.parseDouble(num1);
        double n2 = Double.parseDouble(num2);
        // double to float
        float j = (float) n1;
        float s = (float) n2;

        // operation
        float add = addition(j, s);

        additionResult.setText("Addtion: " + add);
    }

    public void onClickBtnSub(View view) {
        EditText edtTxtNumber1 = findViewById(R.id.edtTxtNumber1);
        EditText edtTxtNumber2 = findViewById(R.id.edtTxtNumber2);

        TextView subtractionResult = findViewById(R.id.subtractionResult);

        String num1 = edtTxtNumber1.getText().toString();
        String num2 = edtTxtNumber2.getText().toString();
        // convert string to integer
        int a = Integer.parseInt(num1); // https://www.freecodecamp.org/news/java-string-to-int-how-to-convert-a-string-to-an-integer/
        int b = Integer.parseInt(num2);

        // string to double
        double n1 = Double.parseDouble(num1);
        double n2 = Double.parseDouble(num2);
        // double to float
        float j = (float) n1;
        float s = (float) n2;

        // operation
        float sub = subtraction(j, s);

        subtractionResult.setText("Subtraction: " + sub);
    }

    public void onClickBtnMulti(View view) {
        EditText edtTxtNumber1 = findViewById(R.id.edtTxtNumber1);
        EditText edtTxtNumber2 = findViewById(R.id.edtTxtNumber2);

        TextView multiplicationResult = findViewById(R.id.multiplicationResult);

        String num1 = edtTxtNumber1.getText().toString();
        String num2 = edtTxtNumber2.getText().toString();
        // convert string to integer
        int a = Integer.parseInt(num1); // https://www.freecodecamp.org/news/java-string-to-int-how-to-convert-a-string-to-an-integer/
        int b = Integer.parseInt(num2);

        // string to double
        double n1 = Double.parseDouble(num1);
        double n2 = Double.parseDouble(num2);
        // double to float
        float j = (float) n1;
        float s = (float) n2;

        // operation
        float multi = multiplication(j, s);

        multiplicationResult.setText("Multi: " + multi);
    }

    public void onClickBtnDiv(View view) {
        EditText edtTxtNumber1 = findViewById(R.id.edtTxtNumber1);
        EditText edtTxtNumber2 = findViewById(R.id.edtTxtNumber2);

        TextView divisionResult = findViewById(R.id.divisionResult);

        String num1 = edtTxtNumber1.getText().toString();
        String num2 = edtTxtNumber2.getText().toString();
        // convert string to integer
        int a = Integer.parseInt(num1); // https://www.freecodecamp.org/news/java-string-to-int-how-to-convert-a-string-to-an-integer/
        int b = Integer.parseInt(num2);

        // string to double
        double n1 = Double.parseDouble(num1);
        double n2 = Double.parseDouble(num2);
        // double to float
        float j = (float) n1;
        float s = (float) n2;

        // operation
        float div = division(j, s);

        divisionResult.setText("Division: " + div);
    }

    public float addition(float x, float y) {
        return x + y;
    }

    public float subtraction(float x, float y) {
        return x - y;
    }

    public float multiplication(float x, float y) {
        return x * y;
    }

    public float division(float x, float y) {
        return x / y;
    }


}