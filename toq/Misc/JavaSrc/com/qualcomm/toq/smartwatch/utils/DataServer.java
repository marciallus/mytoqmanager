// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import com.qualcomm.toq.base.utils.Log;
import java.io.*;
import java.net.*;
import java.util.concurrent.Callable;

public class DataServer
    implements Callable
{

    private final String TAG = "DataServer";
    HttpURLConnection mConn;
    private String mQueryUrl;
    StringBuilder mResponseData;

    public DataServer(String s)
    {
        mQueryUrl = s;
    }

    public volatile Object call()
        throws Exception
    {
        return call();
    }

    public String call()
        throws Exception
    {
        InputStreamReader inputstreamreader = null;
        InputStreamReader inputstreamreader1;
        mConn = (HttpURLConnection)(new URL(mQueryUrl)).openConnection();
        mConn.setConnectTimeout(0x13880);
        Log.d("DataServer", (new StringBuilder()).append("URL: ").append(mQueryUrl).toString());
        inputstreamreader1 = new InputStreamReader(mConn.getInputStream());
        StringBuilder stringbuilder;
        char ac[];
        stringbuilder = new StringBuilder();
        ac = new char[1024];
_L3:
        int i = inputstreamreader1.read(ac);
        if (i == -1) goto _L2; else goto _L1
_L1:
        stringbuilder.append(ac, 0, i);
          goto _L3
        MalformedURLException malformedurlexception;
        malformedurlexception;
        inputstreamreader = inputstreamreader1;
_L13:
        Log.e("DataServer", "Error processing Stock API URL", malformedurlexception);
        if (mConn != null)
        {
            mConn.disconnect();
            mConn = null;
        }
        if (inputstreamreader != null)
            inputstreamreader.close();
        return null;
_L2:
        String s;
        Log.d("DataServer", (new StringBuilder()).append("responseData:  ").append(stringbuilder.toString()).toString());
        inputstreamreader1.close();
        s = stringbuilder.toString();
        if (mConn != null)
        {
            mConn.disconnect();
            mConn = null;
        }
        Exception exception;
        Exception exception1;
        IOException ioexception;
        FileNotFoundException filenotfoundexception;
        Exception exception2;
        if (inputstreamreader1 != null)
        {
            inputstreamreader1.close();
            return s;
        } else
        {
            return s;
        }
        filenotfoundexception;
_L11:
        Log.e("DataServer", "Not able to retreive file through Stock API", filenotfoundexception);
        if (mConn != null)
        {
            mConn.disconnect();
            mConn = null;
        }
        if (inputstreamreader != null)
            inputstreamreader.close();
        return null;
        ioexception;
_L9:
        Log.e("DataServer", "Error connecting to Stock API", ioexception);
        if (mConn != null)
        {
            mConn.disconnect();
            mConn = null;
        }
        if (inputstreamreader != null)
            inputstreamreader.close();
        return null;
        exception1;
_L7:
        if (mConn != null)
        {
            mConn.disconnect();
            mConn = null;
        }
        if (inputstreamreader != null)
            inputstreamreader.close();
        return null;
        exception;
_L5:
        if (mConn != null)
        {
            mConn.disconnect();
            mConn = null;
        }
        if (inputstreamreader != null)
            inputstreamreader.close();
        throw exception;
        exception;
        inputstreamreader = inputstreamreader1;
        if (true) goto _L5; else goto _L4
_L4:
        exception2;
        inputstreamreader = inputstreamreader1;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception;
        inputstreamreader = inputstreamreader1;
        if (true) goto _L9; else goto _L8
_L8:
        filenotfoundexception;
        inputstreamreader = inputstreamreader1;
        if (true) goto _L11; else goto _L10
_L10:
        malformedurlexception;
        inputstreamreader = null;
        if (true) goto _L13; else goto _L12
_L12:
    }
}
