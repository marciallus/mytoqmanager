// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.graphics.Bitmap;

public class CityClockImageRepo
{

    private Bitmap mWeatherConditionImage[];
    private Bitmap mWeatherHourTempImage[];


    public CityClockImageRepo(int i)
    {
        mWeatherConditionImage = new Bitmap[i];
        mWeatherHourTempImage = new Bitmap[i];
    }

    public Bitmap[] getWeatherConditionImage()
    {
        return mWeatherConditionImage;
    }

    public Bitmap[] getWeatherHourTempImage()
    {
        return mWeatherHourTempImage;
    }

    public void setWeatherConditionImage(Bitmap abitmap[])
    {
        mWeatherConditionImage = abitmap;
    }

    public void setWeatherHourTempImage(Bitmap abitmap[])
    {
        mWeatherHourTempImage = abitmap;
    }
}
