// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;

public class EarpiecePreference
{

    public static final String CURRENT_STATUS_SUB_TEXT_KEY = "current_status_subtext";
    public static final String CURRENT_STATUS_TEXT_KEY = "current_status_text";
    public static final String EP_FIRMWARE_INTO_DOWNLOADER_MODE = "firmware_progress_mode";
    public static final String EP_FIRMWARE_PROGRESS_KEY = "firmware_progress";
    public static final String EP_FIRMWARE_PROGRESS_KEY_2 = "firmware_progress_text";
    public static final String LAST_KNOWN_HEADSET_PBE_MODE = "last_known_headset_mode";
    public static final String LAST_KNOWN_PRIMARY_HEADSET_ENDPOINT = "last_known_primary_headset";
    public static final String LAST_STATUS_CHECKED_KEY = "last_status_checked";
    public static final String SHARED_PREFS_FILE = "earpiece_prefs_file";
    private static final String TAG = "EarpiecePreference";
    private static EarpiecePreference instance = null;
    private SharedPreferences prefs;

    private EarpiecePreference(Context context)
    {
        prefs = null;
        prefs = context.getSharedPreferences("earpiece_prefs_file", 0);
    }

    public static EarpiecePreference getEarpiecePreference(Context context)
    {
        if (instance == null)
            instance = new EarpiecePreference(context);
        return instance;
    }

    public void clearAppPreferences()
    {
        android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("app_pref", 0).edit();
        editor.remove("associated_ep_l_device_name");
        editor.remove("associated_ep_l_device_address");
        SharedPreferences sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("app_pref", 0);
        android.content.SharedPreferences.Editor editor1 = sharedpreferences.edit();
        if (sharedpreferences.contains("ep_l_device_mode"))
            editor.remove("ep_l_device_mode");
        if (sharedpreferences.contains("ep_l_device_role"))
            editor.remove("ep_l_device_role");
        if (sharedpreferences.contains("ep_l_device_linkkey"))
            editor.remove("ep_l_device_linkkey");
        if (sharedpreferences.contains("ep_common_device_linkkey"))
            editor.remove("ep_common_device_linkkey");
        if (sharedpreferences.contains("ep_l_device_connected_ep"))
            editor.remove("ep_l_device_connected_ep");
        if (sharedpreferences.contains("epLDependendentOnPrimaryFlag"))
            editor.remove("epLDependendentOnPrimaryFlag");
        if (sharedpreferences.contains("ep_l_force_upgrade_Flag"))
            editor.remove("ep_l_force_upgrade_Flag");
        SharedPreferences sharedpreferences1 = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("watch_details_pref", 0);
        android.content.SharedPreferences.Editor editor2 = sharedpreferences1.edit();
        if (sharedpreferences1.contains("device_name1"))
            editor2.remove("device_name1");
        if (sharedpreferences1.contains("hardware_revision1"))
            editor2.remove("hardware_revision1");
        if (sharedpreferences1.contains("model_number1"))
            editor2.remove("model_number1");
        if (sharedpreferences1.contains("software_revision1"))
            editor2.remove("software_revision1");
        if (sharedpreferences1.contains("software_release1"))
            editor2.remove("software_release1");
        if (sharedpreferences1.contains("serial_number1"))
            editor2.remove("serial_number1");
        editor.remove("associated_ep_r_device_name");
        editor.remove("associated_ep_r_device_address");
        if (sharedpreferences.contains("ep_r_device_mode"))
            editor.remove("ep_r_device_mode");
        if (sharedpreferences.contains("ep_r_device_role"))
            editor.remove("ep_r_device_role");
        if (sharedpreferences.contains("ep_r_device_linkkey"))
            editor.remove("ep_r_device_linkkey");
        if (sharedpreferences.contains("ep_common_device_linkkey"))
            editor.remove("ep_common_device_linkkey");
        if (sharedpreferences.contains("ep_r_device_connected_ep"))
            editor.remove("ep_r_device_connected_ep");
        if (sharedpreferences.contains("epRDependendentOnPrimaryFlag"))
            editor.remove("epRDependendentOnPrimaryFlag");
        if (sharedpreferences.contains("ep_r_force_upgrade_Flag"))
            editor.remove("ep_r_force_upgrade_Flag");
        if (sharedpreferences1.contains("device_name2"))
            editor2.remove("device_name2");
        if (sharedpreferences1.contains("hardware_revision2"))
            editor2.remove("hardware_revision2");
        if (sharedpreferences1.contains("model_number2"))
            editor2.remove("model_number2");
        if (sharedpreferences1.contains("software_revision2"))
            editor2.remove("software_revision2");
        if (sharedpreferences1.contains("software_release2"))
            editor2.remove("software_release2");
        if (sharedpreferences1.contains("serial_number2"))
            editor2.remove("serial_number2");
        editor1.commit();
        editor.commit();
        editor2.commit();
    }

    public int getInteger(String s, int i)
    {
        if (prefs != null && prefs.contains(s))
            i = prefs.getInt(s, i);
        return i;
    }

    public String getString(String s, String s1)
    {
        if (prefs != null && prefs.contains(s))
            s1 = prefs.getString(s, s1);
        return s1;
    }

    public void putInteger(String s, int i)
    {
        if (prefs != null)
        {
            Log.d("EarpiecePreference", (new StringBuilder()).append("putInteger key = ").append(s).append(", value = ").append(i).toString());
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.putInt(s, i);
            editor.commit();
        }
    }

    public void putString(String s, String s1)
    {
        if (prefs != null)
        {
            Log.d("EarpiecePreference", (new StringBuilder()).append("putString key = ").append(s).append(", value = ").append(s1).toString());
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.putString(s, s1);
            editor.commit();
        }
    }

}
