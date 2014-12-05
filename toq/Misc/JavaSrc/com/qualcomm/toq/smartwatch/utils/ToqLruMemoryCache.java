// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.LruCache;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;

public class ToqLruMemoryCache extends LruCache
{

    public ToqLruMemoryCache(int i)
    {
        super(i);
    }

    public void addDrawableToMemoryCache(String s)
    {
        if (getDrawableFromMemCache(s) == null)
            Log.e("LruCache", "Error unable to add addDrawableToMemoryCache");
    }

    public void addDrawableToMemoryCache(String s, int i, int j)
    {
        if ((Drawable)get(s) == null)
        {
            String s1 = ToqApplication.getAppContext().getResources().getResourcePackageName(0x7f090000);
            int k = ToqApplication.getAppContext().getResources().getIdentifier(s, "drawable", s1);
            Bitmap bitmap = BitmapFactory.decodeResource(ToqApplication.getAppContext().getResources(), k);
            if (bitmap != null)
            {
                int l = bitmap.getWidth();
                int i1 = bitmap.getHeight();
                Log.d("LruCache", (new StringBuilder()).append("Inside width = ").append(l).append(", height").append(i1).toString());
                float f = (float)i / (float)l;
                float f1 = (float)j / (float)i1;
                Matrix matrix = new Matrix();
                matrix.postScale(f, f1);
                put(s, new BitmapDrawable(Bitmap.createBitmap(bitmap, 0, 0, l, i1, matrix, true)));
            }
            put(s, new BitmapDrawable(bitmap));
        }
    }

    public Drawable getDrawableFromMemCache(String s)
    {
        Drawable drawable = (Drawable)get(s);
        String s1 = ToqApplication.getAppContext().getResources().getResourcePackageName(0x7f090000);
        if (drawable == null)
        {
            int i = ToqApplication.getAppContext().getResources().getIdentifier(s, "drawable", s1);
            Drawable drawable1 = ToqApplication.getAppContext().getResources().getDrawable(i);
            put(s, drawable1);
            return drawable1;
        } else
        {
            return drawable;
        }
    }

    public void unBindDrawables()
    {
        evictAll();
    }
}
