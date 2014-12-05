// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.connectionmanager.bluetooth.receiver;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.*;
import android.os.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.service.PHubBaseService;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.controller.EPCommunicationController;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade;
import com.qualcomm.toq.smartwatch.service.PHubService;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.qualcomm.toq.base.connectionmanager.bluetooth.receiver:
//            HandleMessageService

public class BTPHubReceiver extends BroadcastReceiver
{

    private static final String TAG = "BTPHubReceiver";
    public HandlerThread connectionHandlerThread;
    public Handler connectionStateHandler;
    public Looper looper;

    public BTPHubReceiver()
    {
        connectionHandlerThread = null;
        looper = null;
        connectionStateHandler = null;
    }

    private void removeHandlerThread()
    {
        if (looper != null)
            looper.quit();
        connectionStateHandler = null;
        connectionHandlerThread = null;
    }

    public void onReceive(final Context context, final Intent intent)
    {
label0:
        {
            String s;
            final ConnectionFactory connectionFactory;
label1:
            {
                int i;
                String s1;
label2:
                {
label3:
                    {
                        Bundle bundle = intent.getExtras();
                        s = intent.getAction();
                        connectionFactory = ConnectionFactory.getConnectionFactory();
                        Log.d("BTPHubReceiver", (new StringBuilder()).append("BTPHubReceiver  onReceive:").append(s).toString());
                        if (ProjectConfig.getProjectConfig().getConnectionType().equals("TCP"))
                            break label0;
                        if (!"android.bluetooth.adapter.action.STATE_CHANGED".equals(s))
                            break label1;
                        if (!Utils.isEulaAgreementAccepted())
                        {
                            Log.e("BTPHubReceiver", "Eula is not yet accepted, so discard the BT OFF/ON broadcast");
                            return;
                        }
                        i = bundle.getInt("android.bluetooth.adapter.extra.STATE");
                        s1 = com/qualcomm/toq/smartwatch/service/PHubService.getName();
                        if (i != 12)
                            break label2;
                        Log.d("BTPHubReceiver", "STATE_ON:");
                        Log.printUsageLog("BTPHubReceiver", "BT turned ON");
                        StateListenerFacade.getInstance().onBluetoothEnabled();
                        if (ToqApplication.getDeviceType() != 0 && ToqApplication.getDeviceType() != 2)
                            break label3;
                        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
                        {
                            Iterator iterator1 = BluetoothAdapter.getDefaultAdapter().getBondedDevices().iterator();
                            BluetoothDevice bluetoothdevice1;
                            do
                            {
                                if (!iterator1.hasNext())
                                    break label3;
                                bluetoothdevice1 = (BluetoothDevice)iterator1.next();
                            } while (!PhubBluetoothDeviceBondInfo.getInstance().isWDNameSupported(bluetoothdevice1.getName(), 0));
                            android.content.SharedPreferences.Editor editor2 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                            editor2.putString("associated_wd_device_name", bluetoothdevice1.getName());
                            editor2.putString("associated_wd_device_address", bluetoothdevice1.getAddress());
                            editor2.commit();
                            context.startService(new Intent(s1));
                            return;
                        }
                        context.startService(new Intent(s1));
                    }
                    if (ToqApplication.getDeviceType() == 1 || ToqApplication.getDeviceType() == 2)
                    {
                        Iterator iterator = BluetoothAdapter.getDefaultAdapter().getBondedDevices().iterator();
                        do
                        {
                            if (!iterator.hasNext())
                                break;
                            BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
                            if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_name") && !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address") && PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(bluetoothdevice.getName(), 1))
                            {
                                android.content.SharedPreferences.Editor editor1 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                editor1.putString("associated_ep_l_device_name", bluetoothdevice.getName());
                                editor1.putString("associated_ep_l_device_address", bluetoothdevice.getAddress());
                                editor1.commit();
                            } else
                            if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_name") && !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address") && PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(bluetoothdevice.getName(), 2))
                            {
                                android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                editor.putString("associated_ep_r_device_name", bluetoothdevice.getName());
                                editor.putString("associated_ep_r_device_address", bluetoothdevice.getAddress());
                                editor.commit();
                            }
                        } while (true);
                    }
                    break label0;
                }
                if (i == 10)
                {
                    Log.d("BTPHubReceiver", "STATE_OFF:");
                    Log.printUsageLog("BTPHubReceiver", "BT turned OFF");
                    StateListenerFacade.getInstance().onBluetoothDisabled();
                    context.sendBroadcast(new Intent(Constants.ACTION_CONNECTION_STOPPED));
                    if (BTConnectionManager.getConnectionManager(context) != null)
                        BTConnectionManager.getConnectionManager(context).stopConnectionManager();
                    if (ToqApplication.getDeviceType() == 0 || ToqApplication.getDeviceType() == 2)
                    {
                        context.stopService(new Intent(s1));
                        return;
                    }
                }
                break label0;
            }
            if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(s))
            {
                if (connectionHandlerThread == null)
                {
                    connectionHandlerThread = new HandlerThread("BTPHubReceiver");
                    connectionHandlerThread.start();
                    looper = connectionHandlerThread.getLooper();
                    connectionStateHandler = new Handler(looper);
                }
                if (connectionStateHandler != null)
                {
                    connectionStateHandler.post(new Runnable() {

                        final BTPHubReceiver this$0;
                        final ConnectionFactory val$connectionFactory;
                        final Context val$context;
                        final Intent val$intent;

                        public void run()
                        {
                            if (!Utils.isEulaAgreementAccepted())
                            {
                                Log.e("BTPHubReceiver", "Eula is not yet accepted, so discard the ACTION_BOND_STATE_CHANGED broadcast");
                                return;
                            }
                            BluetoothDevice bluetoothdevice2 = (BluetoothDevice)intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                            int j = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", 10);
                            if (bluetoothdevice2 != null && bluetoothdevice2.getName() != null)
                                Log.d("BTPHubReceiver", (new StringBuilder()).append("Device name = ").append(bluetoothdevice2.getName()).append("Device address = ").append(bluetoothdevice2.getAddress()).append(" state = ").append(j).toString());
                            if (ToqApplication.getDeviceType() == 0 || ToqApplication.getDeviceType() == 2 && bluetoothdevice2 != null)
                                if (j == 10)
                                {
                                    if (ToqData.getInstance().getAssociatedDevicePrefs() != null && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
                                    {
                                        String s7 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", "");
                                        if (bluetoothdevice2.getAddress().equalsIgnoreCase(s7))
                                        {
                                            Log.printUsageLog("BTPHubReceiver", "WD got Unpaired");
                                            Log.d("BTPHubReceiver", "disassociatePhoneWD() from BTPHubReceiver");
                                            StateListenerFacade.getInstance().onWatchUnpaired();
                                            if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                                connectionFactory.getConnManager().disassociatePhoneWD();
                                        } else
                                        {
                                            Log.d("BTPHubReceiver", (new StringBuilder()).append(bluetoothdevice2.getName()).append("(").append(bluetoothdevice2.getAddress()).append(")").append(" unpaired, but this is not an associated device").toString());
                                        }
                                    } else
                                    {
                                        Log.d("BTPHubReceiver", (new StringBuilder()).append(bluetoothdevice2.getName()).append("(").append(bluetoothdevice2.getAddress()).append(")").append(" unpaired, but WD details are not in preferences to cross check").toString());
                                    }
                                } else
                                if (j == 12 && PhubBluetoothDeviceBondInfo.getInstance().isWDNameSupported(bluetoothdevice2.getName(), 0))
                                    if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") && !ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", "").equals(bluetoothdevice2.getAddress()))
                                    {
                                        String s6 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", "");
                                        Log.d("BTPHubReceiver", (new StringBuilder()).append("Another WD device got paired, but already Phone is is connected with other WD having address").append(s6).toString());
                                        Log.printUsageLog("BTPHubReceiver", (new StringBuilder()).append("Another WD device got paired, but already Phone is connected with other WD having address").append(s6).toString());
                                    } else
                                    {
                                        Log.d("BTPHubReceiver", (new StringBuilder()).append("Phone got paired to WD with address").append(bluetoothdevice2.getAddress()).toString());
                                        Log.printUsageLog("BTPHubReceiver", (new StringBuilder()).append("Phone got paired to WD with address").append(bluetoothdevice2.getAddress()).toString());
                                        StateListenerFacade.getInstance().onWatchPaired();
                                        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") && !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_name"))
                                        {
                                            android.content.SharedPreferences.Editor editor5 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                            editor5.putString("associated_wd_device_name", bluetoothdevice2.getName());
                                            editor5.putString("associated_wd_device_address", bluetoothdevice2.getAddress());
                                            editor5.commit();
                                            if (!PHubService.isPHubServiceRunning)
                                            {
                                                Log.d("BTPHubReceiver", "Starting Service for Pair Event");
                                                Intent intent4 = new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName());
                                                context.stopService(intent4);
                                                context.startService(intent4);
                                            } else
                                            if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                                connectionFactory.getConnManager().associatePhoneWD();
                                        } else
                                        if (!PHubService.isPHubServiceRunning)
                                        {
                                            Log.d("BTPHubReceiver", "Starting New Service for Pair Event");
                                            Intent intent3 = new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName());
                                            context.startService(intent3);
                                        } else
                                        if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                        {
                                            Log.d("BTPHubReceiver", "Service already running so just calling associate WD");
                                            PhubBluetoothDeviceBondInfo.getInstance().isWDBonded();
                                            HandleMessageService.COUNT_WD_CONNECT_ATTEMPT = 0;
                                            connectionFactory.getConnManager().associatePhoneWD();
                                        }
                                    }
                            if ((ToqApplication.getDeviceType() == 1 || ToqApplication.getDeviceType() == 2) && bluetoothdevice2 != null && bluetoothdevice2.getName() != null && PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(bluetoothdevice2.getName(), 1))
                            {
                                Log.d("BTPHubReceiver", (new StringBuilder()).append("Inside Constants.END_POINT_EP_LEFT   ").append(PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(bluetoothdevice2.getName(), 1)).append(", ToqApplication.getDeviceType() = ").append(ToqApplication.getDeviceType()).toString());
                                if (j == 10)
                                {
                                    EPCommunicationController.getEPCommunicationController().broadcastEPStateUpdate(1);
                                    if (ToqData.getInstance().getAssociatedDevicePrefs() != null && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address"))
                                    {
                                        String s5 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", "");
                                        if (bluetoothdevice2.getAddress().equalsIgnoreCase(s5))
                                        {
                                            Utils.updateStatus("BTPHubReceiver", "EPL got unpaired", 1, 1, (byte)3);
                                            if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                                connectionFactory.getConnManager().disassociatePhoneEPLeft();
                                        }
                                    }
                                } else
                                if (j == 12)
                                {
                                    EPCommunicationController.getEPCommunicationController().broadcastEPStateUpdate(1);
                                    PhubBluetoothDeviceBondInfo phubbluetoothdevicebondinfo1 = PhubBluetoothDeviceBondInfo.getInstance();
                                    if (phubbluetoothdevicebondinfo1.isMoreThanOneEarPiecesHeadsetPaired())
                                        phubbluetoothdevicebondinfo1.disassociateEarPieces(bluetoothdevice2.getName(), bluetoothdevice2.getAddress(), 3);
                                    else
                                    if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address"))
                                    {
                                        String s4 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", "");
                                        Utils.updateStatus("BTPHubReceiver", (new StringBuilder()).append("Another EPL device got paired, but already Phone is in associated state: ").append(s4).toString(), 1, 1, (byte)3);
                                    } else
                                    {
                                        Utils.updateStatus("BTPHubReceiver", (new StringBuilder()).append("Phone got paired to EPL with address").append(bluetoothdevice2.getAddress()).toString(), 1, 1, (byte)3);
                                        android.content.SharedPreferences.Editor editor4 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                        editor4.putString("associated_ep_l_device_name", bluetoothdevice2.getName());
                                        editor4.putString("associated_ep_l_device_address", bluetoothdevice2.getAddress());
                                        editor4.commit();
                                        connectionFactory.setEndPoint(1, null);
                                        if (!PHubBaseService.isPHubBaseServiceRunning)
                                        {
                                            Intent intent2 = new Intent(com/qualcomm/toq/base/service/PHubBaseService.getName());
                                            context.startService(intent2);
                                        } else
                                        if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                        {
                                            HandleMessageService.COUNT_EPL_CONNECT_ATTEMPT = 0;
                                            connectionFactory.getConnManager().associatePhoneEPLeft();
                                        }
                                    }
                                }
                            }
                            if ((ToqApplication.getDeviceType() == 1 || ToqApplication.getDeviceType() == 2) && bluetoothdevice2 != null && bluetoothdevice2.getName() != null && PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(bluetoothdevice2.getName(), 2))
                            {
                                Log.d("BTPHubReceiver", (new StringBuilder()).append("Inside Constants.END_POINT_EP_RIGHT").append(PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(bluetoothdevice2.getName(), 2)).append(", ToqApplication.getDeviceType() = ").append(ToqApplication.getDeviceType()).toString());
                                if (j == 10)
                                {
                                    EPCommunicationController.getEPCommunicationController().broadcastEPStateUpdate(2);
                                    if (ToqData.getInstance().getAssociatedDevicePrefs() != null && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address"))
                                    {
                                        String s3 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", "");
                                        if (bluetoothdevice2.getAddress().equalsIgnoreCase(s3))
                                        {
                                            Utils.updateStatus("BTPHubReceiver", "EPR got unpaired", 2, 1, (byte)3);
                                            if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                                connectionFactory.getConnManager().disassociatePhoneEPRight();
                                        }
                                    }
                                } else
                                if (j == 12)
                                {
                                    EPCommunicationController.getEPCommunicationController().broadcastEPStateUpdate(2);
                                    PhubBluetoothDeviceBondInfo phubbluetoothdevicebondinfo = PhubBluetoothDeviceBondInfo.getInstance();
                                    if (phubbluetoothdevicebondinfo.isMoreThanOneEarPiecesHeadsetPaired())
                                        phubbluetoothdevicebondinfo.disassociateEarPieces(bluetoothdevice2.getName(), bluetoothdevice2.getAddress(), 3);
                                    else
                                    if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address"))
                                    {
                                        String s2 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", "");
                                        Utils.updateStatus("BTPHubReceiver", (new StringBuilder()).append("Another EPR device got paired, but already Phone is in associated state: ").append(s2).toString(), 2, 1, (byte)3);
                                    } else
                                    {
                                        Utils.updateStatus("BTPHubReceiver", (new StringBuilder()).append("Phone got paired to EPR with address").append(bluetoothdevice2.getAddress()).toString(), 2, 1, (byte)3);
                                        android.content.SharedPreferences.Editor editor3 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                        editor3.putString("associated_ep_r_device_name", bluetoothdevice2.getName());
                                        editor3.putString("associated_ep_r_device_address", bluetoothdevice2.getAddress());
                                        editor3.commit();
                                        connectionFactory.setEndPoint(2, null);
                                        if (!PHubBaseService.isPHubBaseServiceRunning)
                                        {
                                            Intent intent1 = new Intent(com/qualcomm/toq/base/service/PHubBaseService.getName());
                                            context.startService(intent1);
                                        } else
                                        if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                        {
                                            HandleMessageService.COUNT_EPR_CONNECT_ATTEMPT = 0;
                                            connectionFactory.getConnManager().associatePhoneEPRight();
                                        }
                                    }
                                }
                            }
                            Looper.myQueue().addIdleHandler(new android.os.MessageQueue.IdleHandler() {

                                final _cls1 this$1;

                                public boolean queueIdle()
                                {
                                    Log.e("BTPHubReceiver", "Removing handler thread disassociatePhoneWD()");
                                    if (!PHubBaseService.isPHubBaseServiceRunning)
                                    {
                                        Log.e("BTPHubReceiver", "Removing handler thread disassociatePhoneWD() 1");
                                        removeHandlerThread();
                                    }
                                    return false;
                                }

            
            {
                this$1 = _cls1.this;
                super();
            }
                            }
);
                        }

            
            {
                this$0 = BTPHubReceiver.this;
                intent = intent1;
                connectionFactory = connectionfactory;
                context = context1;
                super();
            }
                    }
);
                    return;
                }
            }
        }
    }

}
