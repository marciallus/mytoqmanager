// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.*;
import org.json.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            FMSController

public class UserSettingsController extends DefaultController
{

    private static final int DEFAULT_ACTIVITY_GOAL = 10000;
    private static final boolean DEFAULT_ACTIVITY_MONITORING_MODE = false;
    private static final int DEFAULT_CLOCK_TIMEOUT = 20;
    private static final int DEFAULT_DOUBLE_TAP_SPEED = 500;
    private static final String DEFAULT_ICON_THEME = "Optima";
    private static final int DEFAULT_LIGHT_DURATION = 10;
    private static final boolean DEFAULT_PRIVACY_MODE = false;
    private static final String DEFAULT_PROFILE = "Default";
    private static final boolean DEFAULT_TOQ_TALK__MODE = true;
    private static final boolean DEFAULT_VIBRATION_MODE = true;
    private static final String TAG = "UserSettingsController";
    public static final String appName = "USER_SETTINGS_CONTROLLER";
    private static UserSettingsController mInstance = null;


    public static UserSettingsController getUserSettingsController()
    {
        if (mInstance == null)
            mInstance = new UserSettingsController();
        return mInstance;
    }

    private JSONArray prepareReminderTimes()
    {
        JSONArray jsonarray;
        SharedPreferences sharedpreferences;
        jsonarray = new JSONArray();
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_137;
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("activity_goal_reminder_times_set_key", ObjectSerializer.serialize(AndroidUtils.getAndroidUtils().getDefaultReminderTimes())));
        if (arraylist != null)
            try
            {
                JSONObject jsonobject;
                for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); jsonarray.put(jsonobject))
                {
                    Calendar calendar = (Calendar)iterator.next();
                    jsonobject = new JSONObject();
                    jsonobject.put("Minute", calendar.get(12));
                    jsonobject.put("Hour", calendar.get(11));
                }

            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                return jsonarray;
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
                return jsonarray;
            }
        return jsonarray;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private int synchUserSettings(String s)
    {
        int i = -1;
        if (FMSController.getFmsController() != null)
            i = FMSController.getFmsController().fmsSyncFile(1, new ByteArrayInputStream(s.getBytes()), "/settings/usersettings.jsn", -1);
        return i;
    }

    public JSONObject createUserSettingsJson(Context context)
    {
        JSONObject jsonobject;
        PhubPreference phubpreference;
        int i;
        int j;
        int k;
        String s;
        boolean flag;
        boolean flag1;
        boolean flag2;
        int l;
        boolean flag3;
        JSONArray jsonarray;
        JSONObject jsonobject1;
        jsonobject = new JSONObject();
        if (context == null)
            break MISSING_BLOCK_LABEL_423;
        phubpreference = PhubPreference.getPhubPreference(context);
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (phubpreference == null)
            break MISSING_BLOCK_LABEL_423;
        i = phubpreference.getInt("clock_timeout_key", 20);
        j = phubpreference.getInt("double_tap_speed_key", 500);
        k = phubpreference.getInt("light_duration_key", 10);
        s = phubpreference.getString("icon_theme_key_v1", "Optima");
        flag = phubpreference.getBoolean("private_notification_key", false);
        flag1 = sharedpreferences.getBoolean("activity_monitoring_settings_toggle_key", false);
        flag2 = phubpreference.getBoolean("toq_talk_on_off_key", true);
        l = sharedpreferences.getInt("activity_monitoring_goal_points_key", 10000);
        flag3 = sharedpreferences.getBoolean("activity_goal_reminder_switch_state_key", false);
        jsonarray = new JSONArray();
        jsonobject1 = new JSONObject();
        jsonobject1.put("ProfileName", "Default");
        jsonobject1.put("InactivityTimeout", i);
        jsonobject1.put("FrontLightTapTime", j);
        jsonobject1.put("FrontLightOnTime", k);
        jsonobject1.put("IconTheme", Utils.getIconStyleValue(s));
        jsonobject1.put("Locale", phubpreference.getString("locale_key", phubpreference.getString("default_locale_key", "en_US")));
        PackageInfo packageinfo = context.getPackageManager().getPackageInfo(ToqApplication.getAppContext().getPackageName(), 0);
        if (packageinfo == null)
            break MISSING_BLOCK_LABEL_297;
        String s1 = packageinfo.versionName;
        if (ProjectConfig.getProjectConfig() == null || !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release") || s1 == null)
            break MISSING_BLOCK_LABEL_297;
        if (s1.startsWith("1.5.2"))
            jsonobject1.put("Locale", "en_US");
_L1:
        jsonobject1.put("PrivacyOn", flag);
        jsonobject1.put("SpeechReplyOn", flag2);
        jsonobject1.put("IsActivityOn", flag1);
        jsonobject1.put("ActivityGoal", l);
        jsonobject1.put("ActivityAlarms", prepareReminderTimes());
        jsonobject1.put("IsActivityRemindersOn", flag3);
        jsonarray.put(jsonobject1);
        jsonobject.put("Profiles", jsonarray);
        return jsonobject;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
          goto _L1
        JSONException jsonexception;
        jsonexception;
        Log.d("UserSettingsController", (new StringBuilder()).append("JSONException occured while creating JSON for User Settings").append(jsonexception).toString());
        return jsonobject;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendUserSettingsToWD(Context context)
    {
        try
        {
            JSONObject jsonobject = createUserSettingsJson(context);
            Log.d("UserSettingsController", (new StringBuilder()).append("sendUserSettingsToWD() called: \n").append(jsonobject.toString()).toString());
            synchUserSettings(jsonobject.toString());
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

}
