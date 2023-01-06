package com.neutral_network.materialdesign;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;

import com.google.android.material.snackbar.Snackbar;

public class MaterialSnackbar extends AppCompatActivity {

    private ConstraintLayout parent;
    private Button btnShowSnackbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.material_snackbar);

        parent =findViewById(R.id.parent);
        btnShowSnackbar = findViewById(R.id.button);

        btnShowSnackbar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showSnackbar();
            }
        });
    }

    private void showSnackbar() {
        Snackbar.make(parent, "this is a snackbar", Snackbar.LENGTH_INDEFINITE)
                .setAction("Retry", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Toast.makeText(MaterialSnackbar.this, "Retry clicked", Toast.LENGTH_SHORT).show();
                    }
                })
                .setActionTextColor(getResources().getColor(R.color.orange))
                //.setActionTextColor(Color.BLUE)
                .setTextColor(Color.GREEN)
                .show();
    }
}