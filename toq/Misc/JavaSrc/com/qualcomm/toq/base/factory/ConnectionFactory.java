// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.factory;

import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.service.PHubBaseService;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;

public class ConnectionFactory
{

    private static final String TAG = "ConnectionFactory";
    private static ConnectionFactory mInstance;
    private IConnectionManager connManager;
    private Context context;
    private IEndPoint epLeftEndPoint;
    private int epLeftVersionState;
    private IEndPoint epRightEndPoint;
    private int epRightVersionState;
    private boolean isEPLeftUpgrade;
    private boolean isEPRightUpgrade;
    private boolean isWDUpgrade;
    private int mode;
    private int transactionID;
    private IEndPoint wdEndPoint;
    private String wdUpgradeFileName;
    private int wdVersionState;

    private ConnectionFactory()
    {
        wdVersionState = 0;
        epLeftVersionState = 0;
        epRightVersionState = 0;
        isWDUpgrade = false;
        isEPLeftUpgrade = false;
        isEPRightUpgrade = false;
        wdUpgradeFileName = "";
        setAppCurrentMode(1);
        transactionID = 0;
    }

    public static ConnectionFactory getConnectionFactory()
    {
        com/qualcomm/toq/base/factory/ConnectionFactory;
        JVM INSTR monitorenter ;
        if (mInstance == null)
            mInstance = new ConnectionFactory();
        com/qualcomm/toq/base/factory/ConnectionFactory;
        JVM INSTR monitorexit ;
        return mInstance;
        Exception exception;
        exception;
        com/qualcomm/toq/base/factory/ConnectionFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int createTransactionID()
    {
        this;
        JVM INSTR monitorenter ;
        if (transactionID != 65535 && transactionID != 0)
            break MISSING_BLOCK_LABEL_32;
        transactionID = 1;
_L1:
        int i = transactionID;
        this;
        JVM INSTR monitorexit ;
        return i;
        transactionID = 1 + transactionID;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    protected void finalize()
    {
        Log.i("final", (new StringBuilder()).append("Finalize:::").append(mInstance).toString());
        try
        {
            super.finalize();
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }

    public void finalizeConnMgr()
    {
        if (connManager != null)
        {
            if (!PHubBaseService.isStopCalledOnUnpair)
            {
                Log.e("PHubBaseService", "StopConnectionManagerCalled from onDestroy");
                connManager.stopConnectionManager();
            } else
            {
                PHubBaseService.isStopCalledOnUnpair = false;
            }
            connManager = null;
        }
        wdEndPoint = null;
    }

    public int getAppCurrentMode()
    {
        return mode;
    }

    public IConnectionManager getConnManager()
    {
        return connManager;
    }

    public Context getContext()
    {
        if (context == null)
            context = ToqApplication.getAppContext();
        return context;
    }

    public boolean getCustomsBuildFlag()
    {
        if (getContext() != null)
            return getContext().getSharedPreferences("app_pref", 0).getBoolean("useCustomsBuild", false);
        else
            return true;
    }

    public IEndPoint getEndPoint(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return epRightEndPoint;

        case 1: // '\001'
            return epLeftEndPoint;

        case 0: // '\0'
            return wdEndPoint;
        }
        return null;
    }

    public IEndPoint getEndPoint(String s)
    {
        if (wdEndPoint != null && wdEndPoint.getAddress() != null && wdEndPoint.getAddress().equalsIgnoreCase(s))
            return wdEndPoint;
        if (epLeftEndPoint != null && epLeftEndPoint.getAddress() != null && epLeftEndPoint.getAddress().equalsIgnoreCase(s))
            return epLeftEndPoint;
        if (epRightEndPoint != null && epRightEndPoint.getAddress() != null && epRightEndPoint.getAddress().equalsIgnoreCase(s))
            return epRightEndPoint;
        else
            return null;
    }

    public String getEndPointFirmwareDate(int i)
    {
        Context context1 = getContext();
        String s = null;
        if (context1 != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            s = null;
            if (sharedpreferences != null)
                s = sharedpreferences.getString((new StringBuilder()).append("ep_firmware_date").append(i).toString(), null);
        }
        return s;
    }

    public String getEndPointFirmwareVersion(int i)
    {
        Context context1 = getContext();
        String s = null;
        if (context1 != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            s = null;
            if (sharedpreferences != null)
                s = sharedpreferences.getString((new StringBuilder()).append("ep_firmware_version").append(i).toString(), null);
        }
        return s;
    }

    public String getEndPointUpgradeFileName(int i)
    {
        switch (i)
        {
        case 0: // '\0'
            return wdUpgradeFileName;

        case 1: // '\001'
        default:
            return "";
        }
    }

    public boolean getEndPointUpgradeState(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return isEPRightUpgrade;

        case 1: // '\001'
            return isEPLeftUpgrade;

        case 0: // '\0'
            return isWDUpgrade;
        }
        return false;
    }

    public int getEndPointVersionState(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return epRightVersionState;

        case 1: // '\001'
            return epLeftVersionState;

        case 0: // '\0'
            return wdVersionState;
        }
        return 0;
    }

