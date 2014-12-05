// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.connectionlistener.mock;

import android.content.SharedPreferences;
import com.qualcomm.toq.base.connectionlistener.IConnectionListener;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.utils.ToqData;

public class MockConnectionListener
    implements IConnectionListener
{

    IConnectionManager connectionManager;
    IEndPoint endPoint;

    public MockConnectionListener(IEndPoint iendpoint, IConnectionManager iconnectionmanager)
    {
        endPoint = iendpoint;
        connectionManager = iconnectionmanager;
    }

    public void connect(String s)
    {
        if (endPoint != null)
            (new Thread() {

                final MockConnectionListener this$0;

                public void run()
                {
                    try
                    {
                        Thread.sleep(100L);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                    connectionManager.connectionStateChange(endPoint, 3);
                }

            
            {
                this$0 = MockConnectionListener.this;
                super();
            }
            }
).start();
    }

    public void disconnect()
    {
    }

    public boolean isWDDeviceAssociated(String s)
    {
        return !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") || ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", "").equalsIgnoreCase(s);
    }

    public void read(byte abyte0[])
    {
        connectionManager.receiveData(abyte0, endPoint);
    }

    public void startSPPServer()
    {
    }

    public void stopConnectionListener()
    {
        connectionManager.connectionStateChange(endPoint, 0);
    }

    public void write(byte abyte0[])
    {
    }

    public void writeFile(String s, String s1)
    {
    }
}
