// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.qualcomm.toq.base.utils.Log;

public class PhubPreference
{

    public static final String ADVANCED_SETTINGS_CLOCK_TIMEOUT_KEY = "clock_timeout_key";
    public static final String ADVANCED_SETTINGS_DOUBLE_TAP_SPEED_KEY = "double_tap_speed_key";
    public static final String ADVANCED_SETTINGS_LIGHT_DURATION_KEY = "light_duration_key";
    public static final String ADVANCED_SETTINGS_PRIVATE_NOTIFICATION_KEY = "private_notification_key";
    public static final String ADVANCED_SETTINGS_VIBRATING_ALERTS_KEY = "vibrating_alerts_key";
    public static final String DEFAULT_LOCALE_KEY = "default_locale_key";
    public static final String ICON_THEME_KEY = "icon_theme_key_v1";
    public static final String LOCALE_KEY = "locale_key";
    public static final String LOCALE_LIST_KEY = "locale_list_key";
    public static final String MUSIC_PLAYER_SELECTION_KEY = "music_player_selection_key";
    public static final String PHONE_CALL_HISTORY_KEY = "CALL_HISTORY";
    public static final String PHONE_INCOMING_KEY = "INCOMING_VAL";
    public static final String PHONE_VIBE_REPEAT_KEY = "VIBE_COUNT";
    public static final String PHONE_VIBE_STYLE_KEY = "VIBE_STYLE";
    public static final String PHONE_VOICE_MAIL_KEY = "VOICE_MAIL";
    public static final String SHARED_PREFS_FILE = "phub_prefs_file";
    public static final String SMS_INBOX_CURSOR_COUNT = "sms_inbox_cursor_count_key";
    private static final String TAG = "PhubPreference";
    public static final String TEXT_MESSAGE_DISP_KEY = "DISP_MSG";
    public static final String TEXT_MESSAGE_INCOMING_KEY = "INCOMING_MSG";
    public static final String TEXT_MESSAGE_VIBE_COUNT_KEY = "VIBE_COUNT";
    public static final String TEXT_MESSAGE_VIBE_STYLE_KEY = "VIBE_STYLE";
    public static final String TOQ_TALK_SETTINGS_KEY = "toq_talk_on_off_key";
    public static final String USAGE_LOG_DELAY = "usage_log_delay";
    public static final String USAGE_LOG_LAST_UPLOAD_STATUS = "usage_log_last_upload_status";
    public static final String USAGE_LOG_LAST_UPLOAD_TIME = "usage_log_last_upload_time";
    public static final String USAGE_LOG_SETTINGS_KEY = "usage_log_on_off_key";
    private static PhubPreference instance = null;
    private SharedPreferences prefs;

    private PhubPreference(Context context)
    {
        prefs = null;
        prefs = context.getSharedPreferences("phub_prefs_file", 0);
    }

    public static PhubPreference getPhubPreference(Context context)
    {
        if (instance == null)
            instance = new PhubPreference(context);
        return instance;
    }

    public boolean getBoolean(String s, boolean flag)
    {
        if (prefs != null && prefs.contains(s))
            flag = prefs.getBoolean(s, flag);
        return flag;
    }

    public int getInt(String s, int i)
    {
        if (prefs != null && prefs.contains(s))
            i = prefs.getInt(s, i);
        return i;
    }

    public long getLong(String s, long l)
    {
        if (prefs != null && prefs.contains(s))
            l = prefs.getLong(s, l);
        return l;
    }

    public String getString(String s, String s1)
    {
        if (prefs != null && prefs.contains(s))
            s1 = prefs.getString(s, s1);
        return s1;
    }

    public void putBoolean(String s, boolean flag)
    {
        if (prefs != null)
        {
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.putBoolean(s, flag);
            editor.commit();
        }
    }

    public void putInt(String s, int i)
    {
        Log.d("PhubPreference", (new StringBuilder()).append("prefs=").append(prefs).append(" value=").append(prefs).toString());
        if (prefs != null)
        {
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.putInt(s, i);
            editor.commit();
        }
    }

    public void putLong(String s, long l)
    {
        if (prefs != null)
        {
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.putLong(s, l);
            editor.commit();
        }
    }

    public void putString(String s, String s1)
    {
        if (prefs != null)
        {
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.putString(s, s1);
            editor.commit();
        }
    }

}
