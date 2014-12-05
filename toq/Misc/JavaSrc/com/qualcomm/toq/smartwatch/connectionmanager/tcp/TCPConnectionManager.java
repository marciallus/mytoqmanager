// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.connectionmanager.tcp;

import android.app.Service;
import android.content.*;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import com.qualcomm.toq.base.connectionlistener.IConnectionListener;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.receiver.HandleMessageService;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.connectionlistener.tcp.TCPConnectionListener;
import com.qualcomm.toq.smartwatch.connectionmanager.tcp.receiver.TCPPHubIntentReceiver;
import com.qualcomm.toq.smartwatch.endpoint.tcp.TCPEndPoint;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.util.*;

public class TCPConnectionManager
    implements IConnectionManager
{

    private static final String TAG = "TCPConnectionManager";
    private static TCPConnectionManager mInstance;
    protected IConnectionHandler connectionHandler;
    protected Context localContext;
    private HashMap mEndPointConnectionMap;
    private TCPPHubIntentReceiver phubIntentReceiver;

    protected TCPConnectionManager(Context context)
    {
        mEndPointConnectionMap = null;
        localContext = null;
        mEndPointConnectionMap = new HashMap();
        connectionHandler = ToqConnectionHandlerImpl.getConnectionHandler();
        AndroidUtils.getAndroidUtils().initPhubTCPData();
        phubIntentReceiver = new TCPPHubIntentReceiver();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
        if (context instanceof Service)
            ((Service)context).registerReceiver(phubIntentReceiver, intentfilter);
        localContext = context;
    }

    public static TCPConnectionManager getConnectionManager(Context context)
    {
        if (mInstance == null)
            mInstance = new TCPConnectionManager(context);
        return mInstance;
    }

    public void associatePhoneEPLeft()
    {
    }

    public void associatePhoneEPRight()
    {
    }

    public void associatePhoneWD()
    {
        Log.d("TCPConnectionListener", "associatePhoneWD() called");
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (connectionfactory.getConnManager() != null)
        {
            IEndPoint iendpoint = connectionfactory.getConnManager().createEndPoint(ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_name", Constants.PERSONALHUB_DEVICE_NAME[0]), Constants.PHUB_TCP_INTERFACE, 0);
            connectionfactory.setEndPoint(0, iendpoint);
            connectionfactory.getConnManager().registerEndPoint(iendpoint);
            connectionfactory.getConnManager().connect(iendpoint);
            return;
        } else
        {
            Log.d("TCPConnectionManager", "ACTION_CONNECT_REMOTE_DEVICE : connectionFactory.getConnManager() is null");
            return;
        }
    }

    public void connect(IEndPoint iendpoint)
    {
        if (iendpoint != null)
        {
            Log.d("TCPConnectionListener", "connect() called from TCPConnectionManager");
            getRegisteredConnectionListener(iendpoint).connect(iendpoint.getAddress());
        }
    }

    public void connect(String s)
    {
        connect(getEndPoint(s));
    }

    public void connectEndpoint(IEndPoint iendpoint)
    {
    }

    public void connectionStateChange(IEndPoint iendpoint, int i)
    {
        connectionHandler.updateState(iendpoint.getType(), i);
    }

    public IEndPoint createEndPoint(String s, String s1, int i)
    {
        Log.d("TCPConnectionManager", (new StringBuilder()).append("createEndPoint id:").append(s).toString());
        NetworkInfo networkinfo = ((ConnectivityManager)localContext.getSystemService("connectivity")).getActiveNetworkInfo();
        TCPEndPoint tcpendpoint = null;
        if (networkinfo != null)
        {
            boolean flag = networkinfo.isConnected();
            tcpendpoint = null;
            if (flag)
            {
                tcpendpoint = new TCPEndPoint(Constants.PERSONALHUB_DEVICE_NAME[0], s1);
                android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
                {
                    editor.putString("associated_wd_device_name", s);
                    editor.putString("associated_wd_device_address", s1);
                    editor.commit();
                }
            }
        }
        return tcpendpoint;
    }

    public void destroyEndPoint(IEndPoint iendpoint)
    {
        getRegisteredConnectionListener(iendpoint).stopConnectionListener();
        mEndPointConnectionMap.remove(iendpoint);
    }

    public void disassociatePhoneEPLeft()
    {
    }

    public void disassociatePhoneEPRight()
    {
    }

    public void disassociatePhoneWD()
    {
        IEndPoint iendpoint = ConnectionFactory.getConnectionFactory().getEndPoint(0);
        if (iendpoint != null)
        {
            android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
            editor.remove("associated_wd_device_name");
            editor.remove("associated_wd_device_address");
            editor.commit();
            destroyEndPoint(iendpoint);
            ConnectionFactory.getConnectionFactory().setEndPoint(0, null);
        }
    }

    public void disconnect(IEndPoint iendpoint)
    {
        getRegisteredConnectionListener(iendpoint).disconnect();
    }

    public IEndPoint getEndPoint(String s)
    {
        Iterator iterator = mEndPointConnectionMap.keySet().iterator();
        IEndPoint iendpoint;
        do
        {
            boolean flag = iterator.hasNext();
            iendpoint = null;
            if (!flag)
                break;
            IEndPoint iendpoint1 = (IEndPoint)iterator.next();
            if (!iendpoint1.getAddress().equals(s))
                continue;
            iendpoint = iendpoint1;
            break;
        } while (true);
        return iendpoint;
    }

    public HashMap getEndPointConnectionMap()
    {
        return mEndPointConnectionMap;
    }

    public IConnectionListener getRegisteredConnectionListener(IEndPoint iendpoint)
    {
        return (IConnectionListener)mEndPointConnectionMap.get(iendpoint);
    }

    public void handleConnHandlerData(IEndPoint iendpoint, byte abyte0[])
    {
        getRegisteredConnectionListener(iendpoint).write(abyte0);
    }

    public void handleConnHandlerFileData(IEndPoint iendpoint, Object obj)
    {
        String as[] = obj.toString().split("####");
        if (as.length == 2)
            Log.d("TCPConnectionManager", (new StringBuilder()).append("Path = ").append(as[0].trim()).append(", File = ").append(as[1].trim()).toString());
        ((IConnectionListener)mEndPointConnectionMap.get(iendpoint)).writeFile(as[0].trim(), as[1].trim());
    }

    public void receiveData(byte abyte0[], IEndPoint iendpoint)
    {
        connectionHandler.handleMessage(abyte0, iendpoint);
    }

    public void registerEndPoint(IEndPoint iendpoint)
    {
        mEndPointConnectionMap.put(iendpoint, new TCPConnectionListener(iendpoint, this));
    }

    public void resetEndPointConnection(final int endPointType, final boolean reconnect)
    {
        Log.d("TCPConnectionManager", (new StringBuilder()).append("Reset Connection request for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPointType]).toString());
        try
        {
            (new Thread() {

                final TCPConnectionManager this$0;
                final int val$endPointType;
                final boolean val$reconnect;

                public void run()
                {
                    ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
                    if (connectionfactory != null)
                    {
                        IEndPoint iendpoint = connectionfactory.getEndPoint(endPointType);
                        if (iendpoint != null)
                        {
                            switch (endPointType)
                            {
                            case 2: // '\002'
                                HandleMessageService.COUNT_EPR_CONNECT_ATTEMPT = 0;
                                break;

                            case 1: // '\001'
                                HandleMessageService.COUNT_EPL_CONNECT_ATTEMPT = 0;
                                break;

                            case 0: // '\0'
                                HandleMessageService.COUNT_WD_CONNECT_ATTEMPT = 0;
                                break;
                            }
                            getRegisteredConnectionListener(iendpoint).stopConnectionListener();
                            if (reconnect)
                            {
                                Log.d("TCPConnectionManager", "[sleep] 10 seconds reconnect");
                                SystemClock.sleep(10000L);
                                connect(iendpoint);
                            }
                        }
                        return;
                    } else
                    {
                        Log.e("TCPConnectionManager", "Null issue in resetConnectionEndpoint()");
                        return;
                    }
                }

            
            {
                this$0 = TCPConnectionManager.this;
                endPointType = i;
                reconnect = flag;
                super();
            }
            }
).start();
            return;
        }
        catch (Exception exception)
        {
            Log.e("TCPConnectionManager", (new StringBuilder()).append("Exception in resetConnectionEndpoint():").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void stopConnection(String s)
    {
        IEndPoint iendpoint = getEndPoint(s);
        if (iendpoint != null)
        {
            getRegisteredConnectionListener(iendpoint).stopConnectionListener();
            mEndPointConnectionMap.remove(iendpoint);
        }
    }

    public void stopConnectionManager()
    {
        for (Iterator iterator = mEndPointConnectionMap.keySet().iterator(); iterator.hasNext(); destroyEndPoint((IEndPoint)iterator.next()));
        mEndPointConnectionMap = null;
        Context context = ConnectionFactory.getConnectionFactory().getContext();
        if (context instanceof Service)
            ((Service)context).unregisterReceiver(phubIntentReceiver);
        mInstance = null;
    }
}
