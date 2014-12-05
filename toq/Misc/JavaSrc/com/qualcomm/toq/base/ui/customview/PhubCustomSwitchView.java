// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.customview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.Switch;
import com.qualcomm.toq.ToqApplication;

public class PhubCustomSwitchView extends Switch
{

    public PhubCustomSwitchView(Context context)
    {
        super(context);
    }

    public PhubCustomSwitchView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public PhubCustomSwitchView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (android.os.Build.VERSION.SDK_INT > 19 && (ToqApplication.getDeviceType() == 0 || ToqApplication.getDeviceType() == 2))
        {
            setTrackResource(0x106000d);
            setBackground(ToqApplication.getAppContext().getResources().getDrawable(0x7f020129));
        }
    }
}
