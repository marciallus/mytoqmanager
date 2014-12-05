// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.*;

public class PopUpWindowUtils
{
    public static interface ActivityRef
    {

        public abstract void processPopUpItemClick(String s);
    }


    android.view.View.OnClickListener listItemClickListener;
    private ActivityRef mActivityRef;

    public PopUpWindowUtils(ActivityRef activityref)
    {
        listItemClickListener = new android.view.View.OnClickListener() {

            final PopUpWindowUtils this$0;

            public void onClick(View view)
            {
                if (mActivityRef != null)
                {
                    String s = (String)view.getTag();
                    mActivityRef.processPopUpItemClick(s);
                }
            }

            
            {
                this$0 = PopUpWindowUtils.this;
                super();
            }
        }
;
        mActivityRef = activityref;
    }

    public PopupWindow getPopUpWindow(String as[], Context context)
    {
        LayoutInflater layoutinflater = LayoutInflater.from(context);
        View view = layoutinflater.inflate(0x7f030042, null);
        LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f090234);
        for (int i = 0; i < as.length; i++)
        {
            View view1 = layoutinflater.inflate(0x7f030043, null);
            ((TextView)view1.findViewById(0x7f090235)).setText(as[i]);
            view1.setTag(as[i]);
            view1.setOnClickListener(listItemClickListener);
            linearlayout.addView(view1);
        }

        PopupWindow popupwindow = new PopupWindow(view, -2, -2, true);
        popupwindow.setOutsideTouchable(true);
        popupwindow.setBackgroundDrawable(new BitmapDrawable());
        return popupwindow;
    }

}
