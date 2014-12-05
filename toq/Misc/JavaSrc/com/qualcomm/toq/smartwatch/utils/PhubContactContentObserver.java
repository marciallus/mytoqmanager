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
import com.qualcomm.toq.smartwatch.controller.ContactController;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import java.util.Timer;
import java.util.TimerTask;

public class PhubContactContentObserver extends ContentObserver
{
    public class FileSyncTask extends TimerTask
    {

        final PhubContactContentObserver this$0;

        public void run()
        {
label0:
            {
label1:
                {
                    Log.d("ContactController", "PhubContactContentObserver: Timer Task Completed");
                    if (ConnectionFactory.getConnectionFactory() != null)
                    {
                        ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
                        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null || toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) != 3)
                            break label0;
                        if (ContactController.getContactController().bContactStoreCreation)
                            break label1;
                        Log.d("ContactController", "PhubContactContentObserver: No Contact Store Creation is In-Progress. Updating the Contact Store");
                        ContactController.getContactController().bContactStoreCreation = true;
                        ContactController.getContactController().storePhoneContactsToFile();
                    }
                    return;
                }
                Log.d("ContactController", "PhubContactContentObserver: Already Contact Store Creation is In-Progress. Wait for Contact Store creation");
                ContactController.getContactController().bContactContentObserverCalled = true;
                return;
            }
            Log.d("ContactController", "Phone is not in Connected State with WD");
        }

        public FileSyncTask()
        {
            this$0 = PhubContactContentObserver.this;
            super();
        }
    }


    private static final String TAG = "ContactController";
    public static boolean isCallLogsUpdated = false;
    public static boolean isOnChangeCalled = true;
    private Timer counter;

    public PhubContactContentObserver(Handler handler)
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
        Log.d("ContactController", (new StringBuilder()).append("PhubContactContentObserver onChange() called, selfChange = ").append(flag).append("call log change").append(isCallLogsUpdated).toString());
        isOnChangeCalled = true;
        if (counter != null)
        {
            counter.cancel();
            counter = null;
        }
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null && ContactController.getContactController() != null)
        {
            ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null && toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) == 3)
                ContactController.getContactController().storeUpdatePhoneContactsForRecentComms();
            else
                Log.d("ContactController", "Phone is not in Connected State with WD");
        }
        if (isCallLogsUpdated)
        {
            Log.e("ContactController", "Only call log change");
            isCallLogsUpdated = false;
            return;
        } else
        {
            counter = new Timer();
            counter.schedule(new FileSyncTask(), 2000L);
            Log.d("ContactController", "PhubContactContentObserver: counter scheduled for 2000 milliseconds");
            return;
        }
    }

}
