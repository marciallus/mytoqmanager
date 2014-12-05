// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Typeface;
import com.qualcomm.toq.ToqApplication;

public class ToqData
{

    private static SharedPreferences mDevicePreferences = null;
    private static ToqData mInstance = null;
    private static Typeface mLightTypeFace = null;
    private static Typeface mMediumTypeFace = null;
    private static Typeface mRegularTypeFace = null;
    private static Typeface mThinTypeFace = null;
    private static Typeface qcomBoldTypeFace = null;
    private static Typeface qcomLightTypeFace = null;
    private static Typeface qcomRegularTypeFace = null;
    private static Typeface qcomSemiboldTypeFace = null;

    private ToqData()
    {
    }

    public static ToqData getInstance()
    {
        if (mInstance == null)
            mInstance = new ToqData();
        return mInstance;
    }

    public SharedPreferences getAssociatedDevicePrefs()
    {
        if (mDevicePreferences == null)
            mDevicePreferences = ToqApplication.getAppContext().getSharedPreferences("associated_device_pref", 0);
        return mDevicePreferences;
    }

    public Typeface getLightTypeFace()
    {
        if (mLightTypeFace == null)
            mLightTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0065));
        return mLightTypeFace;
    }

    public Typeface getMediumTypeFace()
    {
        if (mMediumTypeFace == null)
            mMediumTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0066));
        return mMediumTypeFace;
    }

    public Typeface getQcomBoldTypeFace()
    {
        if (qcomBoldTypeFace == null)
            qcomBoldTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a005f));
        return qcomBoldTypeFace;
    }

    public Typeface getQcomLightTypeFace()
    {
        if (qcomLightTypeFace == null)
            qcomLightTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0061));
        return qcomLightTypeFace;
    }

    public Typeface getQcomRegularTypeFace()
    {
        if (qcomRegularTypeFace == null)
            qcomRegularTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0060));
        return qcomRegularTypeFace;
    }

    public Typeface getQcomSemiboldTypeFace()
    {
        if (qcomSemiboldTypeFace == null)
            qcomSemiboldTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0062));
        return qcomSemiboldTypeFace;
    }

    public Typeface getRegularTypeFace()
    {
        if (mRegularTypeFace == null)
            mRegularTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0064));
        return mRegularTypeFace;
    }

    public Typeface getThinTypeFace()
    {
        if (mThinTypeFace == null)
            mThinTypeFace = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0063));
        return mThinTypeFace;
    }

}
