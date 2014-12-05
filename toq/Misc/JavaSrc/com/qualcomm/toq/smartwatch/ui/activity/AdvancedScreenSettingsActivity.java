// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.ui.customview.PhubCustomSwitchView;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.CommHubController;
import com.qualcomm.toq.smartwatch.controller.UserSettingsController;
import com.qualcomm.toq.smartwatch.logger.ToqLogger;
import com.qualcomm.toq.smartwatch.logger.ToqLoggerFactory;
import com.qualcomm.toq.smartwatch.notification.ToqNotificationManager;
import com.qualcomm.toq.smartwatch.ui.adapter.AdvancedSettingsDialogListAdapter;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;
import java.util.*;

public class AdvancedScreenSettingsActivity extends Activity
{

    private static final String TAG = "AdvancedScreenSettingsActivity";
    private static String sAdvancedListItemTag = "";
    private static int sInitialValue = 0;
    private static String sPrefsKey = "";
    private android.view.View.OnClickListener dialogButtonsListener;
    private android.widget.AdapterView.OnItemClickListener dialogItemsClickListener;
    private boolean isAutoLanguageOn;
    private boolean isCommunicationItem;
    private LinearLayout mAdvancedSettingsBackLayout;
    private Dialog mAdvancedSettingsDialog;
    private ListView mAdvancedSettingsDialogList;
    private LinearLayout mCallHistoryLayout;
    private TextView mCallHistorySecondaryText;
    private TextView mCallHistoryTitle;
    private LinearLayout mClockTimeoutLayout;
    private TextView mClockTimeoutSecondaryText;
    private TextView mClockTimeoutTitle;
    private String mDefaultLanguage;
    private DisplayMetrics mDisplayMetrics;
    private LinearLayout mDoubleTapSpeedLayout;
    private TextView mDoubleTapSpeedSecondaryText;
    private TextView mDoubleTapSpeedTitle;
    private PhubCustomSwitchView mLanguageAutoOnOffSwitch;
    private ArrayList mLanguageLocaleList;
    private String mLanguageNamesArray[];
    private LinearLayout mLanguageSettingLayout;
    private TextView mLanguageSettingSecondaryText;
    private TextView mLanguageSettingTitle;
    private LinearLayout mLightDurationLayout;
    private TextView mLightDurationSecondaryText;
    private TextView mLightDurationTitle;
    private LinearLayout mMessageHistoryLayout;
    private TextView mMessageHistorySecondaryText;
    private TextView mMessageHistoryTitle;
    private PhubPreference mPreference;
    private LinearLayout mPrivacySettingsLayout;
    private PhubCustomSwitchView mPrivateNotificationSwitch;
    private Resources mResources;
    private View mToqTalkDivider;
    private LinearLayout mToqTalkLayout;
    private PhubCustomSwitchView mToqTalkSwitch;
    private LinearLayout mUsageLogLayout;
    private PhubCustomSwitchView mUsageLogSwitch;
    private PhubCustomSwitchView mVibratingAlertsSwitch;

