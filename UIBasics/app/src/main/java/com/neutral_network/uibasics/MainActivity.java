package com.neutral_network.uibasics;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.res.ResourcesCompat;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView txtView;
    private Button btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.fonts);

        txtView = findViewById(R.id.txtHelloWorld);
        btn = findViewById(R.id.btnChangeFont);

        //Typeface typeface = getResources().getFont(R.font.akaya_telivigala); // warning for getFont() :: Call requires API level 26 (current min is 21): android.content.res.Resources#getFont

        // we can overcome this problem by using `ResourcesCompat` instead of using `getResource` method
        Typeface typeface = ResourcesCompat.getFont(this, R.font.akaya_telivigala);

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtView.setTypeface(typeface);
            }
        });
    }
}