package com.neutral_network.materialdesign;

import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.card.MaterialCardView;

public class MaterialCards extends AppCompatActivity {

    private MaterialCardView mcv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.material_cards);

        mcv = findViewById(R.id.cardView);
        mcv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MaterialCards.this, "Card clicked!", Toast.LENGTH_SHORT).show();
            }
        });
    }
}