    public AdvancedScreenSettingsActivity()
    {
        mLanguageNamesArray = null;
        mDefaultLanguage = null;
        dialogButtonsListener = new android.view.View.OnClickListener() {

            final AdvancedScreenSettingsActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296373: 
                    mAdvancedSettingsDialog.dismiss();
                    return;

                case 2131296372: 
                    if (mPreference != null && isCommunicationItem())
                        if (AdvancedScreenSettingsActivity.sAdvancedListItemTag.equalsIgnoreCase(mResources.getString(0x7f0a00b0)))
                        {
                            boolean flag = isAutoLanguageOn;
                            boolean flag1 = mPreference.getBoolean("language_setting_auto_button_checked", false);
                            boolean flag2 = false;
                            if (flag != flag1)
                                flag2 = true;
                            if (flag2)
                                mPreference.putBoolean("language_setting_auto_button_checked", isAutoLanguageOn);
                            Locale locale = ToqApplication.getAppContext().getResources().getConfiguration().locale;
                            if (mLanguageLocaleList != null && !mLanguageLocaleList.isEmpty() && AdvancedScreenSettingsActivity.sInitialValue < mLanguageLocaleList.size() && !locale.toString().equals(mLanguageLocaleList.get(AdvancedScreenSettingsActivity.sInitialValue)))
                            {
                                setLocaleToPref();
                                if (mPreference != null)
                                    Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Language set in pref ===> ").append(mPreference.getString("locale_key", "Not Set")).toString());
                                if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                                    UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
                            }
                        } else
                        {
                            mPreference.putInt(AdvancedScreenSettingsActivity.sPrefsKey, AdvancedScreenSettingsActivity.sInitialValue);
                            updateCommunicationHub();
                        }
                    updateSecondaryTextInListItems();
                    mAdvancedSettingsDialog.dismiss();
                    return;

                case 2131296371: 
                    mAdvancedSettingsDialog.dismiss();
                    return;
                }
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
;
        dialogItemsClickListener = new android.widget.AdapterView.OnItemClickListener() {

            int previousSelectedIndex;
            RadioButton radioButton;
            final AdvancedScreenSettingsActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Log.d("AdvancedScreenSettingsActivity", "Inside on item click for dialog items");
                if (AdvancedScreenSettingsActivity.sAdvancedListItemTag.equalsIgnoreCase(mResources.getString(0x7f0a00b0)))
                {
                    isAutoLanguageOn = false;
                    changeLanguageAutoSwitchState(false);
                }
                setPreviousValueUnchecked();
                AdvancedScreenSettingsActivity.sInitialValue = i;
                radioButton = (RadioButton)view.findViewById(0x7f090237);
                radioButton.setChecked(true);
                if (!isCommunicationItem())
                {
                    if (mPreference != null)
                        if (AdvancedScreenSettingsActivity.sAdvancedListItemTag.equalsIgnoreCase(mResources.getString(0x7f0a00a2)))
                            mPreference.putInt(AdvancedScreenSettingsActivity.sPrefsKey, Utils.getClockTimeoutValue(AdvancedScreenSettingsActivity.sInitialValue));
                        else
                        if (AdvancedScreenSettingsActivity.sAdvancedListItemTag.equalsIgnoreCase(mResources.getString(0x7f0a00a3)))
                            mPreference.putInt(AdvancedScreenSettingsActivity.sPrefsKey, Utils.getLightDurationValue(AdvancedScreenSettingsActivity.sInitialValue));
                        else
                        if (AdvancedScreenSettingsActivity.sAdvancedListItemTag.equalsIgnoreCase(mResources.getString(0x7f0a00a4)))
                        {
                            mPreference.putInt(AdvancedScreenSettingsActivity.sPrefsKey, Utils.getLightDoubleTapSpeedValue(AdvancedScreenSettingsActivity.sInitialValue));
                            Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Value in the list").append(Utils.getLightDoubleTapSpeedValue(AdvancedScreenSettingsActivity.sInitialValue)).toString());
                        }
                    updateAdvanceSettingsJson();
                    updateSecondaryTextInListItems();
                    mAdvancedSettingsDialog.dismiss();
                }
            }

            public void setPreviousValueUnchecked()
            {
                previousSelectedIndex = AdvancedScreenSettingsActivity.sInitialValue;
                View view = mAdvancedSettingsDialogList.getChildAt(previousSelectedIndex);
                if (view != null)
                {
                    radioButton = (RadioButton)view.findViewById(0x7f090237);
                    radioButton.setChecked(false);
                }
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
;
    }

    private void changeLanguageAutoSwitchState(boolean flag)
    {
        if (mPreference != null && flag)
            isAutoLanguageOn = mPreference.getBoolean("language_setting_auto_button_checked", false);
        mLanguageAutoOnOffSwitch.setChecked(isAutoLanguageOn);
    }

    private void enableOrDisableManualLanguageSelection()
    {
        if (isAutoLanguageOn)
        {
            mAdvancedSettingsDialogList.setEnabled(false);
            mAdvancedSettingsDialogList.setAlpha(0.3F);
            return;
        } else
        {
            mAdvancedSettingsDialogList.setEnabled(true);
            mAdvancedSettingsDialogList.setAlpha(1.0F);
            return;
        }
    }

    private LinearLayout getCallHistoryLayout()
    {
        if (mCallHistoryLayout == null)
            mCallHistoryLayout = (LinearLayout)findViewById(0x7f090061);
        return mCallHistoryLayout;
    }

    private TextView getCallHistorySecondaryText()
    {
        if (mCallHistorySecondaryText == null)
            mCallHistorySecondaryText = (TextView)getCallHistoryLayout().findViewById(0x7f090067);
        return mCallHistorySecondaryText;
    }

    private TextView getCallHistoryTitle()
    {
        if (mCallHistoryTitle == null)
            mCallHistoryTitle = (TextView)getCallHistoryLayout().findViewById(0x7f090066);
        return mCallHistoryTitle;
    }

    private LinearLayout getClockTimeoutLayout()
    {
        if (mClockTimeoutLayout == null)
            mClockTimeoutLayout = (LinearLayout)findViewById(0x7f09005e);
        return mClockTimeoutLayout;
    }

    private TextView getClockTimeoutSecondaryText()
    {
        if (mClockTimeoutSecondaryText == null)
            mClockTimeoutSecondaryText = (TextView)getClockTimeoutLayout().findViewById(0x7f090067);
        return mClockTimeoutSecondaryText;
    }

    private TextView getClockTimeoutTitle()
    {
        if (mClockTimeoutTitle == null)
            mClockTimeoutTitle = (TextView)getClockTimeoutLayout().findViewById(0x7f090066);
        return mClockTimeoutTitle;
    }

    private LinearLayout getDoubleTapSpeedLayout()
    {
        if (mDoubleTapSpeedLayout == null)
            mDoubleTapSpeedLayout = (LinearLayout)findViewById(0x7f090060);
        return mDoubleTapSpeedLayout;
    }

    private TextView getDoubleTapSpeedSecondaryText()
    {
        if (mDoubleTapSpeedSecondaryText == null)
            mDoubleTapSpeedSecondaryText = (TextView)getDoubleTapSpeedLayout().findViewById(0x7f090067);
        return mDoubleTapSpeedSecondaryText;
    }

    private TextView getDoubleTapSpeedTitle()
    {
        if (mDoubleTapSpeedTitle == null)
            mDoubleTapSpeedTitle = (TextView)getDoubleTapSpeedLayout().findViewById(0x7f090066);
        return mDoubleTapSpeedTitle;
    }

    private String[] getLanguageNamesArray(ArrayList arraylist)
    {
        String as[] = new String[arraylist.size()];
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            String s = (String)iterator.next();
            if (s != null)
            {
                Locale locale = AndroidUtils.getNormalizedLocale(s);
                int i = arraylist.indexOf(s);
                as[i] = locale.getDisplayName(locale);
                Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Language ").append(i).append(" : ").append(as[i]).toString());
            }
        } while (true);
        return as;
    }

