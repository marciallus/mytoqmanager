// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.connectionmanager.bluetooth;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.content.*;
import android.os.SystemClock;
import com.qualcomm.toq.base.connectionlistener.IConnectionListener;
import com.qualcomm.toq.base.connectionlistener.bluetooth.BTConnectionListener;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.receiver.HandleMessageService;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.endpoint.bluetooth.BTEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.service.PHubBaseService;
import com.qualcomm.toq.base.tftp.filetransfer.TFTPFiletransferClient;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.connectionlistener.bluetooth.BTEarPieceConnectionListener;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.PHubService;
import java.util.*;

public class BTConnectionManager
    implements IConnectionManager
{

    private static final String TAG = "BTConnectionManager";
    private static BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private static BTConnectionManager mInstance;
    public static String sLocalBluetoothAddress = "00:00:00:00:00:00";
    public Context btcontext;
    protected IConnectionHandler connectionHandler;
    public Timer counter;
    private HashMap mEndPointConnectionMap;

    protected BTConnectionManager(Context context)
    {
        mEndPointConnectionMap = null;
        btcontext = null;
        try
        {
            btcontext = context;
            mEndPointConnectionMap = new HashMap();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static BTConnectionManager getConnectionManager(Context context)
    {
label0:
        {
            if (mBluetoothAdapter == null)
            {
                context.sendBroadcast(new Intent(Constants.ACTION_BLUETOOTH_NOT_SUPPORTED));
                if (context instanceof Service)
                {
                    Log.d("BTConnectionManager", "Stopping Service as bluetooth not supported");
                    ((Service)context).stopSelf();
                }
            } else
            {
                if (mBluetoothAdapter.isEnabled())
                    break label0;
                context.sendBroadcast(new Intent(Constants.ACTION_BLUETOOTH_NOT_ENABLED));
                if (context instanceof Service)
                {
                    Log.d("BTConnectionManager", "Stopping Service to enable bluetooth");
                    ((Service)context).stopSelf();
                    return null;
                }
            }
            return null;
        }
        if (mInstance == null)
        {
            mInstance = new BTConnectionManager(context);
            sLocalBluetoothAddress = mBluetoothAdapter.getAddress();
        }
        return mInstance;
    }

    public void associatePhoneEPLeft()
    {
        Log.d("BTConnectionManager", "associatePhoneEPLeft() called");
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address") && connectionfactory.getEndPoint(1) == null)
        {
            String s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_name", null);
            String s1 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", null);
            Log.d("BTConnectionManager", (new StringBuilder()).append("endpointname ").append(s).toString());
            Log.d("BTConnectionManager", (new StringBuilder()).append("endpointaddress ").append(s1).toString());
            IEndPoint iendpoint = createEndPoint(s, s1, 1);
            connectionfactory.setEndPoint(1, iendpoint);
            registerEndPoint(iendpoint);
            Log.d("BTConnectionManager", "EP-L Connect call from associatePhoneEPLeft()");
            return;
        } else
        {
            Log.e("BTConnectionManager", (new StringBuilder()).append("Associated ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[1]).append(" details might not be there in shared preference and connectionFactory.getEndPoint() = ").append(connectionfactory.getEndPoint(1)).toString());
            return;
        }
    }

    public void associatePhoneEPRight()
    {
        Log.d("BTConnectionManager", "associatePhoneEPright() called");
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address") && connectionfactory.getEndPoint(2) == null)
        {
            String s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_name", null);
            String s1 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", null);
            Log.d("BTConnectionManager", (new StringBuilder()).append("endpointname ").append(s).toString());
            Log.d("BTConnectionManager", (new StringBuilder()).append("endpointaddress ").append(s1).toString());
            IEndPoint iendpoint = createEndPoint(s, s1, 2);
            connectionfactory.setEndPoint(2, iendpoint);
            registerEndPoint(iendpoint);
            Log.d("BTConnectionListener", "EP-R Connect call from associatePhoneEPRight()");
            return;
        } else
        {
            Log.e("BTConnectionManager", (new StringBuilder()).append("Associated ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[2]).append(" details might not be there in shared preference and connectionFactory.getEndPoint() = ").append(connectionfactory.getEndPoint(2)).toString());
            return;
        }
    }

    public void associatePhoneWD()
    {
        Log.d("BTConnectionManager", "associatePhoneWD() called");
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") && connectionfactory.getEndPoint(0) == null)
        {
            String s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_name", null);
            String s1 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null);
            Log.d("BTConnectionManager", (new StringBuilder()).append("endpointname ").append(s).toString());
            Log.d("BTConnectionManager", (new StringBuilder()).append("endpointaddress ").append(s1).toString());
            IEndPoint iendpoint = createEndPoint(s, s1, 0);
            connectionfactory.setEndPoint(0, iendpoint);
            registerEndPoint(iendpoint);
            Log.d("BTConnectionListener", "WD Connect call from associatePhoneWD()");
            connect(iendpoint);
            return;
        } else
        {
            Log.e("BTConnectionManager", (new StringBuilder()).append("Associated WD details might not be there in shared preference and connectionFactory.getWdEndPoint() = ").append(connectionfactory.getEndPoint(0)).toString());
            return;
        }
    }

    public void connect(IEndPoint iendpoint)
    {
        if (iendpoint != null && getRegisteredConnectionListener(iendpoint) != null)
        {
            Log.d("BTConnectionManager", (new StringBuilder()).append("connect() :").append(getRegisteredConnectionListener(iendpoint)).toString());
            Log.d("BTConnectionListener", (new StringBuilder()).append("Connect() using endpoint object endPoint = ").append(iendpoint).append(", address = ").append(iendpoint.getAddress()).toString());
            getRegisteredConnectionListener(iendpoint).connect(iendpoint.getAddress());
        }
    }

    public void connect(String s)
    {
        Log.d("BTConnectionListener", (new StringBuilder()).append("Connect using BT address: ").append(s).toString());
        connect(getEndPoint(s));
    }

    public void connectEndpoint(IEndPoint iendpoint)
    {
        if (iendpoint != null)
        {
            Log.d("BTConnectionManager", (new StringBuilder()).append("connectEndpoint() :").append(getRegisteredConnectionListener(iendpoint)).toString());
            Log.d("BTConnectionListener", "connectEndpoint() using endpoint object");
            getRegisteredConnectionListener(iendpoint).connect(iendpoint.getAddress());
        }
    }

    public void connectionStateChange(IEndPoint iendpoint, int i)
    {
        if (iendpoint != null)
        {
            if (iendpoint.getType() == 0)
                connectionHandler = ToqConnectionHandlerImpl.getConnectionHandler();
            else
            if (iendpoint.getType() == 1 || iendpoint.getType() == 2)
                connectionHandler = EPConnectionHandlerImpl.getConnectionHandler();
            connectionHandler.updateState(iendpoint.getType(), i);
        }
    }

    public IEndPoint createEndPoint(String s, String s1, int i)
    {
        BTEndPoint btendpoint = new BTEndPoint(s, s1, i);
        android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
        if (PhubBluetoothDeviceBondInfo.getInstance().isWDNameSupported(s, 0))
        {
            if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
            {
                editor.putString("associated_wd_device_name", s);
                editor.putString("associated_wd_device_address", s1);
                editor.commit();
            }
        } else
        if (PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(s, 1))
        {
            if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address"))
            {
                editor.putString("associated_ep_l_device_name", s);
                editor.putString("associated_ep_l_device_address", s1);
                editor.commit();
                return btendpoint;
            }
        } else
        if (PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(s, 2) && !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address"))
        {
            editor.putString("associated_ep_r_device_name", s);
            editor.putString("associated_ep_r_device_address", s1);
            editor.commit();
            return btendpoint;
        }
        return btendpoint;
    }

    public void destroyEndPoint(IEndPoint iendpoint, boolean flag)
    {
        Log.d("BTConnectionManager", (new StringBuilder()).append("destroyEndPoint() called endPoint = ").append(iendpoint.getType()).append(" name = ").append(iendpoint.getName()).toString());
        IConnectionListener iconnectionlistener = getRegisteredConnectionListener(iendpoint);
        if (iconnectionlistener != null)
        {
            BTConnectionListener btconnectionlistener = (BTConnectionListener)iconnectionlistener;
            if (btconnectionlistener != null)
                btconnectionlistener.setStopListenerCalled(true);
            iconnectionlistener.stopConnectionListener();
            if (flag && mEndPointConnectionMap != null)
                mEndPointConnectionMap.remove(iendpoint);
        }
    }

    public void disassociatePhoneEPLeft()
    {
        Log.d("BTConnectionManager", "disassociatePhoneEPLeft() called");
        android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
        editor.remove("associated_ep_l_device_name");
        editor.remove("associated_ep_l_device_address");
        editor.commit();
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (connectionfactory != null)
        {
            IEndPoint iendpoint = connectionfactory.getEndPoint(1);
            if (iendpoint != null)
                destroyEndPoint(iendpoint, true);
            connectionfactory.setEndPoint(1, null);
            return;
        } else
        {
            Log.d("BTConnectionManager", "ConnectionFactory.getConnectionFactory() is null");
            return;
        }
    }

    public void disassociatePhoneEPRight()
    {
        Log.d("BTConnectionManager", "disassociatePhoneEPRight() called");
        android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
        editor.remove("associated_ep_r_device_name");
        editor.remove("associated_ep_r_device_address");
        editor.commit();
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (connectionfactory != null)
        {
            IEndPoint iendpoint = connectionfactory.getEndPoint(2);
            if (iendpoint != null)
                destroyEndPoint(iendpoint, true);
            connectionfactory.setEndPoint(2, null);
            return;
        } else
        {
            Log.d("BTConnectionManager", "ConnectionFactory.getConnectionFactory() is null");
            return;
        }
    }

    public void disassociatePhoneWD()
    {
label0:
        {
label1:
            {
                Log.d("BTConnectionManager", "disassociatePhoneWD() called");
                if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
                    try
                    {
                        TFTPFiletransferClient.isStopTFTPPush = true;
                        android.content.SharedPreferences.Editor editor = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("app_pref", 0).edit();
                        editor.putBoolean("checkCompatibility", true);
                        editor.remove("processedEventsSet");
                        editor.commit();
                        android.content.SharedPreferences.Editor editor1 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                        editor1.remove("associated_wd_device_name");
                        editor1.remove("associated_wd_device_address");
                        editor1.commit();
                        android.content.SharedPreferences.Editor editor2 = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("stores_pref", 0).edit();
                        editor2.remove("contactsequence");
                        editor2.remove("smssequence");
                        editor2.remove("quickreplysequence");
                        editor2.remove("calllogsequence");
                        editor2.remove("agendasequence");
                        editor2.remove("recentcommsequence");
                        editor2.remove("clocksettingssequence");
                        editor2.commit();
                        android.content.SharedPreferences.Editor editor3 = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("popup_pref", 0).edit();
                        editor3.remove("controller_popup_id");
                        editor3.commit();
                        android.content.SharedPreferences.Editor editor4 = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("first_time_connected_pref", 0).edit();
                        editor4.remove("first_time_connected");
                        editor4.commit();
                    }
                    catch (Exception exception)
                    {
                        exception.printStackTrace();
                        Log.d("BTConnectionManager", exception.toString());
                    }
                else
                    Log.d("BTConnectionManager", "endPoint is null");
                if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
                {
                    Log.d("BTConnectionManager", "Send ACTION_WD_DEVICE_DISASSOCIATED Broadcast");
                    Intent intent = new Intent(Constants.ACTION_WD_DEVICE_DISASSOCIATED);
                    intent.putExtra("endpointtype", 0);
                    ConnectionFactory.getConnectionFactory().getContext().sendBroadcast(intent);
                    Log.d("BTConnectionManager", "disassociating only watch endPoint");
                    ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
                    if (connectionfactory != null)
                    {
                        IEndPoint iendpoint = connectionfactory.getEndPoint(0);
                        if (iendpoint != null)
                            destroyEndPoint(iendpoint, false);
                        connectionfactory.setEndPoint(0, null);
                    } else
                    {
                        Log.d("BTConnectionManager", "ConnectionFactory.getConnectionFactory() is null");
                    }
                    Log.d("BTConnectionManager", "stop PHubService");
                    if (!PhubBluetoothDeviceBondInfo.getInstance().isWDBonded())
                        break label0;
                    if (connectionfactory.getEndPoint(0) == null)
                    {
                        Log.d("BTConnectionManager", " WD EndPoint() is  NULL");
                        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
                        {
                            Log.d("BTConnectionManager", "SP contains KEY_ASSOCIATED_WD_DEVICE_ADDRESS");
                            if (connectionfactory.getConnManager() == null)
                                break label1;
                            Log.d("BTConnectionListener", "associatePhoneWD() from PHubService");
                            connectionfactory.getConnManager().associatePhoneWD();
                        }
                    }
                }
                return;
            }
            Log.d("BTConnectionManager", "startFactoryObjects(): mConnectionFactory.getConnManager() is null");
            return;
        }
        PHubBaseService.isStopCalledOnUnpair = true;
        Intent intent1 = new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName());
        ConnectionFactory.getConnectionFactory().getContext().stopService(intent1);
    }

    public void disconnect(IEndPoint iendpoint)
    {
        getRegisteredConnectionListener(iendpoint).disconnect();
    }

    public IEndPoint getEndPoint(String s)
    {
        Iterator iterator = mEndPointConnectionMap.keySet().iterator();
_L2:
        boolean flag = iterator.hasNext();
        IEndPoint iendpoint = null;
        if (!flag)
            break; /* Loop/switch isn't completed */
        IEndPoint iendpoint1;
        boolean flag1;
        try
        {
            iendpoint1 = (IEndPoint)iterator.next();
            flag1 = iendpoint1.getAddress().equals(s);
        }
        catch (Exception exception)
        {
            Log.e("BTConnectionManager", (new StringBuilder()).append("Exception in getEndPoint: ").append(exception.toString()).toString());
            return null;
        }
        if (!flag1)
            continue; /* Loop/switch isn't completed */
        iendpoint = iendpoint1;
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
        return iendpoint;
    }

    public HashMap getEndPointConnectionMap()
    {
        return mEndPointConnectionMap;
    }

    public IConnectionListener getRegisteredConnectionListener(IEndPoint iendpoint)
    {
        if (mEndPointConnectionMap != null)
            return (IConnectionListener)mEndPointConnectionMap.get(iendpoint);
        else
            return null;
    }

    public void handleConnHandlerData(IEndPoint iendpoint, byte abyte0[])
    {
        Log.d("BTConnectionManager", "BTConnectionManager: handleConnHandlerData()");
        if (iendpoint != null)
            getRegisteredConnectionListener(iendpoint).write(abyte0);
    }

    public void handleConnHandlerFileData(IEndPoint iendpoint, Object obj)
    {
        String as[] = obj.toString().split("####");
        if (as.length == 2)
            Log.d("BTConnectionManager", (new StringBuilder()).append("Path = ").append(as[0].trim()).append(", File = ").append(as[1].trim()).toString());
        ((IConnectionListener)mEndPointConnectionMap.get(iendpoint)).writeFile(as[0].trim(), as[1].trim());
    }

    public void receiveData(byte abyte0[], IEndPoint iendpoint)
    {
        if (iendpoint.getType() == 0)
            connectionHandler = ToqConnectionHandlerImpl.getConnectionHandler();
        else
        if (iendpoint.getType() == 1 || iendpoint.getType() == 2)
            connectionHandler = EPConnectionHandlerImpl.getConnectionHandler();
        connectionHandler.handleMessage(abyte0, iendpoint);
    }

    public void registerEndPoint(IEndPoint iendpoint)
    {
        if (mEndPointConnectionMap != null && !mEndPointConnectionMap.containsKey(iendpoint))
        {
            boolean flag = ProjectConfig.getProjectConfig().getConnectionListener().equals("BLUETOOTH");
            Object obj = null;
            if (flag)
            {
                int i = iendpoint.getType();
                obj = null;
                switch (i)
                {
                case 1: // '\001'
                case 2: // '\002'
                    obj = new BTEarPieceConnectionListener(iendpoint, this);
                    break;

                case 0: // '\0'
                    obj = new BTConnectionListener(iendpoint, this);
                    break;
                }
            }
            mEndPointConnectionMap.put(iendpoint, obj);
            Log.d("BTConnectionManager", (new StringBuilder()).append("created connectionListener:").append(obj).toString());
        }
    }

    public void resetEndPointConnection(final int endPointType, final boolean reconnect)
    {
        Log.d("BTConnectionManager", (new StringBuilder()).append("Reset Connection request for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPointType]).toString());
        try
        {
            (new Thread() {

                final BTConnectionManager this$0;
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
                                Log.d("BTConnectionManager", "[sleep] 10 seconds reconnect");
                                SystemClock.sleep(10000L);
                                connect(iendpoint);
                            }
                        }
                        return;
                    } else
                    {
                        Log.e("BTConnectionManager", "Null issue in resetConnectionEndpoint()");
                        return;
                    }
                }

            
            {
                this$0 = BTConnectionManager.this;
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
            Log.e("BTConnectionManager", (new StringBuilder()).append("Exception in resetConnectionEndpoint():").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void startSPPServer(String s)
    {
        Log.d("BTConnectionListener", "Start SPP server using BT address");
        if (getEndPoint(s) != null)
        {
            Log.d("BTConnectionManager", (new StringBuilder()).append("connect end:").append(getRegisteredConnectionListener(getEndPoint(s))).toString());
            Log.d("BTConnectionListener", "Start SPP server using endpoint object");
            getRegisteredConnectionListener(getEndPoint(s)).startSPPServer();
        }
    }

    public void stopConnectionManager()
    {
        Set set;
        Log.d("BTConnectionManager", "stopConnectionManager begin");
        mInstance = null;
        if (mEndPointConnectionMap == null)
            break MISSING_BLOCK_LABEL_122;
        set = mEndPointConnectionMap.keySet();
        if (set == null)
            break MISSING_BLOCK_LABEL_122;
        if (set.size() <= 0)
            break MISSING_BLOCK_LABEL_122;
        for (Iterator iterator = set.iterator(); iterator.hasNext(); iterator.remove())
            destroyEndPoint((IEndPoint)iterator.next(), false);

        try
        {
            mEndPointConnectionMap = null;
            Log.d("BTConnectionManager", (new StringBuilder()).append("stopConnectionManager mEndPointConnectionMap").append(mEndPointConnectionMap).toString());
            Log.d("BTConnectionManager", "stopConnectionManager end");
            return;
        }
        catch (Exception exception) { }
    }

}
