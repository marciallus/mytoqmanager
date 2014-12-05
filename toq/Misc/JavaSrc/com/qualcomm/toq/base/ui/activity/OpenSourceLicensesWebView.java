// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;

public class OpenSourceLicensesWebView extends Activity
{
    class MyWebViewClient extends WebViewClient
    {

        final OpenSourceLicensesWebView this$0;

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            try
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                startActivity(intent);
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                Log.e("OpenSourceLicensesWebView", "Activity Not Found Exception:No Web Browser detected that can open the url");
                Utils.showBrowserNotInstalledToast();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return true;
        }

        MyWebViewClient()
        {
            this$0 = OpenSourceLicensesWebView.this;
            super();
        }
    }


    private WebView openSourceWebView;


    private void initWebView()
    {
        openSourceWebView = (WebView)findViewById(0x7f090233);
        openSourceWebView.loadUrl("file:///android_asset/openSourceLicenses.html");
        openSourceWebView.setWebViewClient(new MyWebViewClient());
        ((LinearLayout)findViewById(0x7f090230)).setOnClickListener(new android.view.View.OnClickListener() {

            final OpenSourceLicensesWebView this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = OpenSourceLicensesWebView.this;
                super();
            }
        }
);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030041);
        initWebView();
    }
}