    private LinearLayout getLanguageSettingLayout()
    {
        if (mLanguageSettingLayout == null)
            mLanguageSettingLayout = (LinearLayout)findViewById(0x7f090063);
        return mLanguageSettingLayout;
    }

    private TextView getLanguageSettingSecondaryText()
    {
        if (mLanguageSettingSecondaryText == null)
            mLanguageSettingSecondaryText = (TextView)getLanguageSettingLayout().findViewById(0x7f090067);
        return mLanguageSettingSecondaryText;
    }

    private TextView getLanguageSettingTitle()
    {
        if (mLanguageSettingTitle == null)
            mLanguageSettingTitle = (TextView)getLanguageSettingLayout().findViewById(0x7f090066);
        return mLanguageSettingTitle;
    }

    private LinearLayout getLightDurationLayout()
    {
        if (mLightDurationLayout == null)
            mLightDurationLayout = (LinearLayout)findViewById(0x7f09005f);
        return mLightDurationLayout;
    }

    private TextView getLightDurationSecondaryText()
    {
        if (mLightDurationSecondaryText == null)
            mLightDurationSecondaryText = (TextView)getLightDurationLayout().findViewById(0x7f090067);
        return mLightDurationSecondaryText;
    }

    private LinearLayout getMessageHistoryLayout()
    {
        if (mMessageHistoryLayout == null)
            mMessageHistoryLayout = (LinearLayout)findViewById(0x7f090062);
        return mMessageHistoryLayout;
    }

