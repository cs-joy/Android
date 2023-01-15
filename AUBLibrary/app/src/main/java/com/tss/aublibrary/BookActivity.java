package com.tss.aublibrary;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

public class BookActivity extends AppCompatActivity {

    private static final String TAG = "BookActivity";

    private TextView txtBook, txtBookAuthorName, txtBookPageNumber,txtBookLongDescription;
    private Button btnAddCurrentlyReading, btnAddWantToRead, btnAddAlreadyRead, btnAddToFavorite;
    private ImageView imageBook;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_book);

        intiViews();

        //TODO: Get the data from recycler view in here
        Book book = new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes.");

        setData(book);

    }

    private void setData(Book book) {
        Log.d(TAG, "setData: Started..");

        txtBook.setText(book.getName());
        txtBookAuthorName.setText(book.getAuthor());
        txtBookPageNumber.setText(String.valueOf(book.getPages()));
        txtBookLongDescription.setText(book.getLongDesc());
        Glide.with(this)
                .asBitmap().load(book.getImageUrl())
                .into(imageBook);
    }

    private void intiViews() {
        Log.d(TAG, "intiViews: Started...");

        txtBook = findViewById(R.id.txtBook);
        txtBookAuthorName = findViewById(R.id.txtBookAuthorName);
        txtBookPageNumber = findViewById(R.id.txtBookPageNumber);
        txtBookLongDescription = findViewById(R.id.txtBookLongDescription);

        btnAddCurrentlyReading = findViewById(R.id.btnAddCurrentlyReading);
        btnAddWantToRead = findViewById(R.id.btnAddWantToRead);
        btnAddAlreadyRead = findViewById(R.id.btnAddAlreadyRead);
        btnAddToFavorite = findViewById(R.id.btnAddToFavorite);

        imageBook = findViewById(R.id.imageBook);
    }
}