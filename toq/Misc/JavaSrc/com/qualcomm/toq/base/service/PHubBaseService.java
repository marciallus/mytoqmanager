// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ProjectConfig;

public class PHubBaseService extends Service
{

    private static final String TAG = "PHubBaseService";
    public static boolean isPHubBaseServiceRunning = false;
    public static boolean isStopCalledOnUnpair = false;
    protected Context mAppContext;
    private ConnectionFactory mConnectionFactory;

    public PHubBaseService()
    {
        mConnectionFactory = null;
    }

    private void printProjectInfo(ProjectConfig projectconfig)
    {
        Log.e("PHubBaseService", (new StringBuilder()).append("Bamboo Build Number = ").append(projectconfig.getBambooBuildNumber()).toString());
        Log.e("manufacturer: ", Build.MANUFACTURER);
        Log.e("Board: ", Build.BOARD);
        Log.e("BRAND: ", Build.BRAND);
        Log.e("DEVICE: ", Build.DEVICE);
        Log.e("DISPLAY: ", Build.DISPLAY);
        Log.e("FINGERPRINT: ", Build.FINGERPRINT);
        Log.e("HARDWARE: ", Build.HARDWARE);
        Log.e("HOST: ", Build.HOST);
        Log.e("ID: ", Build.ID);
        Log.e("MODEL: ", Build.MODEL);
        Log.e("PRODUCT: ", Build.PRODUCT);
        Log.e("USER: ", Build.USER);
    }

    protected void endBaseFactoryObjects()
    {
        Log.d("PHubBaseService", (new StringBuilder()).append("PHubBaseService endBaseFactoryObjects() ToqApplication.getDeviceType() = ").append(ToqApplication.getDeviceType()).toString());
        if (ToqApplication.getDeviceType() == 2)
        {
            Log.d("PHubBaseService", "disassociating only watch endPoint");
            ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
            if (connectionfactory != null)
            {
                com.qualcomm.toq.base.endpoint.IEndPoint iendpoint = connectionfactory.getEndPoint(0);
                if (iendpoint != null)
                {
                    BTConnectionManager btconnectionmanager = BTConnectionManager.getConnectionManager(connectionfactory.getContext());
                    if (btconnectionmanager != null)
                        btconnectionmanager.destroyEndPoint(iendpoint, false);
                }
                connectionfactory.setEndPoint(0, null);
            } else
            {
                Log.d("PHubBaseService", "ConnectionFactory.getConnectionFactory() is null");
                return;
            }
        } else
        if (mConnectionFactory != null)
        {
            mConnectionFactory.finalizeConnMgr();
            mConnectionFactory = null;
            return;
        }
    }

    protected ConnectionFactory getConnectionFactory()
    {
        return mConnectionFactory;
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        Log.d("PHubBaseService", "PHubBaseService onCreate().");
        isPHubBaseServiceRunning = true;
        mAppContext = ToqApplication.getAppContext();
        setProjectConfig();
        startBaseFactoryObjects();
        Log.printUsageLog("PHubBaseService", "PHubBase Service instance created");
    }

    public void onDestroy()
    {
        super.onDestroy();
        Log.d("PHubBaseService", "PHubBaseService onDestroy()");
        Log.printUsageLog("PHubBaseService", "PHubBase Service onDestroy");
        isPHubBaseServiceRunning = false;
        endBaseFactoryObjects();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.d("PHubBaseService", (new StringBuilder()).append("PHubBaseService onStartCommand(). this-> ").append(this).append("   startId: ").append(j).toString());
        return 1;
    }

    public void resetConnectionEndpoint(int i)
        throws RemoteException
    {
label0:
        {
            if (mConnectionFactory != null)
            {
                if (mConnectionFactory.getConnManager() == null)
                    break label0;
                mConnectionFactory.getConnManager().resetEndPointConnection(i, true);
            }
            return;
        }
        Log.d("PHubBaseService", "resetConnectionEndpoint(): mConnectionFactory.getConnManager() is null");
    }

    public void setProjectConfig()
    {
        printProjectInfo(ProjectConfig.getProjectConfig());
    }

    protected void startBaseFactoryObjects()
    {
        Log.d("PHubBaseService", "PHubBaseService startBaseFactoryObjects()");
        if (mConnectionFactory == null)
        {
            mConnectionFactory = ConnectionFactory.getConnectionFactory();
            mConnectionFactory.initiateConnection(mAppContext, 0);
        }
    }

}