    private TextView getMessageHistorySecondaryText()
    {
        if (mMessageHistorySecondaryText == null)
            mMessageHistorySecondaryText = (TextView)getMessageHistoryLayout().findViewById(0x7f090067);
        return mMessageHistorySecondaryText;
    }

    private TextView getMessageHistoryTitle()
    {
        if (mMessageHistoryTitle == null)
            mMessageHistoryTitle = (TextView)getMessageHistoryLayout().findViewById(0x7f090066);
        return mMessageHistoryTitle;
    }

    private LinearLayout getPrivacySettingsLayout()
    {
        if (mPrivacySettingsLayout == null)
            mPrivacySettingsLayout = (LinearLayout)findViewById(0x7f090059);
        return mPrivacySettingsLayout;
    }

    private LinearLayout getToqTalkLayout()
    {
        if (mToqTalkLayout == null)
            mToqTalkLayout = (LinearLayout)findViewById(0x7f09005b);
        return mToqTalkLayout;
    }

    private LinearLayout getUsageLogLayout()
    {
        if (mUsageLogLayout == null)
            mUsageLogLayout = (LinearLayout)findViewById(0x7f090064);
        return mUsageLogLayout;
    }

    private int getValueFromPrefs(String s, int i)
    {
        PhubPreference phubpreference = mPreference;
        int j = 0;
        if (phubpreference != null)
        {
            j = 0;
            if (s != null)
                j = mPreference.getInt(s, i);
        }
        return j;
    }

