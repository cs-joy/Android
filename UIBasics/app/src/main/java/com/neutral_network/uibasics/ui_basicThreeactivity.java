//package com.neutral_network.uibasics;
//
//import android.os.Bundle;
//import android.os.SystemClock;
//import android.view.View;
//import android.widget.CheckBox;
//import android.widget.CompoundButton;
//import android.widget.ProgressBar;
//import android.widget.RadioGroup;
//import android.widget.Toast;
//
//import androidx.appcompat.app.AppCompatActivity;
//
//public class ui_basicThreeactivity extends AppCompatActivity implements RadioGroup.OnCheckedChangeListener {
//    private CheckBox checkboxHarry, checkboxMatrix, checkboxJoker;
//    private RadioGroup rgMaritalStatus;
//    private ProgressBar progressBar, pbHorizontal;
//
//    @Override
//    public void onCheckedChanged(RadioGroup group, int checkedId) {
//        switch (checkedId) {
//            case R.id.rbMarried:
//                Toast.makeText(ui_basicThreeactivity.this, "You're married", Toast.LENGTH_SHORT) .show();
//                break;
//            case R.id.rbSingle:
//                Toast.makeText(ui_basicThreeactivity.this, "You're single", Toast.LENGTH_SHORT) .show();
//                progressBar.setVisibility(View.VISIBLE);
//                break;
//            case R.id.rbInRel:
//                Toast.makeText(ui_basicThreeactivity.this, "In an open relationship, congratulations!", Toast.LENGTH_SHORT) .show();
//                progressBar.setVisibility(View.GONE);
//                break;
//            default:
//                break;
//        }
//    }
//
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.ui_basic3);
//
//        //instantiate those objects
//        checkboxHarry = findViewById(R.id.checkboxHarry);
//        checkboxMatrix = findViewById(R.id.checkboxMatrix);
//        checkboxJoker = findViewById(R.id.checkboxJoker);
//
//        // radio group
//        rgMaritalStatus = findViewById(R.id.rgMaritalStatus);
//
//        // progress bar
//        progressBar = findViewById(R.id.progressBar);
//
//        // second progress bar
//        pbHorizontal = findViewById(R.id.pbHorizontal);
//        Thread thread = new Thread(new Runnable() {
//            @Override
//            public void run() {
//                for (int i=0; i<10; i++) {
//                    pbHorizontal.incrementProgressBy(10);
//                    //Thread.sleep(500);
//                    SystemClock.sleep(500);
//                }
//            }
//        });
//        thread.start();
//        //pbHorizontal.getProgress();
//
//
//        int checkedButton = rgMaritalStatus.getCheckedRadioButtonId();
//        switch (checkedButton) {
//            case R.id.rbMarried:
//                Toast.makeText(ui_basicThreeactivity.this, "You're married", Toast.LENGTH_SHORT) .show();
//                break;
//            case R.id.rbSingle:
//                Toast.makeText(ui_basicThreeactivity.this, "You're single", Toast.LENGTH_SHORT) .show();
//                break;
//            case R.id.rbInRel:
//                Toast.makeText(ui_basicThreeactivity.this, "In an open relationship, congratulations!", Toast.LENGTH_SHORT) .show();
//                break;
//            default:
//                break;
//        }
//
//        rgMaritalStatus.setOnCheckedChangeListener(this);
//
//        if (checkboxHarry.isChecked()) {
//            Toast.makeText(ui_basicThreeactivity.this, "You have watched Harry Potter, yay", Toast.LENGTH_SHORT) .show();
//        } else {
//            Toast.makeText(ui_basicThreeactivity.this, "You NEED to watch Harry Potter", Toast.LENGTH_SHORT) .show();
//        }
//
//        // click listeners
//        checkboxHarry.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
//            @Override
//            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
//                if (isChecked) {
//                    Toast.makeText(ui_basicThreeactivity.this, "You have watched Harry Potter, yay", Toast.LENGTH_SHORT) .show();
//                } else {
//                    Toast.makeText(ui_basicThreeactivity.this, "You NEED to watch Harry Potter", Toast.LENGTH_SHORT) .show();
//                }
//            }
//        });
//
//
//        // same for others two checkbox(checkboxMatrix and checkboxJoker)
//    }
//}