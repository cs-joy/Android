package com.tss.aublibrary;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
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

        btnCurrentlyReading.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // write here logic to navigate the user
                Intent intent = new Intent(MainActivity.this, CurrentlyReadingBookActivity.class); // Intent intent = new Intent(sourceActivity, destinationActivity);

                // inner method
                startActivity(intent);
            }
        });

        // click listener for tbnAlreadyRead
        btnAlreadyRead.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // navigate the user to the new activity(AlreadyReadBookActivity)
                Intent intent = new Intent(MainActivity.this, AlreadyReadBookActivity.class);
                // start the activity
                startActivity(intent);
            }
        });

        btnWantToRead.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // write here logic to navigate the user
                Intent intent = new Intent(MainActivity.this, WantToReadActivity.class); // Intent intent = new Intent(sourceActivity, destinationActivity);

                // inner method
                startActivity(intent);
            }
        });

        btnFavorite.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // write here logic to navigate the user
                Intent intent = new Intent(MainActivity.this, FavoriteActivity.class); // Intent intent = new Intent(sourceActivity, destinationActivity);

                // inner method
                startActivity(intent);
            }
        });

        btnAbout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //
                AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                builder.setTitle(getString(R.string.app_name));
                builder.setMessage("Designed and Developed with Love by Zahangir at sharpsolution.org\n"
                + "Check my website for more awesome applications:");
                builder.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        //
                    }
                });

                builder.setPositiveButton("Visit", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Intent intent = new Intent(MainActivity.this, WebsiteActivity.class);
                        intent.putExtra("url", "https://google.com/");
                        startActivity(intent);
                    }
                });
                // here we can use multiple functionalities of builder
                ////////////////////////////////////////////////
                builder.create().show();
            }
        });

        Utils.getInstance(this);
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