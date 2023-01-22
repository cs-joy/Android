package com.tss.aublibrary;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;

import java.util.ArrayList;

public class BookActivity extends AppCompatActivity {

    public static final String BOOK_ID_KEY = "bookId";

    private static final String TAG = "BookActivity";

    private TextView txtBook, txtBookAuthorName, txtBookPageNumber,txtBookLongDescription;
    private Button btnAddCurrentlyReading, btnAddWantToRead, btnAddAlreadyRead, btnAddToFavorite;
    private ImageView imageBook;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_book);

        intiViews();

//        String longDescription = "While the core function of a chatbot is to mimic a human conversationalist, journalists have also noted ChatGPT's versatility and improvisation skills, including its ability to write and debug computer programs; to compose music, teleplays, fairy tales, and student essays; to answer test questions (sometimes, depending on the test, at a level above the average human test-taker);[13] to write poetry and song lyrics;[14] to emulate a Linux system; to simulate an entire chat room; to play games like tic-tac-toe; and to simulate an ATM.[15] ChatGPT's training data includes man pages and information about Internet phenomena and programming languages, such as bulletin board systems and the Python programming language.[15]\n" +
//                "\n" +
//                "In comparison to its predecessor, InstructGPT, ChatGPT attempts to reduce harmful and deceitful responses.[16] In one example, while InstructGPT accepts the premise of the prompt \"Tell me about when Christopher Columbus came to the US in 2015\" as being truthful, ChatGPT acknowledges the counterfactual nature of the question and frames its answer as a hypothetical consideration of what might happen if Columbus came to the U.S. in 2015, using information about Columbus' voyages and facts about the modern world – including modern perceptions of Columbus' actions.[6]\n" +
//                "\n" +
//                "Unlike most chatbots, ChatGPT remembers previous prompts given to it in the same conversation; journalists have suggested that this will allow ChatGPT to be used as a personalized therapist.[17] To prevent offensive outputs from being presented to and produced from ChatGPT, queries are filtered through OpenAI's company-wide[18][19] moderation API, and potentially racist or sexist prompts are dismissed.";
//
//        //TODO: Get the data from recycler view in here
//        Book book = new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", longDescription);

        Intent intent = getIntent();
        if (null != intent) {
            // get the book id from the utils class or retrieve data
            //int bookId = intent.getIntExtra("bookId", -1);
            int bookId = intent.getIntExtra(BOOK_ID_KEY, -1);

            if (bookId != -1) {
                Book incomingBook = Utils.getInstance().getBookById(bookId);
                // make sure to check the bookId is not null
                if (null != incomingBook) { // if not null
                    setData(incomingBook);

                    handleAlreadyRead(incomingBook);
                    handleWantToReadBooks(incomingBook);
                    handleCurrentlyReadingBooks(incomingBook);
                    handleFavoriteBooks(incomingBook);
                }
            }
        }

    }

    private void handleWantToReadBooks(Book incomingBook) {
        ArrayList<Book> wantToReadBooks = Utils.getInstance().getWantToReadBooks();

        boolean existInWantToReadBooks = false;

        for (Book b: wantToReadBooks) {
            if (b.getId() == incomingBook.getId()) {
                existInWantToReadBooks = true;
            }
        }

        if (existInWantToReadBooks) {
            // disable the button `btnAddWantToRead`
            btnAddWantToRead.setEnabled(false);
        } else {
            btnAddWantToRead.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // check point
                    if (Utils.getInstance().addWantToReadBook(incomingBook)) {
                        Toast.makeText(BookActivity.this, "Book Added", Toast.LENGTH_SHORT).show();

                        // navigate the user
                        Intent intent = new Intent(BookActivity.this, WantToReadActivity.class);
                        startActivity(intent);
                    } else {
                        Toast.makeText(BookActivity.this, "Something wrong happened, Try again", Toast.LENGTH_SHORT).show();
                    }
                }
            });
        }
    }

    /**
     * Enable and disable the button
     * Add the book to AlreadyReadBook arraylist
     * @param incoming_book
     */
    private void handleAlreadyRead(Book incoming_book) {
        ArrayList<Book> alreadyReadBooks = Utils.getInstance().getAlreadyReadBook();

        boolean existInAlreadyReadBooks = false;

        for (Book b: alreadyReadBooks) {
            if (b.getId() == incoming_book.getId()) {
                existInAlreadyReadBooks = true;
            }
        }

        if (existInAlreadyReadBooks) {
            // disable the button `btnAddAlreadyRead`
            btnAddAlreadyRead.setEnabled(false);
        } else {
            btnAddAlreadyRead.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // check point
                    if (Utils.getInstance().addToAlreadyReadBook(incoming_book)) {
                        Toast.makeText(BookActivity.this, "Book Added", Toast.LENGTH_SHORT).show();

                        // navigate the user
                        Intent intent = new Intent(BookActivity.this, AlreadyReadBookActivity.class);
                        startActivity(intent);
                    } else {
                        Toast.makeText(BookActivity.this, "Something wrong happened, Try again", Toast.LENGTH_SHORT).show();
                    }
                }
            });
        }
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