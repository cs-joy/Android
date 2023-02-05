package com.tss.aublibrary;

import android.content.Context;
import android.content.SharedPreferences;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.ArrayList;

public class Utils {

    private static final String ALL_BOOKS_KEY = "all_books";
    private static final String ALREADY_READ_BOOKS = "already_read_books";
    private static final String WANT_TO_READ_BOOKS = "want_to_read_books";
    private static final String CURRENTLY_READING_BOOKS = "currently_reading_books";
    private static final String FAVORITE_BOOKS = "favorite_books";

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
        if (null == getAllBooks()) {
            initData();
        }

        SharedPreferences.Editor editor = sharedPreferences.edit();
        Gson gson = new Gson();

        if (null == getAlreadyReadBook()) {
            // initialize ALREADY_READ_BOOKS as an empty arraylist inside our sharedPreferences
            editor.putString(ALREADY_READ_BOOKS, gson.toJson(new ArrayList<Book>()));

            editor.commit();
        }

        if (null == getWantToReadBooks()) {
            // initialize ALREADY_READ_BOOKS as an empty arraylist inside our sharedPreferences
            editor.putString(WANT_TO_READ_BOOKS, gson.toJson(new ArrayList<Book>()));

            editor.commit();
        }

        if (null == getCurrentlyReadingBooks()) {
            // initialize CURRENTLY_READING_BOOKS as an empty arraylist inside our sharedPreferences
            editor.putString(CURRENTLY_READING_BOOKS, gson.toJson(new ArrayList<Book>()));

            editor.commit();
        }

