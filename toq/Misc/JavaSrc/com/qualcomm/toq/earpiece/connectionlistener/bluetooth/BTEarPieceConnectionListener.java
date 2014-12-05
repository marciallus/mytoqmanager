// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.connectionlistener.bluetooth;

import android.bluetooth.*;
import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionlistener.bluetooth.BTConnectionListener;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.earpiece.utils.EarpiecePreference;
import com.qualcomm.toq.earpiece.utils.HeadsetAction;

public class BTEarPieceConnectionListener extends BTConnectionListener
{

    private static final String TAG = "BTEarPieceConnectionListener";
    private boolean retryConnectAllowed;
    private boolean virtualConnection;

    public BTEarPieceConnectionListener(IEndPoint iendpoint, IConnectionManager iconnectionmanager)
    {
        super(iendpoint, iconnectionmanager);
        virtualConnection = false;
        retryConnectAllowed = false;
    }

    private boolean isVirtualConnection()
    {
        return virtualConnection;
    }

    private void setVirtualConnection(boolean flag)
    {
        virtualConnection = flag;
    }

    public void connect(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Utils.updateStatus("BTEarPieceConnectionListener", (new StringBuilder()).append("connect() called. unqiueAdress: ").append(s).toString(), endPoint.getType(), 1, (byte)3);
        setVirtualConnection(false);
        if (btConnectIteration == 0)
            setRetryConnectAllowed(true);
        super.connect(s);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void connectionFailed()
    {
        Utils.updateStatus("BTEarPieceConnectionListener", (new StringBuilder()).append("connectionFailed() called. isVirtualConnection: ").append(isVirtualConnection()).toString(), endPoint.getType(), 1, (byte)3);
        if (HeadsetAction.getInstance().getCurrentAction() == 0 && HeadsetAction.getInstance().getCurrentState() == 2 && !EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("firmware_progress_text2", "").equalsIgnoreCase("UPDATED") && EPConnectionHandlerImpl.getConnectionHandler().getEndpointMode(endPoint.getType()).equals("Config"))
        {
            Log.d("BTEarPieceConnectionListener", "Sending FW failed status");
            Intent intent = new Intent();
            intent.setAction(Constants.ACTION_EAR_PIECE_UI_UPDATE);
            intent.putExtra("endpointtype", endPoint.getType());
            intent.putExtra("state", 102);
            intent.putExtra("ep_firmware_update_error", -1);
            ToqApplication.getAppContext().sendBroadcast(intent);
        }
        super.connectionFailed();
    }

    protected void connectionSuccess(BluetoothSocket bluetoothsocket, BluetoothDevice bluetoothdevice)
    {
        this;
        JVM INSTR monitorenter ;
        Utils.updateStatus("BTEarPieceConnectionListener", (new StringBuilder()).append("sconnectionSuccess() called. isVirtualConnection: ").append(isVirtualConnection()).toString(), endPoint.getType(), 1, (byte)3);
        super.connectionSuccess(bluetoothsocket, bluetoothdevice);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isRetryConnectAllowed()
    {
        return retryConnectAllowed;
    }

    public void setRetryConnectAllowed(boolean flag)
    {
        retryConnectAllowed = flag;
    }

    protected void setState(int i)
    {
        this;
        JVM INSTR monitorenter ;
        Utils.updateStatus("BTEarPieceConnectionListener", (new StringBuilder()).append("setState(connlisten: ").append(this).append(", endPointType: ").append(endPoint.getType()).append(", mSPPState: ").append(i).toString(), endPoint.getType(), 1, (byte)3);
        super.setState(i);
        if (BluetoothAdapter.getDefaultAdapter().isEnabled()) goto _L2; else goto _L1
_L1:
        Log.e("BTEarPieceConnectionListener", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPoint.getType()]).append(": BT not enabled to reconnect from setState").toString());
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if ((endPoint.getType() != 1 || ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address")) && (endPoint.getType() != 2 || ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address")))
            break MISSING_BLOCK_LABEL_223;
        Log.e("BTEarPieceConnectionListener", (new StringBuilder()).append("No associated ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPoint.getType()]).append(" details found to initiate a reconnect from setState").toString());
          goto _L3
        Exception exception;
        exception;
        throw exception;
        if (i != 4) goto _L5; else goto _L4
_L4:
        if (btConnectIteration >= 2 || !retryConnectAllowed)
            break MISSING_BLOCK_LABEL_447;
        Utils.updateStatus("BTEarPieceConnectionListener", (new StringBuilder()).append("SPP retry interation: ").append(btConnectIteration).toString(), endPoint.getType(), 1, (byte)3);
        btConnectIteration = 1 + btConnectIteration;
        Log.d("BTEarPieceConnectionListener", "[sleep] 6 seconds EP");
        Thread.sleep(6300L);
        if ((endPoint.getType() != 1 || !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address")) && (endPoint.getType() != 2 || !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address")))
            break MISSING_BLOCK_LABEL_425;
        connect(endPoint.getAddress());
          goto _L3
        InterruptedException interruptedexception;
        interruptedexception;
        Utils.updateStatus("BTEarPieceConnectionListener", (new StringBuilder()).append("SPP retry interation: ").append(btConnectIteration).append(" interrupted!!!").toString(), endPoint.getType(), 1, (byte)3);
          goto _L3
        Utils.updateStatus("BTEarPieceConnectionListener", "Preferences are not having the device data.", endPoint.getType(), 1, (byte)3);
          goto _L3
        Utils.updateStatus("BTEarPieceConnectionListener", "Moving to NONE state instead of starting SPP server from setState", endPoint.getType(), 1, (byte)3);
        if (!Constants.isChangeRolesActive)
        {
            Log.d("BTEarPieceConnectionListener", "[ChangeRoles]..Calling from BT EarpieceListener");
            stopConnectionListener();
        }
          goto _L3
_L9:
        if (HeadsetAction.getInstance().getCurrentAction() != 1) goto _L7; else goto _L6
_L6:
        setRetryConnectAllowed(false);
_L8:
        btConnectIteration = 0;
        break; /* Loop/switch isn't completed */
_L7:
        setRetryConnectAllowed(true);
        if (true) goto _L8; else goto _L5
_L5:
        if (i != 3 && i != 1) goto _L3; else goto _L9
    }

    public void startSPPServer()
    {
    }

    public void stopConnectionListener()
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("BTEarPieceConnectionListener", "[ChangeRoles] TEST 2 stopConnectionListener()");
        Utils.updateStatus("BTEarPieceConnectionListener", (new StringBuilder()).append("stopConnectionListener() called. isVirtualConnection: ").append(isVirtualConnection()).toString(), endPoint.getType(), 1, (byte)3);
        super.stopConnectionListener();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
