// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;

public class WhatsNewActivity extends Activity
{
    class MyWebViewClient extends WebViewClient
    {

        final WhatsNewActivity this$0;

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            try
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                startActivity(intent);
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                Log.e("WhatsNewActivity", "Activity Not Found Exception:No Web Browser detected that can open the url");
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
            this$0 = WhatsNewActivity.this;
            super();
        }
    }


    private static final String TAG = "WhatsNewActivity";
    private final String WHATS_NEW_URL_LINK = "file:///android_asset/whatsNewScreenContent.html";
    private FrameLayout mWebViewContainer;
    private WebView mWhatsNewWebView;

    public WhatsNewActivity()
    {
        mWebViewContainer = null;
        mWhatsNewWebView = null;
    }

    private FrameLayout getWebViewContainer()
    {
        if (mWebViewContainer == null)
            mWebViewContainer = (FrameLayout)findViewById(0x7f09026e);
        return mWebViewContainer;
    }

    private void initViews()
    {
        ((LinearLayout)findViewById(0x7f09026d)).setOnClickListener(new android.view.View.OnClickListener() {

            final WhatsNewActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = WhatsNewActivity.this;
                super();
            }
        }
);
        mWhatsNewWebView = new WebView(getApplicationContext());
        if (mWhatsNewWebView != null)
        {
            mWhatsNewWebView.setWebViewClient(new MyWebViewClient());
            mWhatsNewWebView.loadUrl("file:///android_asset/whatsNewScreenContent.html");
            mWhatsNewWebView.setHorizontalScrollBarEnabled(false);
            mWhatsNewWebView.setVerticalScrollBarEnabled(true);
            mWhatsNewWebView.setLayerType(1, null);
            getWebViewContainer().addView(mWhatsNewWebView);
        }
    }

    private void unbindDrawables(View view)
    {
label0:
        {
            if (view.getBackground() != null)
                view.getBackground().setCallback(null);
            if (view instanceof ViewGroup)
            {
                for (int i = 0; i < ((ViewGroup)view).getChildCount(); i++)
                    unbindDrawables(((ViewGroup)view).getChildAt(i));

                if (!(view instanceof AdapterView))
                    break label0;
                ((AdapterView)view).removeAllViewsInLayout();
            }
            return;
        }
        ((ViewGroup)view).removeAllViews();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03004f);
        initViews();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f09026b));
        if (getWebViewContainer() != null)
            getWebViewContainer().removeAllViews();
        mWebViewContainer = null;
        if (mWhatsNewWebView != null)
            mWhatsNewWebView.destroy();
        mWhatsNewWebView = null;
    }
}
