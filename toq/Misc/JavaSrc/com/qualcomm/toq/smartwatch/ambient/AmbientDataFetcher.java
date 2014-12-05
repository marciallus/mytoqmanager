// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class AmbientDataFetcher
{

    private static AmbientDataFetcher inst;

    private AmbientDataFetcher()
    {
    }

    public static AmbientDataFetcher getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new AmbientDataFetcher();
        com/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String processAmbientDataFetchRequest(String s)
    {
        DefaultHttpClient defaulthttpclient;
        HttpGet httpget;
        BasicResponseHandler basicresponsehandler;
        String s1;
        Log.d("Ambient", (new StringBuilder()).append("AmbientDataFetcher-processAmbientDataFetchRequest ambient URL=").append(s).toString());
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 5000);
        defaulthttpclient = new DefaultHttpClient(basichttpparams);
        if (s == null)
            break MISSING_BLOCK_LABEL_355;
        httpget = new HttpGet(s);
        if (s.contains("https://api.etrade.com"))
            httpget.addHeader("ConsumerKey", "f9269f0dbe43320e8143305cd0afdcfa");
        basicresponsehandler = new BasicResponseHandler();
        s1 = null;
        if (defaulthttpclient == null)
            break MISSING_BLOCK_LABEL_157;
        s1 = null;
        if (httpget == null)
            break MISSING_BLOCK_LABEL_157;
        s1 = null;
        if (basicresponsehandler == null)
            break MISSING_BLOCK_LABEL_157;
        s1 = (String)defaulthttpclient.execute(httpget, basicresponsehandler);
        Log.d("Ambient", (new StringBuilder()).append("AmbientDataFetcher-processAmbientDataFetchRequest Response:").append(s1).toString());
        if (defaulthttpclient != null && defaulthttpclient.getConnectionManager() != null)
            defaulthttpclient.getConnectionManager().shutdown();
_L2:
        return s1;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        Log.e("Ambient", (new StringBuilder()).append("!!!AmbientDataFetcher-processAmbientDataFetchRequest Unble to fetch data ClientProtocolException").append(clientprotocolexception).toString());
        if (defaulthttpclient == null || defaulthttpclient.getConnectionManager() == null) goto _L2; else goto _L1
_L1:
        defaulthttpclient.getConnectionManager().shutdown();
        return s1;
        IOException ioexception;
        ioexception;
        Log.e("Ambient", (new StringBuilder()).append("!!!AmbientDataFetcher-processAmbientDataFetchRequest Unble to fetch data IOException").append(ioexception).toString());
        if (defaulthttpclient == null || defaulthttpclient.getConnectionManager() == null) goto _L2; else goto _L3
_L3:
        defaulthttpclient.getConnectionManager().shutdown();
        return s1;
        Exception exception1;
        exception1;
        Log.e("Ambient", (new StringBuilder()).append("!!!AmbientDataFetcher-processAmbientDataFetchRequest Unble to fetch data Exception").append(exception1).toString());
        if (defaulthttpclient == null || defaulthttpclient.getConnectionManager() == null) goto _L2; else goto _L4
_L4:
        defaulthttpclient.getConnectionManager().shutdown();
        return s1;
        Exception exception;
        exception;
        if (defaulthttpclient != null && defaulthttpclient.getConnectionManager() != null)
            defaulthttpclient.getConnectionManager().shutdown();
        throw exception;
        Log.e("Ambient", "!!!AmbientDataFetcher-processAmbientDataFetchRequest! Unble to fetch data URL is null");
        return null;
    }
}