    public void initiateConnection(Context context1, int i)
    {
        context = context1;
        if (ToqApplication.getDeviceType() == 0)
            ToqConnectionHandlerImpl.getConnectionHandler().initiateConnectionMgr(context1, i);
        else
        if (ToqApplication.getDeviceType() == 1)
        {
            EPConnectionHandlerImpl.getConnectionHandler().initiateConnectionMgr(context1, i);
            return;
        }
    }

    public void setAppCurrentMode(int i)
    {
        mode = i;
    }

    public void setConnManager(IConnectionManager iconnectionmanager)
    {
        connManager = iconnectionmanager;
    }

    public void setContext(Context context1)
    {
        context = ToqApplication.getAppContext();
    }

    public void setCustomsBuildFlag(boolean flag)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            editor.putBoolean("useCustomsBuild", flag);
            editor.commit();
        }
    }

    public void setEndPoint(int i, IEndPoint iendpoint)
    {
        switch (i)
        {
        case 2: // '\002'
            epRightEndPoint = iendpoint;
            return;

        case 1: // '\001'
            epLeftEndPoint = iendpoint;
            return;

        case 0: // '\0'
            wdEndPoint = iendpoint;
            return;
        }
    }

    public void setEndPointFirmwareDate(int i, String s)
    {
        Log.d("ConnectionFactory", (new StringBuilder()).append("setEndPointFirmwareDate endPointType = ").append(i).append(", firmwareDate = ").append(s).toString());
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            if (sharedpreferences != null)
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putString((new StringBuilder()).append("ep_firmware_date").append(i).toString(), s);
                editor.commit();
            }
        }
    }

    public void setEndPointFirmwareVersion(int i, String s)
    {
        Log.d("ConnectionFactory", (new StringBuilder()).append("setEndPointFirmwareVersion endPointType = ").append(i).append(", firmwareVersion = ").append(s).toString());
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            if (sharedpreferences != null)
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putString((new StringBuilder()).append("ep_firmware_version").append(i).toString(), s);
                editor.commit();
            }
        }
    }

    public void setEndPointUpgradeFileName(int i, String s)
    {
        switch (i)
        {
        case 0: // '\0'
            wdUpgradeFileName = s;
            return;

        case 1: // '\001'
        default:
            return;
        }
    }

    public void setEndPointUpgradeState(int i, boolean flag)
    {
        switch (i)
        {
        case 2: // '\002'
            isEPRightUpgrade = flag;
            return;

        case 1: // '\001'
            isEPLeftUpgrade = flag;
            return;

        case 0: // '\0'
            isWDUpgrade = flag;
            return;
        }
    }

    public void setEndPointVersionState(int i, int j)
    {
        switch (i)
        {
        case 2: // '\002'
            epRightVersionState = j;
            return;

        case 1: // '\001'
            epLeftVersionState = j;
            return;

        case 0: // '\0'
            wdVersionState = j;
            Intent intent = new Intent(Constants.ACTION_ALOHA_STATE_CHANGE);
            intent.putExtra("aloha_state", j);
            getContext().sendBroadcast(intent);
            return;
        }
    }
}
