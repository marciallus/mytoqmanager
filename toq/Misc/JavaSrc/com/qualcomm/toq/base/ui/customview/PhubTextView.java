// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.customview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.ToqData;

public class PhubTextView extends TextView
{

    private Resources mResources;
    private TypedArray mTypedArray;

    public PhubTextView(Context context)
    {
        super(context);
    }

    public PhubTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        if (context != null && attributeset != null)
        {
            mTypedArray = context.obtainStyledAttributes(attributeset, com.qualcomm.toq.R.styleable.custom_text_view, 0, 0);
            if (mTypedArray != null)
            {
                String s = mTypedArray.getString(0);
                mTypedArray.recycle();
                init(s, context);
            }
        }
    }

    public PhubTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        if (context != null && attributeset != null)
        {
            mTypedArray = context.obtainStyledAttributes(attributeset, com.qualcomm.toq.R.styleable.custom_text_view, 0, 0);
            if (mTypedArray != null)
            {
                String s = mTypedArray.getString(0);
                mTypedArray.recycle();
                init(s, context);
            }
        }
    }

    public void init(String s, Context context)
    {
        mResources = ToqApplication.getAppContext().getResources();
        if (mResources != null && s != null)
            if (s.equalsIgnoreCase(mResources.getString(0x7f0a001e)))
            {
                if (ToqData.getInstance().getLightTypeFace() != null)
                    setTypeface(ToqData.getInstance().getLightTypeFace());
            } else
            if (s.equalsIgnoreCase(mResources.getString(0x7f0a001f)))
            {
                if (ToqData.getInstance().getMediumTypeFace() != null)
                {
                    setTypeface(ToqData.getInstance().getMediumTypeFace());
                    return;
                }
            } else
            if (s.equalsIgnoreCase(mResources.getString(0x7f0a0020)))
            {
                if (ToqData.getInstance().getThinTypeFace() != null)
                {
                    setTypeface(ToqData.getInstance().getThinTypeFace());
                    return;
                }
            } else
            if (s.equalsIgnoreCase(mResources.getString(0x7f0a0021)) && ToqData.getInstance().getRegularTypeFace() != null)
            {
                setTypeface(ToqData.getInstance().getRegularTypeFace());
                return;
            }
    }
}
