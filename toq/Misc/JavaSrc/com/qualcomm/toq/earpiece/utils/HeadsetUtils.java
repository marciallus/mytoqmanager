// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.utils;

import android.content.Context;
import android.content.res.Resources;
import com.qualcomm.toq.ToqApplication;

public class HeadsetUtils
{

    private static final String TAG = "HeadsetUtils";
    static HeadsetUtils mInstance = null;


    public static HeadsetUtils getHeadsetUtils()
    {
        if (mInstance == null)
            mInstance = new HeadsetUtils();
        return mInstance;
    }

    public static String getString(int i)
    {
        return ToqApplication.getAppContext().getResources().getString(i);
    }

    public static boolean isEPBuildVariantSupported(String s)
    {
        return s != null && (s.equalsIgnoreCase("P0") || s.equalsIgnoreCase("A3") || s.equalsIgnoreCase("P1") || s.equalsIgnoreCase("ep_p2") || s.equalsIgnoreCase("P2") || s.equalsIgnoreCase("MP"));
    }

}
