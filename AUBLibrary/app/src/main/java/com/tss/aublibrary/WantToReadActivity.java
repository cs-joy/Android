package com.tss.aublibrary;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Bundle;

public class WantToReadActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_want_to_read);

        // create recycler view
        RecyclerView recyclerView = findViewById(R.id.booksRecView);

        // create adapter
        BookRecViewAdapter bookRecViewAdapter = new BookRecViewAdapter(this, "wantToReadBooks");

        // set adapter
        recyclerView.setAdapter(bookRecViewAdapter);

        // set layout manager
        recyclerView.setLayoutManager(new LinearLayoutManager(this));

        // set data
        bookRecViewAdapter.setBooks(Utils.getInstance(this).getWantToReadBooks());
    }

    @Override
    public void onBackPressed() {
        Intent intent = new Intent(this, MainActivity.class);
        intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_NEW_TASK);
        startActivity(intent);
    }
}