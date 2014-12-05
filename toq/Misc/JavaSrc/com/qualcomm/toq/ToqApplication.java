// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq;

import android.app.Application;
import android.content.*;
import android.content.res.Configuration;
import android.os.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ProjectConfig;
import com.qualcomm.toq.smartwatch.logger.ToqLogger;
import com.qualcomm.toq.smartwatch.logger.ToqLoggerFactory;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;

public class ToqApplication extends Application
{

    private static final String GENERIC_LOGGER_IMPL_PACKAGE_NAME = "com.qualcomm.toq.smartwatch.logger.GenericToqLoggerImpl";
    private static final String TAG = "ToqApplication";
    private static final String USAGE_LOGGER_IMPL_PACKAGE_NAME = "com.qualcomm.toq.smartwatch.logger.UsageToqLoggerImpl";
    private static Context myContext = null;
    private static int sDeviceType;
    BroadcastReceiver mExternalStorageReceiver;


    public static Context getAppContext()
    {
        return myContext;
    }

    public static int getDeviceType()
    {
        if (sDeviceType == -1)
            return sDeviceType;
        String s = myContext.getString(0x7f0a0004);
        sDeviceType = -1;
        if (s != null)
            if (s.equals("toq"))
                sDeviceType = 0;
            else
            if (s.equals("earpiece"))
                sDeviceType = 1;
            else
            if (s.equals("toq_earpiece"))
                sDeviceType = 2;
        return sDeviceType;
    }

    private void setProjectConfig()
    {
        ProjectConfig projectconfig = ProjectConfig.getProjectConfig();
        projectconfig.setAPKVariant(getString(0x7f0a0003));
        projectconfig.setConnectionType(getString(0x7f0a0000));
        projectconfig.setPackerType(getString(0x7f0a0001));
        projectconfig.setBambooBuildNumber(getString(0x7f0a0002));
        projectconfig.setBuildType(getString(0x7f09011b));
        projectconfig.setTransferType(getString(0x7f0a0005));
    }

    private void startWatchingExternalStorage()
    {
        mExternalStorageReceiver = new BroadcastReceiver() {

            final ToqApplication this$0;

            public void onReceive(Context context, Intent intent)
            {
                initializeLoggers();
            }

            
            {
                this$0 = ToqApplication.this;
                super();
            }
        }
;
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentfilter.addAction("android.intent.action.MEDIA_REMOVED");
        registerReceiver(mExternalStorageReceiver, intentfilter);
    }

    public String getPackageName()
    {
        Log.d("ToqApplication", (new StringBuilder()).append("Application Package Name: ").append(super.getPackageName()).toString());
        return super.getPackageName();
    }

    public void initializeLoggers()
    {
        ToqLoggerFactory toqloggerfactory = ToqLoggerFactory.getInstance();
        toqloggerfactory.resetLoggerConfiguration();
        toqloggerfactory.configureLogger("usage_log");
        if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            toqloggerfactory.configureLogger("generic_log");
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        Log.d("ToqApplication", "Device Configuration has changed");
        AndroidUtils.getAndroidUtils().updateToqLanguage();
    }

    public void onCreate()
    {
        super.onCreate();
        myContext = getApplicationContext();
        try
        {
            setProjectConfig();
        }
        catch (Exception exception)
        {
            Log.e("ToqApplication", "Unable to parse property.xml");
            exception.printStackTrace();
        }
        AndroidUtils.getAndroidUtils().deleteOldLogFiles();
        initializeLoggers();
        startWatchingExternalStorage();
        if (getDeviceType() == 0)
        {
            HandlerThread handlerthread = new HandlerThread("ToqApplication");
            handlerthread.start();
            (new Handler(handlerthread.getLooper())).post(new Runnable() {

                final ToqApplication this$0;

                public void run()
                {
                    ToqLogger toqlogger = ToqLoggerFactory.getInstance().getLoggerInstance("usage_log");
                    if (toqlogger != null)
                    {
                        toqlogger.init();
                        toqlogger.autoUploadLogs();
                        Log.printUsageLog("ToqApplication", "ToqApplication is created");
                    }
                    Looper.myLooper().quit();
                }

            
            {
                this$0 = ToqApplication.this;
                super();
            }
            }
);
        }
        Log.d("ToqApplication", "onCreate of ToqApplication");
        AndroidUtils.getAndroidUtils().updateToqLanguage();
    }

    public void onTerminate()
    {
        super.onTerminate();
    }

    public void onTrimMemory(int i)
    {
        String s = "";
        if (i != 40) goto _L2; else goto _L1
_L1:
        s = "TRIM_MEMORY_BACKGROUND";
_L4:
        Log.printUsageLog("ToqApplication", (new StringBuilder()).append("onTrimMemory() called: ").append(s).append(" = ").append(i).toString());
        Log.d("ToqApplication", (new StringBuilder()).append("onTrimMemory() called: ").append(s).append(" = ").append(i).toString());
        if ((i < 5 || i > 15) && i != 80)
            break MISSING_BLOCK_LABEL_266;
        Log.printUsageLog("ToqApplication", (new StringBuilder()).append("onTrimMemory(): Native Heap used: ").append(Debug.getNativeHeapSize()).toString());
        Log.printUsageLog("ToqApplication", (new StringBuilder()).append("onTrimMemory(): Native Heap free: ").append(Debug.getNativeHeapFreeSize()).toString());
        Log.printUsageLog("ToqApplication", (new StringBuilder()).append("onTrimMemory(): Native Heap allocated: ").append(Debug.getNativeHeapAllocatedSize()).toString());
        Log.printUsageLog("ToqApplication", (new StringBuilder()).append("onTrimMemory(): Run time Heap used: ").append(Runtime.getRuntime().totalMemory()).toString());
        Log.printUsageLog("ToqApplication", (new StringBuilder()).append("onTrimMemory(): Run time Heap free: ").append(Runtime.getRuntime().freeMemory()).toString());
        Log.printUsageLog("ToqApplication", (new StringBuilder()).append("onTrimMemory(): Run time Heap max memory: ").append(Runtime.getRuntime().maxMemory()).toString());
        return;
_L2:
        if (i == 80)
            s = "TRIM_MEMORY_COMPLETE";
        else
        if (i == 60)
            s = "TRIM_MEMORY_MODERATE";
        else
        if (i == 15)
            s = "TRIM_MEMORY_RUNNING_CRITICAL";
        else
        if (i == 10)
            s = "TRIM_MEMORY_RUNNING_LOW";
        else
        if (i == 5)
            s = "TRIM_MEMORY_RUNNING_MODERATE";
        else
        if (i == 20)
            s = "TRIM_MEMORY_UI_HIDDEN";
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        Log.e("ToqApplication", "Exception dumping heap data");
        exception.printStackTrace();
        return;
    }

    static 
    {
        try
        {
            Log.d("ToqApplication", "Registering the loggers for the logger factory");
            Class.forName("com.qualcomm.toq.smartwatch.logger.GenericToqLoggerImpl");
            Class.forName("com.qualcomm.toq.smartwatch.logger.UsageToqLoggerImpl");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            Log.d("ToqApplication", (new StringBuilder()).append("Exception occured while registering the loggers").append(classnotfoundexception.toString()).toString());
        }
    }
}
