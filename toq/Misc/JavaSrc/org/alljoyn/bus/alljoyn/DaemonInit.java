// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus.alljoyn;

import android.content.*;
import android.util.Log;
import java.lang.reflect.Constructor;

public class DaemonInit
{

    private static final String TAG = "DaemonInit";
    public static BroadcastReceiver receiver;
    private static Context sContext;


    public static boolean PrepareDaemon(Context context)
    {
        Log.v("DaemonInit", (new StringBuilder()).append("Android version : ").append(android.os.Build.VERSION.SDK_INT).toString());
        sContext = context.getApplicationContext();
        Log.v("DaemonInit", "Saved application context");
        if (android.os.Build.VERSION.SDK_INT < 16);
        if (receiver == null)
            try
            {
                Constructor constructor = Class.forName("org.alljoyn.bus.proximity.ScanResultsReceiver").getConstructor(new Class[] {
                    android/content/Context
                });
                Object aobj[] = new Object[1];
                aobj[0] = sContext;
                receiver = (BroadcastReceiver)constructor.newInstance(aobj);
                sContext.registerReceiver(receiver, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
                Log.v("DaemonInit", "Registered scan results receiver");
            }
            catch (Exception exception)
            {
                Log.d("DaemonInit", "Scan results receiver not found, proximity support disabled");
                return true;
            }
        return true;
    }

    public static Context getContext()
    {
        return sContext;
    }
}
