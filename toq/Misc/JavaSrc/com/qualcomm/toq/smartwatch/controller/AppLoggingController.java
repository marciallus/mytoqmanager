// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.utils.Log;
import java.io.UnsupportedEncodingException;

public class AppLoggingController extends DefaultController
{

    private static final int DEBUG = 5;
    private static final int ERROR = 2;
    private static final int FATAL = 1;
    private static final int INFO = 4;
    private static final int OFF = 0;
    private static final int VERBOSE = 6;
    private static final int WARN = 3;
    private static AppLoggingController inst;


    private String extractMessage(byte abyte0[])
        throws UnsupportedEncodingException
    {
        byte byte0 = abyte0[0];
        byte abyte1[] = new byte[-1 + (-1 + (-1 + (abyte0.length - byte0)))];
        if (abyte1.length > 0)
            System.arraycopy(abyte0, 1 + (byte0 + 1), abyte1, 0, abyte1.length);
        return new String(abyte1, "UTF-8");
    }

    private String extractPackageName(byte abyte0[])
        throws UnsupportedEncodingException
    {
        byte byte0 = abyte0[0];
        byte abyte1[] = new byte[byte0 - 1];
        System.arraycopy(abyte0, 1, abyte1, 0, byte0 - 1);
        return new String(abyte1, "UTF-8");
    }

    private int extractPriority(byte abyte0[])
    {
        return abyte0[1 + abyte0[0]];
    }

    public static AppLoggingController getAppLoggingController()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/controller/AppLoggingController;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new AppLoggingController();
        com/qualcomm/toq/smartwatch/controller/AppLoggingController;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/controller/AppLoggingController;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        try
        {
            throw new UnsupportedOperationException("Payload is null");
        }
        catch (Exception exception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("AppLoggingController.handleConnHandlerMessage - unable to process incoming log message, payload: ").append(obj).toString(), exception);
        }
_L4:
        return;
_L2:
        String s;
        int i1;
        String s1;
        if (!(obj instanceof byte[]))
            throw new UnsupportedOperationException((new StringBuilder()).append("Payload not byte[], unsupported type, payload: ").append(obj).toString());
        byte abyte0[] = (byte[])(byte[])obj;
        s = extractPackageName(abyte0);
        i1 = extractPriority(abyte0);
        s1 = extractMessage(abyte0);
        i1;
        JVM INSTR tableswitch 0 6: default 156
    //                   0 42
    //                   1 201
    //                   2 201
    //                   3 192
    //                   4 183
    //                   5 174
    //                   6 165;
           goto _L3 _L4 _L5 _L5 _L6 _L7 _L8 _L9
_L3:
        android.util.Log.d(s, s1);
        return;
_L9:
        android.util.Log.v(s, s1);
        return;
_L8:
        android.util.Log.d(s, s1);
        return;
_L7:
        android.util.Log.i(s, s1);
        return;
_L6:
        android.util.Log.w(s, s1);
        return;
_L5:
        android.util.Log.e(s, s1);
        return;
    }
}
