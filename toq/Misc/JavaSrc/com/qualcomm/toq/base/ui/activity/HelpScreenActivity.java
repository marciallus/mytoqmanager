// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.*;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.logger.ToqLogger;
import com.qualcomm.toq.smartwatch.logger.ToqLoggerFactory;
import java.text.SimpleDateFormat;
import java.util.Date;

public class HelpScreenActivity extends Activity
{

    private static final String TAG = "HelpScreenActivity";
    android.view.View.OnClickListener helpScreenOnClickListener;
    private Dialog mAppLogInfoDialog;
    private SharedPreferences mAppLogInfoPrefs;
    private LinearLayout mHelpScrAppLogLayout;
    private LinearLayout mHelpScrBackImageLayout;
    private LinearLayout mHelpScrEmailSupportLayout;
    private LinearLayout mHelpScrSupportWebLayout;

    public HelpScreenActivity()
    {
        mAppLogInfoPrefs = null;
        mAppLogInfoDialog = null;
        mHelpScrBackImageLayout = null;
        mHelpScrSupportWebLayout = null;
        mHelpScrEmailSupportLayout = null;
        mHelpScrAppLogLayout = null;
        helpScreenOnClickListener = new android.view.View.OnClickListener() {

            final HelpScreenActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296697: 
                    sendSupportEmail();
                    return;

                case 2131296698: 
                    if (mAppLogInfoPrefs != null)
                        if (mAppLogInfoPrefs.getBoolean("app_logs_dialog_checkbox_key", true))
                        {
                            showSendAppLogInfoDialog();
                            return;
                        } else
                        {
                            sendAppLogs();
                            return;
                        }
                    // fall through

                default:
                    return;

                case 2131296696: 
                    showToqSupportWebsite();
                    return;

                case 2131296695: 
                    finish();
                    return;
                }
            }

            
            {
                this$0 = HelpScreenActivity.this;
                super();
            }
        }
