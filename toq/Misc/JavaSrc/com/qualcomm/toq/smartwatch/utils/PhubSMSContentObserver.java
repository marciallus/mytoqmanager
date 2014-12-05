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
import com.qualcomm.toq.smartwatch.controller.SMSController;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import java.util.Timer;
import java.util.TimerTask;

public class PhubSMSContentObserver extends ContentObserver
{
    public class smsTask extends TimerTask
    {

        final PhubSMSContentObserver this$0;

        public void run()
        {
label0:
            {
label1:
                {
                    if (CommHubController.getCommHubController() != null && ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
                    {
                        ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
                        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null || toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) != 3)
                            break label0;
                        Log.d("PhubSMSContentObserver", "storeCommHubToFile() called from PhubSMSContentObserver");
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
            Log.d("PhubSMSContentObserver", "Phone is not in Connected State with WD");
        }

        public smsTask()
        {
            this$0 = PhubSMSContentObserver.this;
            super();
        }
    }


    private static final String TAG = "PhubSMSContentObserver";
    private Timer counter;

    public PhubSMSContentObserver(Handler handler)
    {
        super(handler);
    }

    public boolean deliverSelfNotifications()
    {
        return true;
    }

    public void onChange(boolean flag)
    {
        super.onChange(flag);
        Log.d("PhubSMSContentObserver", (new StringBuilder()).append("PhubSMSContentObserver onChange() called, selfChange = ").append(flag).toString());
        SMSController.getSMSController().checkSMSNotification();
        if (counter != null)
        {
            counter.cancel();
            counter = null;
        }
        counter = new Timer();
        counter.schedule(new smsTask(), 2000L);
        Log.d("SMSController", "SMS counter scheduled for 2000 milliseconds");
    }
}
