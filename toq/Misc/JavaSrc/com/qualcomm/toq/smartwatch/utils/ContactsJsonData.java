// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import org.json.JSONObject;

public class ContactsJsonData
{

    private String mDisplayName;
    private JSONObject mSingleRecord;


    public String getmDisplayName()
    {
        return mDisplayName;
    }

    public JSONObject getmSingleRecord()
    {
        return mSingleRecord;
    }

    public void setmDisplayName(String s)
    {
        mDisplayName = s;
    }

    public void setmSingleRecord(JSONObject jsonobject)
    {
        mSingleRecord = jsonobject;
    }
}
