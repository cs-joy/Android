package com.neutral_network.materialdesign;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private RecyclerView contactsRecView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // linear layout manager
        setContentView(R.layout.recycler_view_p_one_liniear_layout_manager);

        //setContentView(R.layout.recycler_view_p_one);

        contactsRecView = findViewById(R.id.contactsRecView);

        ArrayList<Contact> contacts = new ArrayList<>();

        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));


        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));


        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));


        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));


        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));


        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));


        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));

        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));


        contacts.add(new Contact("Mike", "mike@gmail.com", "https://static.vecteezy.com/system/resources/previews/005/151/717/original/cartoon-funny-bird-flying-isolated-on-white-background-free-vector.jpg"));
        contacts.add(new Contact("Tom", "tom@gmail.com", "https://www.wikihow.com/images/thumb/4/4b/1635699--27.JPG/-crop-375-300-375px-nowatermark-1635699--27.JPG"));
        contacts.add(new Contact("Meisam", "meisam@gmail.com", "https://easydrawingguides.com/wp-content/uploads/2017/04/how-to-draw-a-cartoon-boy-20.png"));
        contacts.add(new Contact("Kelly", "kelly@gmail.com", "https://cn.i.cdn.ti-platform.com/content/20/the-amazing-world-of-gumball/showpage/za/gumball-carousel.a94b8e60.png"));
        contacts.add(new Contact("Jim", "jim@gmail.com", "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"));

        ContactRecViewAdapterWithCardView adapter = new ContactRecViewAdapterWithCardView(this);
        adapter.setContacts(contacts);

        contactsRecView.setAdapter(adapter);

        // layout manager
        //contactsRecView.setLayoutManager(new LinearLayoutManager(this)); // linear layout manager // default orientation: vertical
        // horizontal orientation
        //contactsRecView.setLayoutManager((new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)));

        // Grid Layout Manager
        contactsRecView.setLayoutManager(new GridLayoutManager(this, 2)); // in the grid layout manager second arguments might follow as number of columns

    }
}