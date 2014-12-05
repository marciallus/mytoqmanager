// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.os.PowerManager;

public abstract class WakeLocker
{

    private static android.os.PowerManager.WakeLock wakeLock;


    public static void acquire(Context context)
    {
        if (wakeLock != null)
            wakeLock.release();
        wakeLock = ((PowerManager)context.getSystemService("power")).newWakeLock(0x3000001a, "WakeLock");
        wakeLock.acquire();
    }

    public static void release()
    {
        if (wakeLock != null)
            wakeLock.release();
        wakeLock = null;
    }
}
