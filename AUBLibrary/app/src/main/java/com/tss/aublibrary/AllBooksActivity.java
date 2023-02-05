package com.tss.aublibrary;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.view.MenuItem;

import java.util.ArrayList;

public class AllBooksActivity extends AppCompatActivity {

    private RecyclerView booksRecView;
    private BookRecViewAdapter adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_all_books);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        adapter = new BookRecViewAdapter(this, "allBooks");
        booksRecView = findViewById(R.id.booksRecView);

        booksRecView.setAdapter(adapter);
        booksRecView.setLayoutManager(new LinearLayoutManager(this));

//        ArrayList<Book> books = new ArrayList<>();
/////////////////////// TODO: look at Utils class, line 42(inside of initData() function)
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//
//        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
//        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
//

//        adapter.setBooks(books);
          adapter.setBooks(Utils.getInstance().getAllBooks());
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                break;
            default:
                break;
        }
        return super.onOptionsItemSelected(item);
    }
}