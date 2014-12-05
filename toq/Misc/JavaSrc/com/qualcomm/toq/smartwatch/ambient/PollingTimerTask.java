// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.AmbientController;
import java.util.Date;
import java.util.TimerTask;

public class PollingTimerTask extends TimerTask
{

    private AmbientController controller;

    public PollingTimerTask(AmbientController ambientcontroller)
    {
        controller = ambientcontroller;
    }

    public void run()
    {
label0:
        {
            Log.d("Ambient", "PollingTimerTask run() called ");
            if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
            {
                if (controller == null)
                    break label0;
                Log.e("Ambient", (new StringBuilder()).append(controller.TAG).append("PollingTimerTask Starting Polling @   ").append(new Date()).toString());
                Log.printUsageLog("Ambient", (new StringBuilder()).append(controller.TAG).append("PollingTimerTask Starting Polling @  ").append(new Date()).toString());
                controller.processAmbientTask(1);
            }
            return;
        }
        Log.e("Ambient", "!!! PollingTimerTask AmbientController == null !!!");
    }
}
