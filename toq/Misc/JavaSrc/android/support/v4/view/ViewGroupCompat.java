// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v4.view:
//            ViewGroupCompatHC, ViewGroupCompatIcs

public class ViewGroupCompat
{
    static class ViewGroupCompatHCImpl extends ViewGroupCompatStubImpl
    {

        public void setMotionEventSplittingEnabled(ViewGroup viewgroup, boolean flag)
        {
            ViewGroupCompatHC.setMotionEventSplittingEnabled(viewgroup, flag);
        }

    }

    static class ViewGroupCompatIcsImpl extends ViewGroupCompatHCImpl
    {

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
        {
            return ViewGroupCompatIcs.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
        }

    }

    static interface ViewGroupCompatImpl
    {

        public abstract boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent);

        public abstract void setMotionEventSplittingEnabled(ViewGroup viewgroup, boolean flag);
    }

    static class ViewGroupCompatStubImpl
        implements ViewGroupCompatImpl
    {

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
        {
            return true;
        }

        public void setMotionEventSplittingEnabled(ViewGroup viewgroup, boolean flag)
        {
        }

    }


    static final ViewGroupCompatImpl IMPL;

    private ViewGroupCompat()
    {
    }

    public static boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        return IMPL.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
    }

    public static void setMotionEventSplittingEnabled(ViewGroup viewgroup, boolean flag)
    {
        IMPL.setMotionEventSplittingEnabled(viewgroup, flag);
    }

    static 
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 14)
            IMPL = new ViewGroupCompatIcsImpl();
        else
        if (i >= 11)
            IMPL = new ViewGroupCompatHCImpl();
        else
            IMPL = new ViewGroupCompatStubImpl();
    }
}
