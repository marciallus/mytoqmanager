// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.connectionmanager.tcp.receiver;

import android.content.*;
import android.os.Handler;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.connectionmanager.tcp.TCPConnectionManager;

public class TCPPHubIntentReceiver extends BroadcastReceiver
{

    private static final String TAG = "TCPPHubIntentReceiver";


    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        Log.d("TCPPHubIntentReceiver", (new StringBuilder()).append("onReceive:").append(s).toString());
        if (Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
        {
            final String address = intent.getStringExtra("endpointaddress");
            if (intent.getIntExtra("state", 0) == 4)
                (new Handler()).postDelayed(new Runnable() {

                    final TCPPHubIntentReceiver this$0;
                    final String val$address;

                    public void run()
                    {
                        TCPConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).connect(address);
                    }

            
            {
                this$0 = TCPPHubIntentReceiver.this;
                address = s;
                super();
            }
                }
, 5000L);
        }
    }
}
