package com.neutral_network.uibasics;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.Toast;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private ListView citiesList;
    private Spinner deptSpinner;
/*
    private final ArrayList<String> cities = new ArrayList<>();

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        Toast.makeText(MainActivity.this, cities.get(position), Toast.LENGTH_SHORT) .show();
    }*/

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview);

        citiesList = findViewById(R.id.citiesList);
        deptSpinner = findViewById(R.id.deptSpinner);

        // set data dynamically
        // data for the spinner
//        ArrayList<String> dept = new ArrayList<>();
//        dept.add("CSE");
//        dept.add("BBA");
//        dept.add("EEE");
//        dept.add("CS");
//        dept.add("ENG");
//
//        // for fetch those data to our spinner using adapter
//        ArrayAdapter<String> deptAdapter = new ArrayAdapter<>(
//                this,
//                android.R.layout.simple_spinner_dropdown_item,
//                dept
//        );
//        // set adapter
//        deptSpinner.setAdapter(deptAdapter);

//        deptSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
//            @Override
//            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
//                Toast.makeText(MainActivity.this, dept.get(position) + " selected", Toast.LENGTH_SHORT) .show();
//            }
//
//            @Override
//            public void onNothingSelected(AdapterView<?> parent) {
//
//            }
//        });

        deptSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(MainActivity.this, deptSpinner.getSelectedItem().toString() + " Selected", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        // data
        ArrayList<String> cities = new ArrayList<>();
        cities.add("Rajshahi");
        cities.add("Dhaka");
        cities.add("Chittagong");
        cities.add("Sylhet");
        cities.add("Khulna");
        cities.add("Nawabganj");
        cities.add("Naogaon");
        cities.add("Bogura");
        cities.add("Rangpur");
        cities.add("Dinajpur");
        cities.add("New York");
        cities.add("London");
        cities.add("Texas");
        cities.add("Washington");
        cities.add("Barisal");
        cities.add("Cumilla");
        cities.add("Gazipur");
        cities.add("Naraynganj");
        cities.add("Mymensingh");
        cities.add("Kushtia");
        cities.add("Jashore");
        cities.add("Narsingdi");


        // create adapter - in order to fetch this cities ArrayList to our citiesList ListView
        ArrayAdapter<String> citiesAdapter = new ArrayAdapter<>(
                this,
                android.R.layout.simple_list_item_1,
                cities
        );

        citiesList.setAdapter(citiesAdapter);

        // set up click listener here or top of the block with implements keyword

        citiesList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(MainActivity.this, cities.get(position) + " Selected!", Toast.LENGTH_SHORT) .show();
            }
        });

    }
}