;
    }

    private LinearLayout getHelpScrAppLogLayout()
    {
        if (mHelpScrAppLogLayout == null)
            mHelpScrAppLogLayout = (LinearLayout)findViewById(0x7f0901ba);
        return mHelpScrAppLogLayout;
    }

    private LinearLayout getHelpScrBackImageLayout()
    {
        if (mHelpScrBackImageLayout == null)
            mHelpScrBackImageLayout = (LinearLayout)findViewById(0x7f0901b7);
        return mHelpScrBackImageLayout;
    }

    private LinearLayout getHelpScrEmailSupportLayout()
    {
        if (mHelpScrEmailSupportLayout == null)
            mHelpScrEmailSupportLayout = (LinearLayout)findViewById(0x7f0901b9);
        return mHelpScrEmailSupportLayout;
    }

    private LinearLayout getHelpScrSupportWebLayout()
    {
        if (mHelpScrSupportWebLayout == null)
            mHelpScrSupportWebLayout = (LinearLayout)findViewById(0x7f0901b8);
        return mHelpScrSupportWebLayout;
    }

    private void sendAppLogs()
    {
        if (mAppLogInfoDialog != null)
            mAppLogInfoDialog.dismiss();
        ToqLogger toqlogger = ToqLoggerFactory.getInstance().getLoggerInstance("usage_log");
        if (toqlogger != null)
            toqlogger.sendLogs();
    }

    private void sendSupportEmail()
    {
        Intent intent = new Intent("android.intent.action.SENDTO");
        String s;
        if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            intent.putExtra("android.intent.extra.SUBJECT", "Toq support request");
        else
            intent.putExtra("android.intent.extra.SUBJECT", (new StringBuilder()).append("Toq support request: ").append(Constants.LOG_DATE_FORMAT.format(new Date())).toString());
        if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            s = "toq.support@qce.qualcomm.com";
        else
            s = ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail();
        Log.d("HelpScreenActivity", (new StringBuilder()).append("ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail()").append(s).toString());
        intent.setData(Uri.parse((new StringBuilder()).append("mailto:").append(s).toString()));
        try
        {
            startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a01ce), 0).show();
        }
    }

    private void setListenerForViews()
    {
        getHelpScrBackImageLayout().setOnClickListener(helpScreenOnClickListener);
        getHelpScrSupportWebLayout().setOnClickListener(helpScreenOnClickListener);
        getHelpScrAppLogLayout().setOnClickListener(helpScreenOnClickListener);
        getHelpScrEmailSupportLayout().setOnClickListener(helpScreenOnClickListener);
    }

    private void showSendAppLogInfoDialog()
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        boolean flag = true;
        if (mAppLogInfoDialog != null)
        {
            getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            mAppLogInfoDialog.setContentView(getLayoutInflater().inflate(0x7f03002e, null));
            mAppLogInfoDialog.getWindow().setLayout(-50 + displaymetrics.widthPixels, -2);
            CheckBox checkbox = (CheckBox)mAppLogInfoDialog.findViewById(0x7f0901bb);
            if (mAppLogInfoPrefs != null)
                flag = mAppLogInfoPrefs.getBoolean("app_logs_dialog_checkbox_key", true);
            if (checkbox != null)
            {
                checkbox.setChecked(flag);
                checkbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

                    final HelpScreenActivity this$0;

                    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag1)
                    {
                        if (mAppLogInfoPrefs != null)
                        {
                            android.content.SharedPreferences.Editor editor = mAppLogInfoPrefs.edit();
                            editor.putBoolean("app_logs_dialog_checkbox_key", flag1);
                            editor.commit();
                        }
                    }

            
            {
                this$0 = HelpScreenActivity.this;
                super();
            }
                }
);
            }
            Button button = (Button)mAppLogInfoDialog.findViewById(0x7f0901bc);
            if (button != null)
                button.setOnClickListener(new android.view.View.OnClickListener() {

                    final HelpScreenActivity this$0;

                    public void onClick(View view)
                    {
                        mAppLogInfoDialog.dismiss();
                    }

            
            {
                this$0 = HelpScreenActivity.this;
                super();
            }
                }
);
            Button button1 = (Button)mAppLogInfoDialog.findViewById(0x7f0901bd);
            if (button1 != null)
                button1.setOnClickListener(new android.view.View.OnClickListener() {

                    final HelpScreenActivity this$0;

                    public void onClick(View view)
                    {
                        sendAppLogs();
                    }

            
            {
                this$0 = HelpScreenActivity.this;
                super();
            }
                }
);
            mAppLogInfoDialog.show();
        }
    }

    private void showToqSupportWebsite()
    {
        if (Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
        {
            try
            {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://toq.qualcomm.com/app-help?utm_source=app&utm_medium=toq+app&utm_campaign=applink")));
                return;
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                Utils.showBrowserNotInstalledToast();
                activitynotfoundexception.printStackTrace();
                return;
            }
        } else
        {
            Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010d), 0).show();
            return;
        }
    }

    private void updateAppLogsLayoutText()
    {
        TextView textview = (TextView)getHelpScrAppLogLayout().findViewById(0x7f0901bf);
        if (textview != null)
            textview.setText(0x7f0a01c9);
        TextView textview1 = (TextView)getHelpScrAppLogLayout().findViewById(0x7f0901c0);
        if (textview1 != null)
            textview1.setText(0x7f0a01ca);
    }

    private void updateEmailSupportLayoutText()
    {
        TextView textview = (TextView)getHelpScrEmailSupportLayout().findViewById(0x7f0901bf);
        if (textview != null)
            textview.setText(0x7f0a01cb);
        TextView textview1 = (TextView)getHelpScrEmailSupportLayout().findViewById(0x7f0901c0);
        if (textview1 != null)
            textview1.setText(0x7f0a01cc);
    }

    private void updateSupportWebLayoutText()
    {
        TextView textview = (TextView)getHelpScrSupportWebLayout().findViewById(0x7f0901bf);
        if (textview != null)
            textview.setText(0x7f0a01c7);
        TextView textview1 = (TextView)getHelpScrSupportWebLayout().findViewById(0x7f0901c0);
        if (textview1 != null)
            textview1.setText(0x7f0a01c8);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03002d);
        mAppLogInfoDialog = new Dialog(this);
        mAppLogInfoDialog.getWindow().requestFeature(1);
        mAppLogInfoPrefs = getSharedPreferences("app_logs_dialog_pref", 0);
        updateSupportWebLayoutText();
        updateAppLogsLayoutText();
        updateEmailSupportLayoutText();
        setListenerForViews();
    }






}
