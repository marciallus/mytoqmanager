// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

public class PhubEditTextView extends EditText
{

    public PhubEditTextView(Context context)
    {
        super(context);
    }

    public PhubEditTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public PhubEditTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        InputConnection inputconnection = super.onCreateInputConnection(editorinfo);
        int i = 0xff & editorinfo.imeOptions;
        if ((i & 6) != 0)
        {
            editorinfo.imeOptions = i ^ editorinfo.imeOptions;
            editorinfo.imeOptions = 6 | editorinfo.imeOptions;
        }
        if ((0x40000000 & editorinfo.imeOptions) != 0)
            editorinfo.imeOptions = 0xbfffffff & editorinfo.imeOptions;
        return inputconnection;
    }
}
