// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ProjectConfig;
import com.qualcomm.toq.smartwatch.controller.UserSettingsController;
import com.qualcomm.toq.smartwatch.notification.ToqNotificationManager;
import java.util.ArrayList;
import java.util.Locale;

// Referenced classes of package com.qualcomm.toq.smartwatch.utils:
//            AndroidUtils

public class DeviceLanguageChangeReceiver extends BroadcastReceiver
{

    public static final String SHARED_PREFS_FILE = "phub_prefs_file";
    private static final String TAG = "DeviceLanguageChangeReceiver";
    private SharedPreferences mPreference;


    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        mPreference = context.getSharedPreferences("phub_prefs_file", 0);
        Log.d("DeviceLanguageChangeReceiver", "OnReceive Called");
        if (s.equals("android.intent.action.LOCALE_CHANGED"))
        {
            if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            {
                Log.d("DeviceLanguageChangeReceiver", (new StringBuilder()).append("Action : ").append(s).toString());
                if (mPreference.getBoolean("language_setting_auto_button_checked", false))
                {
                    String s1 = Locale.getDefault().toString();
                    Log.d("DeviceLanguageChangeReceiver", (new StringBuilder()).append("device Language ").append(s1).toString());
                    int i = AndroidUtils.getAndroidUtils().getWDSupportedLanguages().indexOf(s1);
                    Log.d("DeviceLanguageChangeReceiver", (new StringBuilder()).append("Index of Language: ").append(i).toString());
                    android.content.SharedPreferences.Editor editor = mPreference.edit();
                    if (i != -1)
                        editor.putString("locale_key", s1);
                    else
                        editor.putString("locale_key", mPreference.getString("default_locale_key", "en_US"));
                    editor.commit();
                    UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
                }
            }
            AndroidUtils.getAndroidUtils().updateToqLanguage();
            ToqNotificationManager toqnotificationmanager = ToqNotificationManager.getInstance();
            boolean flag = toqnotificationmanager.isToqNotificationVisible("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK", 10);
            boolean flag1 = false;
            if (flag)
            {
                boolean flag2 = toqnotificationmanager.isToqNotificationVisible("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE", 10);
                flag1 = false;
                if (flag2)
                    flag1 = true;
            }
            if (flag1 && ToqApplication.getDeviceType() == 0)
            {
                Log.d("DeviceLanguageChangeReceiver", "BT disconnection notification is visible");
                toqnotificationmanager.showWatchBTDisconnectNotification();
            }
        }
    }
}
