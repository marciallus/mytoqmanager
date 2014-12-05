// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.database.ContentObserver;
import android.os.Handler;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.CommHubController;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;

public class PhubCallLogContentObserver extends ContentObserver
{

    private static final String TAG = "CommHubController";

    public PhubCallLogContentObserver(Handler handler)
    {
        super(handler);
    }

    public boolean deliverSelfNotifications()
    {
        return true;
    }

    public void onChange(boolean flag)
    {
label0:
        {
label1:
            {
                super.onChange(flag);
                Log.d("CommHubController", (new StringBuilder()).append("PhubCallLogContentObserver onChange() called, selfChange = ").append(flag).toString());
                if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null && CommHubController.getCommHubController() != null)
                {
                    ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
                    if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null || toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) != 3)
                        break label0;
                    Log.d("CommHubController", "storeCommHubToFile() called from PhubCallLogContentObserver");
                    if (CommHubController.getCommHubController().bCommHubStoreCreation)
                        break label1;
                    CommHubController.getCommHubController().bCommHubStoreCreation = true;
                    CommHubController.getCommHubController().storeCommHubToFile();
                }
                return;
            }
            CommHubController.getCommHubController().bCommHubStoreUpdateCalled = true;
            return;
        }
        Log.d("CommHubController", "Phone is not in Connected State with WD");
    }
}
