package com.tss.aublibrary;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    private Button btnAllBooks, btnCurrentlyReading, btnAlreadyRead, btnWantToRead, btnFavorite, btnAbout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initViews();

        // click listener for btnAllBooks
        btnAllBooks.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // write here logic to navigate the user
                Intent intent = new Intent(MainActivity.this, AllBooksActivity.class); // Intent intent = new Intent(sourceActivity, destinationActivity);

                // inner method
                startActivity(intent);
            }
        });

        btnAlreadyRead.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // navigate the user to the new activity(AlreadyReadBookActivity)
                Intent intent = new Intent(MainActivity.this, AlreadyReadBookActivity.class);
                // start the activity
                startActivity(intent);
            }
        });

        Utils.getInstance();
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