        if (null == getFavoriteBooks()) {
            // initialize FAVORITE_BOOKS as an empty arraylist inside our sharedPreferences
            editor.putString(FAVORITE_BOOKS, gson.toJson(new ArrayList<Book>()));

            editor.commit();
        }
    }

    private void initData() {
        //TODO: add initial data

        // create new array list to work with sharedPreferences
        ArrayList<Book> books = new ArrayList<>();

        // insert data into "books" ArrayList
        books.add(new Book(1, "Operating System", "Andrew S. Tanenbaum", 765, "https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Operating_Systems_Design_and_Implementation.jpg/220px-Operating_Systems_Design_and_Implementation.jpg", "Operating System: Design and Implementation is a computer science textbook written by Andrew S. Tanenbaum, with help from Albert S. Woodhull. ", "The book describes, in detail, the topic of Operating System Designing, It includes Tanenbaum's MINIX, a free Unix-like operating system designed for teaching purposes."));
        books.add(new Book(2, "Art Of Computer Programming", "Donal Ervin Knuth", 881, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/ArtOfComputerProgramming.svg/1200px-ArtOfComputerProgramming.svg.png", "Computer Science Book", "The Art of Computer Programming (TAOCP) is a comprehensive monograph written by the computer scientist Donald Knuth presenting programming algorithms and their analysis. "));

        // add this books ArrayList into our sharedPreferences
        SharedPreferences.Editor editor = sharedPreferences.edit();
//        editor.putString(); // here in this puString method we can able to use just string that's why we will convert our "books" arrayList object to string
//        here we can use java class "Book" similar to that our arraylist("books") into our sharedPreferences
//        hence, we will convert "books" arrayList into a string
//        so, the best option is to convert java class and the arraylist to gson (src: https://github.com/google/gson)
//        go to build.gradle(module level) and add dependency to config with gson
//        after compliting download the gson dependency now we create insance of the Gson object

        Gson gson = new Gson();

        // convert a object to json and store it as an integer
//        String text = gson.toJson(books);
        // this way we can serialize our book object with the help of gson

        // add that text to our sharedPreferences
        editor.putString(ALL_BOOKS_KEY, gson.toJson(books));

        // now applied this changes on this editor
        // there have two way to do that
        // 1. editor.apply()
        // 2. editor.commit() -
//        difference between this two method
//        commit - writes its data to persistent storage immediately
//        apply - whereas apply will handle it in the background
        // so for the large data we use apply method here we use small to hence we use commit method
        editor.commit();
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

    public ArrayList<Book> getAllBooks() {
        // create instance if Gson
        Gson gson = new Gson();
        // define TypeToken of our Book class object
        Type type = new TypeToken<ArrayList<Book>>(){}.getType();
        ArrayList<Book> books = gson.fromJson(sharedPreferences.getString(ALL_BOOKS_KEY, null), type);

        return books;
    }

    public ArrayList<Book> getAlreadyReadBook() {
        // create instance if Gson
        Gson gson = new Gson();
        // define TypeToken of our Book class object
        Type type = new TypeToken<ArrayList<Book>>(){}.getType();
        ArrayList<Book> books = gson.fromJson(sharedPreferences.getString(ALREADY_READ_BOOKS, null), type);

        return books;
    }

    public ArrayList<Book> getWantToReadBooks() {
        // create instance if Gson
        Gson gson = new Gson();
        // define TypeToken of our Book class object
        Type type = new TypeToken<ArrayList<Book>>(){}.getType();
        ArrayList<Book> books = gson.fromJson(sharedPreferences.getString(WANT_TO_READ_BOOKS, null), type);

        return books;
    }

    public ArrayList<Book> getCurrentlyReadingBooks() {
        // create instance if Gson
        Gson gson = new Gson();
        // define TypeToken of our Book class object
        Type type = new TypeToken<ArrayList<Book>>(){}.getType();
        ArrayList<Book> books = gson.fromJson(sharedPreferences.getString(CURRENTLY_READING_BOOKS, null), type);

        return books;
    }

    public ArrayList<Book> getFavoriteBooks() {
        // create instance if Gson
        Gson gson = new Gson();
        // define TypeToken of our Book class object
        Type type = new TypeToken<ArrayList<Book>>(){}.getType();
        ArrayList<Book> books = gson.fromJson(sharedPreferences.getString(FAVORITE_BOOKS, null), type);

        return books;
    }

    public Book getBookById(int id) {
        ArrayList<Book> books = getAllBooks();
        if (null != books) {
            for (Book b: books) {
                if (b.getId() == id) {
                    return b;
                }
            }
        }

        return null;
    }

    public boolean addToAlreadyReadBook(Book book) {
        ArrayList<Book> books = getAlreadyReadBook();
        if (null != books) {
            if (books.add(book)) { // if book added to the books array list successfully then we have need to put(save that) inside of our sharedPreferences
                // hence create instance of Gson
                Gson gson = new Gson();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                // clear(remove all of the data) your whole sharedPreferences to use `editor.clear()` method with a key(located it inside of our constructor(at line 31))
                // remove data from a specific sharedPreferences(ex: alreadyReadBook) use `editor.remove()` method
                editor.remove(ALREADY_READ_BOOKS);
                editor.putString(ALREADY_READ_BOOKS, gson.toJson(books));
                editor.commit();

                return true;
            }
        }

        return false;
    }

    public boolean addWantToReadBook(Book book) {
        ArrayList<Book> books = getWantToReadBooks();
        if (null != books) {
            if (books.add(book)) { // if book added to the books array list successfully then we have need to put(save that) inside of our sharedPreferences
                // hence create instance of Gson
                Gson gson = new Gson();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                // clear(remove all of the data) your whole sharedPreferences to use `editor.clear()` method with a key(located it inside of our constructor(at line 31))
                // remove data from a specific sharedPreferences(ex: wantToReadBook) use `editor.remove()` method
                editor.remove(WANT_TO_READ_BOOKS);
                editor.putString(WANT_TO_READ_BOOKS, gson.toJson(books));
                editor.commit();

                return true;
            }
        }

        return false;
    }

    public boolean addToFavorite(Book book) {
        ArrayList<Book> books = getFavoriteBooks();
        if (null != books) {
            if (books.add(book)) { // if book added to the books array list successfully then we have need to put(save that) inside of our sharedPreferences
                // hence create instance of Gson
                Gson gson = new Gson();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                // clear(remove all of the data) your whole sharedPreferences to use `editor.clear()` method with a key(located it inside of our constructor(at line 31))
                // remove data from a specific sharedPreferences(ex: favoriteBook) use `editor.remove()` method
                editor.remove(FAVORITE_BOOKS);
                editor.putString(FAVORITE_BOOKS, gson.toJson(books));
                editor.commit();

                return true;
            }
        }

        return false;
    }

    public boolean addCurrentlyReading(Book book) {
        ArrayList<Book> books = getCurrentlyReadingBooks();
        if (null != books) {
            if (books.add(book)) { // if book added to the books array list successfully then we have need to put(save that) inside of our sharedPreferences
                // hence create instance of Gson
                Gson gson = new Gson();
                SharedPreferences.Editor editor = sharedPreferences.edit();
                // clear(remove all of the data) your whole sharedPreferences to use `editor.clear()` method with a key(located it inside of our constructor(at line 31))
                // remove data from a specific sharedPreferences(ex: currentlyReadingBook) use `editor.remove()` method
                editor.remove(CURRENTLY_READING_BOOKS);
                editor.putString(CURRENTLY_READING_BOOKS, gson.toJson(books));
                editor.commit();

                return true;
            }
        }

        return false;
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
