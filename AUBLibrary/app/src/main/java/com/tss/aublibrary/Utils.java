package com.tss.aublibrary;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.ArrayList;

public class Utils {

    private static Utils instance;
    private SharedPreferences sharedPreferences;

    private static ArrayList<Book> allBooks;
    private static ArrayList<Book> alreadyReadBook;
    private static ArrayList<Book> wantToReadBooks;
    private static ArrayList<Book> currentlyReadingBooks;
    private static ArrayList<Book> favoriteBooks;

    private Utils(Context context) {
        // instance of our sharedPreferences
        sharedPreferences = context.getSharedPreferences("alternative_db", Context.MODE_PRIVATE);
        // now we can put data into our sharedPreferences and get the existing data from this sharedPreferences.

        // initialize of all list
        if (null == allBooks) {
            allBooks = new ArrayList<>();
            initData();
        }

        if (null == alreadyReadBook) {
            alreadyReadBook = new ArrayList<>();
        }

        if (null == wantToReadBooks) {
            wantToReadBooks = new ArrayList<>();
        }

        if (null == currentlyReadingBooks) {
            currentlyReadingBooks = new ArrayList<>();
        }

        if (null == favoriteBooks) {
            favoriteBooks = new ArrayList<>();
        }
    }

    private void initData() {
        //TODO: add initial data

        allBooks.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
        allBooks.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));
    }

    public static Utils getInstance(Context context) {
        if (null != instance) {
            return instance;
        } else {
            instance = new Utils(context);
            return instance;
        }
    }

    // get the value or items from the list(book list)

    public static ArrayList<Book> getAllBooks() {
        return allBooks;
    }

    public static ArrayList<Book> getAlreadyReadBook() {
        return alreadyReadBook;
    }

    public static ArrayList<Book> getWantToReadBooks() {
        return wantToReadBooks;
    }

    public static ArrayList<Book> getCurrentlyReadingBooks() {
        return currentlyReadingBooks;
    }

    public static ArrayList<Book> getFavoriteBooks() {
        return favoriteBooks;
    }

    public Book getBookById(int id) {
        for (Book b: allBooks) {
            if (b.getId() == id) {
                return b;
            }
        }

        return null;
    }

    public boolean addToAlreadyReadBook(Book book) {
        return alreadyReadBook.add(book);
    }

    public boolean addWantToReadBook(Book book) {
        return wantToReadBooks.add(book);
    }

    public boolean addToFavorite(Book book) {
        return favoriteBooks.add(book);
    }

    public boolean addCurrentlyReading(Book book) {
        return currentlyReadingBooks.add(book);
    }

    public boolean removeFromAlreadyRead(Book book) {
        return alreadyReadBook.remove(book);
    }

    public boolean removeFromWantToRead(Book book) {
        return wantToReadBooks.remove(book);
    }

    public boolean removeFromCurrentlyReading(Book book) {
        return currentlyReadingBooks.remove(book);
    }

    public boolean removeFromFavourite(Book book) {
        return favoriteBooks.remove(book);
    }
}