    private void initPrivateNotificationView()
    {
        TextView textview = (TextView)getPrivacySettingsLayout().findViewById(0x7f090258);
        TextView textview1 = (TextView)getPrivacySettingsLayout().findViewById(0x7f090259);
        textview.setText(getResources().getString(0x7f0a00aa));
        textview1.setText(getResources().getString(0x7f0a00ab));
        if (mPreference != null)
        {
            boolean flag = mPreference.getBoolean("private_notification_key", false);
            getPrivateNotificationSwitch().setChecked(flag);
        }
        getPrivateNotificationSwitch().setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AdvancedScreenSettingsActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag1)
            {
                if (mPreference != null)
                {
                    mPreference.putBoolean("private_notification_key", flag1);
                    Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Privacy setting got changed : ").append(flag1).toString());
                    UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
                }
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
);
    }

    private void initToqTalkView()
    {
        if (mPreference != null)
        {
            boolean flag = mPreference.getBoolean("toq_talk_on_off_key", true);
            getToqTalkSwitch().setChecked(flag);
        }
        getToqTalkSwitch().setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AdvancedScreenSettingsActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag1)
            {
                if (mPreference != null)
                {
                    Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Toq Talk settings got changed : ").append(flag1).toString());
                    mPreference.putBoolean("toq_talk_on_off_key", flag1);
                    UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
                }
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
);
    }

    private void initUsageView()
    {
        TextView textview = (TextView)getUsageLogLayout().findViewById(0x7f090258);
        TextView textview1 = (TextView)getUsageLogLayout().findViewById(0x7f090259);
        textview.setText(getResources().getString(0x7f0a00ac));
        textview1.setText(getResources().getString(0x7f0a00ad));
        if (mPreference != null)
        {
            boolean flag = mPreference.getBoolean("usage_log_on_off_key", true);
            getUsageLogSwitch().setChecked(flag);
        }
        getUsageLogSwitch().setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AdvancedScreenSettingsActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag1)
            {
                ToqLogger toqlogger;
label0:
                {
                    if (mPreference != null)
                    {
                        Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Usage Log settings got changed : ").append(flag1).toString());
                        mPreference.putBoolean("usage_log_on_off_key", flag1);
                        if (getString(0x7f0a0004).equals("toq"))
                        {
                            toqlogger = ToqLoggerFactory.getInstance().getLoggerInstance("usage_log");
                            if (toqlogger != null)
                            {
                                if (!flag1)
                                    break label0;
                                toqlogger.autoUploadLogs();
                            }
                        }
                    }
                    return;
                }
                toqlogger.disableAutoUploadLogs();
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
);
    }

    private void initializeAdvancedSettings()
    {
        mResources = getResources();
        mPreference = PhubPreference.getPhubPreference(this);
        mAdvancedSettingsDialog = new Dialog(this);
        mAdvancedSettingsDialog.getWindow().requestFeature(1);
        mDisplayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        mLanguageLocaleList = AndroidUtils.getAndroidUtils().getWDSupportedLanguages();
        mLanguageNamesArray = getLanguageNamesArray(mLanguageLocaleList);
        mDefaultLanguage = mPreference.getString("default_locale_key", "en_US");
    }

    private boolean isCommunicationItem()
    {
        return isCommunicationItem;
    }

    private void setCommunicationItem(boolean flag)
    {
        isCommunicationItem = flag;
    }

    private void setListenerToLanguageAutoSwitch()
    {
        mLanguageAutoOnOffSwitch.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AdvancedScreenSettingsActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                int i = mLanguageLocaleList.indexOf(mDefaultLanguage);
                String s = Locale.getDefault().toString();
                int j = mLanguageLocaleList.indexOf(s);
                if (flag)
                {
                    isAutoLanguageOn = true;
                    if (j != -1)
                        i = j;
                } else
                {
                    isAutoLanguageOn = false;
                    i = mLanguageLocaleList.indexOf(mPreference.getString("locale_key", mDefaultLanguage));
                }
                setNewValueChecked(i);
                AdvancedScreenSettingsActivity.sInitialValue = i;
            }

            public void setNewValueChecked(int i)
            {
                int j = AdvancedScreenSettingsActivity.sInitialValue;
                View view = mAdvancedSettingsDialogList.getChildAt(j);
                View view1 = mAdvancedSettingsDialogList.getChildAt(i);
                if (view != null)
                    ((RadioButton)view.findViewById(0x7f090237)).setChecked(false);
                if (view1 != null)
                    ((RadioButton)view1.findViewById(0x7f090237)).setChecked(true);
                enableOrDisableManualLanguageSelection();
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
);
    }

    private void setLocaleToPref()
    {
        if (mPreference != null)
        {
            mPreference.putString("locale_key", (String)mLanguageLocaleList.get(sInitialValue));
            Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("App Language set : ").append((String)mLanguageLocaleList.get(sInitialValue)).toString());
            AndroidUtils.getAndroidUtils().updateToqLanguage();
            ToqNotificationManager toqnotificationmanager = ToqNotificationManager.getInstance();
            boolean flag;
            if (toqnotificationmanager.isToqNotificationVisible("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK", 10) && toqnotificationmanager.isToqNotificationVisible("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE", 10))
                flag = true;
            else
                flag = false;
            if (flag && ToqApplication.getDeviceType() == 0)
            {
                Log.d("AdvancedScreenSettingsActivity", "BT disconnection notification is visible");
                toqnotificationmanager.showWatchBTDisconnectNotification();
            }
            recreate();
        }
    }

    private void setUpInitialSettings()
    {
        if (mPreference != null)
            getVibratingAlertsSwitch().setChecked(mPreference.getBoolean("vibrating_alerts_key", true));
        mToqTalkDivider = findViewById(0x7f09005c);
        getToqTalkLayout().setVisibility(0);
        mToqTalkDivider.setVisibility(0);
        initToqTalkView();
        if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            getLanguageSettingLayout().setVisibility(0);
        getUsageLogLayout().setVisibility(0);
        getClockTimeoutTitle().setText(mResources.getString(0x7f0a00a1));
        getLightDurationTitle().setText(mResources.getString(0x7f0a00a3));
        getDoubleTapSpeedTitle().setText(mResources.getString(0x7f0a00a4));
        getCallHistoryTitle().setText(mResources.getString(0x7f0a00a5));
        getMessageHistoryTitle().setText(mResources.getString(0x7f0a00a6));
        getLanguageSettingTitle().setText(mResources.getString(0x7f0a00b0));
        updateSecondaryTextInListItems();
    }

    private void showDialogForAdvancedList(String s, String s1, int i, String s2)
    {
        if (mAdvancedSettingsDialog != null)
        {
            mAdvancedSettingsDialog.setContentView(getLayoutInflater().inflate(0x7f03000c, null));
            mAdvancedSettingsDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            TextView textview = (TextView)mAdvancedSettingsDialog.findViewById(0x7f090069);
            TextView textview1 = (TextView)mAdvancedSettingsDialog.findViewById(0x7f09006a);
            LinearLayout linearlayout = (LinearLayout)mAdvancedSettingsDialog.findViewById(0x7f090072);
            Button button = (Button)mAdvancedSettingsDialog.findViewById(0x7f090075);
            Button button1 = (Button)mAdvancedSettingsDialog.findViewById(0x7f090073);
            Button button2 = (Button)mAdvancedSettingsDialog.findViewById(0x7f090074);
            mAdvancedSettingsDialogList = (ListView)mAdvancedSettingsDialog.findViewById(0x7f09006d);
            String as[];
            if (isCommunicationItem())
            {
                textview1.setVisibility(8);
                if (s != null && s.equalsIgnoreCase(mResources.getString(0x7f0a00b0)))
                {
                    RelativeLayout relativelayout = (RelativeLayout)mAdvancedSettingsDialog.findViewById(0x7f09006b);
                    relativelayout.setVisibility(0);
                    mLanguageAutoOnOffSwitch = (PhubCustomSwitchView)relativelayout.findViewById(0x7f09006c);
                    changeLanguageAutoSwitchState(true);
                    setListenerToLanguageAutoSwitch();
                    as = mLanguageNamesArray;
                    enableOrDisableManualLanguageSelection();
                } else
                {
                    as = mResources.getStringArray(0x7f060000);
                }
            } else
            {
                linearlayout.setVisibility(8);
                textview1.setVisibility(0);
                button.setVisibility(0);
                if (s1 != null)
                    textview1.setText(s1);
                if (s.equalsIgnoreCase(mResources.getString(0x7f0a00a4)))
                    as = mResources.getStringArray(0x7f060002);
                else
                    as = mResources.getStringArray(0x7f060001);
            }
            if (s != null)
                textview.setText(s);
            if (ToqData.getInstance().getRegularTypeFace() != null)
            {
                button.setTypeface(ToqData.getInstance().getRegularTypeFace());
                button2.setTypeface(ToqData.getInstance().getRegularTypeFace());
                button1.setTypeface(ToqData.getInstance().getRegularTypeFace());
            }
            sInitialValue = i;
            if (s2 != null)
                sPrefsKey = s2;
            if (s != null)
                sAdvancedListItemTag = s;
            mAdvancedSettingsDialogList.setAdapter(new AdvancedSettingsDialogListAdapter(ToqApplication.getAppContext(), as, sInitialValue));
            mAdvancedSettingsDialogList.setOnItemClickListener(dialogItemsClickListener);
            mAdvancedSettingsDialog.show();
            button1.setOnClickListener(dialogButtonsListener);
            button2.setOnClickListener(dialogButtonsListener);
            button.setOnClickListener(dialogButtonsListener);
        }
    }

    private void updateAdvanceSettingsJson()
    {
        if (UserSettingsController.getUserSettingsController() != null)
        {
            Log.d("AdvancedScreenSettingsActivity", "storeUpdateUserSettingsToFile() called from AdvancedSettingsActivity");
            UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
        }
    }

    private void updateCommunicationHub()
    {
        if (!CommHubController.getCommHubController().bCommHubStoreCreation)
        {
            CommHubController.getCommHubController().bCommHubStoreCreation = true;
            CommHubController.getCommHubController().storeCommHubToFile();
            return;
        } else
        {
            CommHubController.getCommHubController().bCommHubStoreUpdateCalled = true;
            return;
        }
    }

    private void updateSecondaryTextInListItems()
    {
        getClockTimeoutSecondaryText().setText(Utils.getClockTimeoutSecondaryText(getValueFromPrefs("clock_timeout_key", 20)));
        getLightDurationSecondaryText().setText(Utils.getLightDurationSecondaryText(getValueFromPrefs("light_duration_key", 10)));
        getDoubleTapSpeedSecondaryText().setText(Utils.getLightDoubleTapSpeedSecondaryText(getValueFromPrefs("double_tap_speed_key", 500)));
        getCallHistorySecondaryText().setText(Utils.getCommunicationList(getValueFromPrefs("CALL_HISTORY", 0)));
        getMessageHistorySecondaryText().setText(Utils.getCommunicationList(getValueFromPrefs("DISP_MSG", 0)));
        if (mLanguageLocaleList.indexOf(mPreference.getString("locale_key", mDefaultLanguage)) == -1)
            mPreference.putString("locale_key", mDefaultLanguage);
        getLanguageSettingSecondaryText().setText(mLanguageNamesArray[mLanguageLocaleList.indexOf(mPreference.getString("locale_key", mDefaultLanguage))]);
        Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Double tap speed ==>").append(mPreference.getInt("double_tap_speed_key", 500)).append("++Clock  time out==> ").append(mPreference.getInt("clock_timeout_key", 20)).append("++ Light duration==> ").append(mPreference.getInt("light_duration_key", 10)).append("++ Call history==>").append(mPreference.getInt("CALL_HISTORY", 0)).append("++Message History ==>").append(mPreference.getInt("DISP_MSG", 0)).toString());
    }

    public void advancedItemsOnClick(View view)
    {
        int i = view.getId();
        switch (i)
        {
        default:
            break;

        case 2131296352: 
            setCommunicationItem(false);
            if (mPreference != null && mResources != null)
            {
                int k1 = Utils.getLightDoubleTapSpeedIndex(mPreference.getInt("double_tap_speed_key", 500));
                showDialogForAdvancedList(mResources.getString(0x7f0a00a4), mResources.getString(0x7f0a00a8), k1, "double_tap_speed_key");
                Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Updating the values for showing the dialog for light durationID==>").append(i).toString());
                return;
            }
            break;

        case 2131296351: 
            setCommunicationItem(false);
            if (mPreference != null && mResources != null)
            {
                int j1 = Utils.getLightDurationIndex(mPreference.getInt("light_duration_key", 10));
                showDialogForAdvancedList(mResources.getString(0x7f0a00a3), mResources.getString(0x7f0a00a7), j1, "light_duration_key");
                Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Updating the values for showing the dialog for light durationID==>").append(i).toString());
                return;
            }
            break;

        case 2131296350: 
            setCommunicationItem(false);
            if (mPreference != null && mResources != null)
            {
                int i1 = Utils.getClockTimeoutIndex(mPreference.getInt("clock_timeout_key", 20));
                showDialogForAdvancedList(mResources.getString(0x7f0a00a2), mResources.getString(0x7f0a00a9), i1, "clock_timeout_key");
                Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Updating the values for showing the dialog for clock timeoutID==>").append(i).toString());
                return;
            }
            break;

        case 2131296353: 
            setCommunicationItem(true);
            if (mPreference != null && mResources != null)
            {
                int l = mPreference.getInt("CALL_HISTORY", 0);
                showDialogForAdvancedList(mResources.getString(0x7f0a00a5), "", l, "CALL_HISTORY");
                Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Updating the values for showing the dialog for call historyID==>").append(i).toString());
                return;
            }
            break;

        case 2131296355: 
            if (ProjectConfig.getProjectConfig() == null || ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                break;
            setCommunicationItem(true);
            if (mPreference != null && mResources != null)
            {
                int k = mLanguageLocaleList.indexOf(mPreference.getString("locale_key", mDefaultLanguage));
                showDialogForAdvancedList(mResources.getString(0x7f0a00b0), "", k, "locale_key");
                Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Updating the values for showing the dialog for language settingID==>").append(i).toString());
                return;
            }
            break;

        case 2131296354: 
            setCommunicationItem(true);
            if (mPreference != null && mResources != null)
            {
                int j = mPreference.getInt("DISP_MSG", 0);
                showDialogForAdvancedList(mResources.getString(0x7f0a00a6), "", j, "DISP_MSG");
                Log.d("AdvancedScreenSettingsActivity", (new StringBuilder()).append("Updating the values for showing the dialog for text message historyID==>").append(i).toString());
                return;
            }
            break;
        }
    }

    public LinearLayout getAdvancedSettingsBackLayout()
    {
        if (mAdvancedSettingsBackLayout == null)
            mAdvancedSettingsBackLayout = (LinearLayout)findViewById(0x7f09004f);
        return mAdvancedSettingsBackLayout;
    }

    public TextView getLightDurationTitle()
    {
        if (mLightDurationTitle == null)
            mLightDurationTitle = (TextView)getLightDurationLayout().findViewById(0x7f090066);
        return mLightDurationTitle;
    }

    public PhubCustomSwitchView getPrivateNotificationSwitch()
    {
        if (mPrivateNotificationSwitch == null)
            mPrivateNotificationSwitch = (PhubCustomSwitchView)getPrivacySettingsLayout().findViewById(0x7f09025a);
        return mPrivateNotificationSwitch;
    }

    public PhubCustomSwitchView getToqTalkSwitch()
    {
        if (mToqTalkSwitch == null)
            mToqTalkSwitch = (PhubCustomSwitchView)getToqTalkLayout().findViewById(0x7f09025f);
        return mToqTalkSwitch;
    }

    public PhubCustomSwitchView getUsageLogSwitch()
    {
        if (mUsageLogSwitch == null)
            mUsageLogSwitch = (PhubCustomSwitchView)getUsageLogLayout().findViewById(0x7f09025a);
        return mUsageLogSwitch;
    }

    public PhubCustomSwitchView getVibratingAlertsSwitch()
    {
        if (mVibratingAlertsSwitch == null)
            mVibratingAlertsSwitch = (PhubCustomSwitchView)findViewById(0x7f090057);
        return mVibratingAlertsSwitch;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000a);
        initializeAdvancedSettings();
        setUpInitialSettings();
    }

    protected void onResume()
    {
        super.onResume();
        getAdvancedSettingsBackLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final AdvancedScreenSettingsActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
);
        getVibratingAlertsSwitch().setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AdvancedScreenSettingsActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (mPreference != null)
                    mPreference.putBoolean("vibrating_alerts_key", flag);
                updateAdvanceSettingsJson();
            }

            
            {
                this$0 = AdvancedScreenSettingsActivity.this;
                super();
            }
        }
);
        initPrivateNotificationView();
        initUsageView();
    }

















/*
    static boolean access$602(AdvancedScreenSettingsActivity advancedscreensettingsactivity, boolean flag)
    {
        advancedscreensettingsactivity.isAutoLanguageOn = flag;
        return flag;
    }

*/




/*
    static int access$802(int i)
    {
        sInitialValue = i;
        return i;
    }

*/

}
