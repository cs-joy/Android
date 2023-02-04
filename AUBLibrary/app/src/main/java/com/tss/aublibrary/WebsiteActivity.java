package com.tss.aublibrary;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class WebsiteActivity extends AppCompatActivity {

    private WebView webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_website);

        Intent intent = getIntent();
        if (null != intent) {
            String url = intent.getStringExtra("url");
            webView = findViewById(R.id.webView);
            webView.loadUrl(url);
            webView.setWebViewClient(new WebViewClient());
            // enable js
            webView.getSettings().setJavaScriptEnabled(true);
        }
    }

    @Override
    public void onBackPressed() {
        if (webView.canGoBack()) {
            webView.goBack();
        } else {
            super.onBackPressed();
        }
    }
}