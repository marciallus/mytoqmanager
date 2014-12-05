// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.content.SharedPreferences;
import com.qualcomm.toq.ToqApplication;

public class AmbientUtils
{


    public static void resetAmbientLastFetchTimeStamp()
    {
        android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).edit();
        editor.putLong("stock_last_update_time", 0L);
        editor.putLong("weather_last_update_time", 0L);
        editor.putLong("current_city_last_update_time", 0L);
        editor.commit();
    }
}
