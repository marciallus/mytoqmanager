// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;

public class LinkMovementCustomMethod extends LinkMovementMethod
{

    private boolean isOnTouchEventEnabled;

    public LinkMovementCustomMethod()
    {
        isOnTouchEventEnabled = true;
    }

    public boolean isOnTouchEventEnabled()
    {
        return isOnTouchEventEnabled;
    }

    public boolean onTouchEvent(TextView textview, Spannable spannable, MotionEvent motionevent)
    {
label0:
        {
            boolean flag;
            try
            {
                if (!isOnTouchEventEnabled)
                    break label0;
                flag = super.onTouchEvent(textview, spannable, motionevent);
            }
            catch (Exception exception)
            {
                isOnTouchEventEnabled = true;
                Log.e("LinkMovementCustomMethod", "No Web Browser Found that can open the link");
                Utils.showBrowserNotInstalledToast();
                return true;
            }
            return flag;
        }
        return false;
    }

    public void setOnTouchEventEnabled(boolean flag)
    {
        isOnTouchEventEnabled = flag;
    }
}
