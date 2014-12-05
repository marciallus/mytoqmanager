// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;

public class ImageShareAdapter extends CursorAdapter
{

    public ImageShareAdapter(Context context, Cursor cursor, int i)
    {
        super(context, cursor, i);
    }

    public void bindView(View view, Context context, Cursor cursor)
    {
        int i = cursor.getColumnIndex("_data");
        int j = cursor.getColumnIndex("_display_name");
        String s = cursor.getString(i);
        String s1 = cursor.getString(j);
        Log.d("ImageList", (new StringBuilder()).append("Path:   ").append(s).toString());
        Bitmap bitmap = BitmapFactory.decodeFile(s);
        if (view != null)
        {
            ((ImageView)view.findViewById(0x7f0901d5)).setImageBitmap(Bitmap.createScaledBitmap(bitmap, 120, 120, false));
            ((TextView)view.findViewById(0x7f0901d6)).setText(s1);
            view.setTag(s);
        }
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewgroup)
    {
        return LayoutInflater.from(context).inflate(0x7f030034, null, false);
    }
}
