package com.tss.aublibrary;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    private Button btnAllBooks, btnCurrentlyReading, btnAlreadyRead, btnWantToRead, btnFavorite, btnAbout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initViews();
    }

    private void initViews() {
        // initialize all of our button elements
        btnAllBooks = findViewById(R.id.btnAllBooks);
        btnCurrentlyReading = findViewById(R.id.btnCurrentlyReading);
        btnAlreadyRead = findViewById(R.id.btnAlreadyRead);
        btnWantToRead = findViewById(R.id.btnWantToRead);
        btnFavorite = findViewById(R.id.btnFavorite);
        btnAbout = findViewById(R.id.btnAbout);
    }
}