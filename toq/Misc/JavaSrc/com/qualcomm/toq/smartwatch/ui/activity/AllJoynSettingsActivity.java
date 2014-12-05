// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.ui.customview.PhubCustomSwitchView;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PopUpWindowUtils;
import com.qualcomm.toq.smartwatch.alljoyn.AllJoynBusHandler;
import com.qualcomm.toq.smartwatch.utils.LinkMovementCustomMethod;

public class AllJoynSettingsActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{

    private static String TAG = "AllJoynSettingsActivity";
    private boolean isAlljoynSettingsOn;
    private LinearLayout mDoneLayout;
    private LinkMovementCustomMethod mLinkMovementCustomMethod;
    private PhubCustomSwitchView mNotificationsSwitch;
    private LinearLayout mOverFlowMenuLayout;
    private PopupWindow mPopUpWindow;

    public AllJoynSettingsActivity()
    {
        mNotificationsSwitch = null;
        mDoneLayout = null;
        mOverFlowMenuLayout = null;
        isAlljoynSettingsOn = false;
    }

    private LinearLayout getDoneLayout()
    {
        if (mDoneLayout == null)
            mDoneLayout = (LinearLayout)findViewById(0x7f090078);
        return mDoneLayout;
    }

    private PhubCustomSwitchView getNotificationsSwitch()
    {
        if (mNotificationsSwitch == null)
            mNotificationsSwitch = (PhubCustomSwitchView)findViewById(0x7f090081);
        return mNotificationsSwitch;
    }

    private LinearLayout getOverFlowMenuLayout()
    {
        if (mOverFlowMenuLayout == null)
            mOverFlowMenuLayout = (LinearLayout)findViewById(0x7f09007b);
        return mOverFlowMenuLayout;
    }

    private void initializeViews()
    {
        mNotificationsSwitch = (PhubCustomSwitchView)findViewById(0x7f090081);
        mDoneLayout = (LinearLayout)findViewById(0x7f090078);
        mOverFlowMenuLayout = (LinearLayout)findViewById(0x7f09007b);
        mLinkMovementCustomMethod = new LinkMovementCustomMethod();
        TextView textview = (TextView)findViewById(0x7f090084);
        textview.setText(Html.fromHtml(getResources().getText(0x7f0a00bf).toString()));
        textview.setMovementMethod(mLinkMovementCustomMethod);
    }

    private void initiateDoneChanges()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("alljoyn_notification_settings_pref", 0);
        if (setAlljoynSettingsState() && sharedpreferences != null)
        {
            if (isAlljoynSettingsOn != sharedpreferences.getBoolean("alljoyn_notification_settings_toggle_key", false))
                Toast.makeText(ToqApplication.getAppContext().getApplicationContext(), ToqApplication.getAppContext().getApplicationContext().getResources().getString(0x7f0a00fa), 1).show();
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putBoolean("alljoyn_notification_settings_toggle_key", isAlljoynSettingsOn);
            editor.commit();
            finish();
        }
    }

    private void loadNotificationSwitchState()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("alljoyn_notification_settings_pref", 0);
        if (sharedpreferences != null)
        {
            isAlljoynSettingsOn = sharedpreferences.getBoolean("alljoyn_notification_settings_toggle_key", false);
            getNotificationsSwitch().setChecked(isAlljoynSettingsOn);
        }
    }

    private boolean setAlljoynSettingsState()
    {
        if (isAlljoynSettingsOn)
        {
            if (((WifiManager)ToqApplication.getAppContext().getApplicationContext().getSystemService("wifi")).isWifiEnabled())
            {
                Log.d(TAG, "Alljoyn is started ");
                AllJoynBusHandler.startAllJoyn();
                return true;
            } else
            {
                Toast.makeText(ToqApplication.getAppContext().getApplicationContext(), ToqApplication.getAppContext().getApplicationContext().getResources().getString(0x7f0a00fb), 1).show();
                return false;
            }
        } else
        {
            Log.d(TAG, "Alljoyn is stopped ");
            AllJoynBusHandler.stopAllJoyn();
            return true;
        }
    }

    private void setListeners()
    {
        getNotificationsSwitch().setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AllJoynSettingsActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (flag)
                {
                    isAlljoynSettingsOn = true;
                    return;
                } else
                {
                    isAlljoynSettingsOn = false;
                    return;
                }
            }

            
            {
                this$0 = AllJoynSettingsActivity.this;
                super();
            }
        }
);
        getOverFlowMenuLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final AllJoynSettingsActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f06000f);
                    mPopUpWindow = (new PopUpWindowUtils(AllJoynSettingsActivity.this)).getPopUpWindow(as, AllJoynSettingsActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = AllJoynSettingsActivity.this;
                super();
            }
        }
);
        getDoneLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final AllJoynSettingsActivity this$0;

            public void onClick(View view)
            {
                initiateDoneChanges();
            }

            
            {
                this$0 = AllJoynSettingsActivity.this;
                super();
            }
        }
);
    }

    public void onBackPressed()
    {
        initiateDoneChanges();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000d);
        initializeViews();
        loadNotificationSwitchState();
        setListeners();
    }

    protected void onPause()
    {
        super.onPause();
        if (mLinkMovementCustomMethod != null && mLinkMovementCustomMethod.isOnTouchEventEnabled())
            mLinkMovementCustomMethod.setOnTouchEventEnabled(false);
    }

    protected void onResume()
    {
        super.onResume();
        if (mLinkMovementCustomMethod != null && !mLinkMovementCustomMethod.isOnTouchEventEnabled())
            mLinkMovementCustomMethod.setOnTouchEventEnabled(true);
    }

    public void processPopUpItemClick(String s)
    {
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
    }



/*
    static boolean access$002(AllJoynSettingsActivity alljoynsettingsactivity, boolean flag)
    {
        alljoynsettingsactivity.isAlljoynSettingsOn = flag;
        return flag;
    }

*/



/*
    static PopupWindow access$102(AllJoynSettingsActivity alljoynsettingsactivity, PopupWindow popupwindow)
    {
        alljoynsettingsactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/

}
