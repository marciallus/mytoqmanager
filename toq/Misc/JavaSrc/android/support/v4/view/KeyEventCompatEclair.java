// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package android.support.v4.view;

import android.view.KeyEvent;

class KeyEventCompatEclair
{


    public static boolean isTracking(KeyEvent keyevent)
    {
        return keyevent.isTracking();
    }

    public static void startTracking(KeyEvent keyevent)
    {
        keyevent.startTracking();
    }
}
