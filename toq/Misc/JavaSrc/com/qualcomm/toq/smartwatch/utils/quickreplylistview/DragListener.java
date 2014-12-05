// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils.quickreplylistview;

import android.view.View;
import android.widget.ListView;

public interface DragListener
{

    public abstract void onDrag(int i, int j, ListView listview);

    public abstract void onStartDrag(View view);

    public abstract void onStopDrag(View view);
}
