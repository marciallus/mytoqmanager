// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.handler;

import android.content.Context;
import android.content.SharedPreferences;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.receiver.HandleMessageService;
import com.qualcomm.toq.base.controller.IController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.ConnectionHandlerImpl;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.controller.EPCommunicationController;
import com.qualcomm.toq.earpiece.controller.EPVersionController;
import com.qualcomm.toq.earpiece.utils.*;

public class EPConnectionHandlerImpl extends ConnectionHandlerImpl
{

    private static final String TAG = "EPConnectionHandlerImpl";
    private static EPConnectionHandlerImpl mInstance;
    private IConnectionManager connManager;
    private Context context;
    private boolean isEPLeftSoftwareUpgradeOnProcess;
    private boolean isEPRightSoftwareUpgradeOnProcess;

    public EPConnectionHandlerImpl()
    {
        context = null;
        isEPRightSoftwareUpgradeOnProcess = false;
        isEPLeftSoftwareUpgradeOnProcess = false;
    }

    public static EPConnectionHandlerImpl getConnectionHandler()
    {
        if (mInstance == null)
            mInstance = new EPConnectionHandlerImpl();
        return mInstance;
    }

    public String getBassBoostMode(int i)
    {
        Log.d("EPConnectionHandlerImpl", (new StringBuilder()).append("[BassBoost] getBassBoostMode(").append(i).append(")").toString());
        if (getContext() != null)
        {
            String s = getContext().getSharedPreferences("app_pref", 0).getString((new StringBuilder()).append("ep_bass_boost_mode").append(i).toString(), null);
            Log.d("EPConnectionHandlerImpl", (new StringBuilder()).append("[BassBoost] getBassBoostMode returning  = ").append(s).toString());
            return s;
        } else
        {
            Log.d("EPConnectionHandlerImpl", "[BassBoost] getBassBoostMode returning NULL");
            return null;
        }
    }

    public Context getContext()
    {
        if (context == null)
            context = ToqApplication.getAppContext();
        return context;
    }

    public IController getController(int i, int j)
    {
        Log.d("EPConnectionHandlerImpl", (new StringBuilder()).append("Dest appID = ").append(i).toString());
        Object obj;
        if (i == 0)
        {
            obj = EPVersionController.getEPVersionController();
        } else
        {
            obj = null;
            if (i == 19)
                obj = EPCommunicationController.getEPCommunicationController();
        }
        if (obj == null)
            obj = super.getController(i, j);
        return ((IController) (obj));
    }

    public boolean getEPDependendentOnPrimaryFlag(int i)
    {
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            switch (i)
            {
            case 2: // '\002'
                return sharedpreferences.getBoolean("epRDependendentOnPrimaryFlag", false);

            case 1: // '\001'
                return sharedpreferences.getBoolean("epLDependendentOnPrimaryFlag", false);
            }
        }
        return false;
    }

    public boolean getEndPointForceUpgradeRequestFlag(int i)
    {
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            switch (i)
            {
            case 2: // '\002'
                return sharedpreferences.getBoolean("ep_r_force_upgrade_Flag", false);

            case 1: // '\001'
                return sharedpreferences.getBoolean("ep_l_force_upgrade_Flag", false);
            }
        }
        return false;
    }

    public String getEndPointLinkKey(int i)
    {
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            switch (i)
            {
            case 2: // '\002'
                return sharedpreferences.getString("ep_r_device_linkkey", "");

            case 1: // '\001'
                return sharedpreferences.getString("ep_l_device_linkkey", "");
            }
        }
        return "";
    }

    public String getEndPointRole(int i)
    {
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            switch (i)
            {
            case 2: // '\002'
                return sharedpreferences.getString("ep_r_device_role", "");

            case 1: // '\001'
                return sharedpreferences.getString("ep_l_device_role", "");
            }
        }
        return "";
    }

    public String getEndpointCommonLinkKey()
    {
        if (getContext() != null)
            return getContext().getSharedPreferences("app_pref", 0).getString("ep_common_device_linkkey", null);
        else
            return "";
    }

    public String getEndpointConnectedEPAddress(int i)
    {
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            switch (i)
            {
            case 2: // '\002'
                return sharedpreferences.getString("ep_r_device_connected_ep", "");

            case 1: // '\001'
                return sharedpreferences.getString("ep_l_device_connected_ep", "");
            }
        }
        return "";
    }

    public String getEndpointMode(int i)
    {
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            switch (i)
            {
            case 2: // '\002'
                return sharedpreferences.getString("ep_r_device_mode", "");

            case 1: // '\001'
                return sharedpreferences.getString("ep_l_device_mode", "");
            }
        }
        return "";
    }

    public String getEpBatteryIndPercentage(int i)
    {
        if (getContext() != null)
        {
            SharedPreferences sharedpreferences = getContext().getSharedPreferences("app_pref", 0);
            switch (i)
            {
            case 2: // '\002'
                return sharedpreferences.getString((new StringBuilder()).append("ep_battery_level").append(i).toString(), null);

            case 1: // '\001'
                return sharedpreferences.getString((new StringBuilder()).append("ep_battery_level").append(i).toString(), null);
            }
        }
        return null;
    }

    public int getState(int i)
    {
        return super.getState(i);
    }

    public void handleControllerData(int i, int j, int k, Object obj, int l, int i1)
    {
        super.handleControllerData(i, j, k, obj, l, i1);
    }

    public void handleMessage(byte abyte0[], IEndPoint iendpoint)
    {
        super.handleMessage(abyte0, iendpoint);
    }

    public void initiateConnectionMgr(Context context1, int i)
    {
        context = context1;
        connManager = BTConnectionManager.getConnectionManager(context);
        if (PhubBluetoothDeviceBondInfo.getInstance().isMoreThanOneEarPiecesHeadsetPaired())
        {
            PhubBluetoothDeviceBondInfo.getInstance().disassociateEarPieces("from ConnectionFactory - initializeMgr", "-", 3);
            Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
            HeadsetAction.getInstance().broadcastResponsetoHeadset(102, -1);
        } else
        if (i == 1)
        {
            boolean flag1 = PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
            Log.d("EPConnectionHandlerImpl", (new StringBuilder()).append("initializeConnMgr(): isEPLeftBonded: ").append(flag1).toString());
            if (connManager != null)
            {
                ConnectionFactory.getConnectionFactory().setConnManager(connManager);
                connManager.associatePhoneEPLeft();
                Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
                return;
            }
        } else
        if (i == 2)
        {
            boolean flag = PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
            Log.d("EPConnectionHandlerImpl", (new StringBuilder()).append("initializeConnMgr(): isEPRightBonded: ").append(flag).toString());
            if (connManager != null)
            {
                ConnectionFactory.getConnectionFactory().setConnManager(connManager);
                connManager.associatePhoneEPRight();
                Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
                return;
            }
        }
    }

    public boolean isEpSoftwareUpgradeOnProcess(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return isEPRightSoftwareUpgradeOnProcess;

        case 1: // '\001'
            return isEPLeftSoftwareUpgradeOnProcess;
        }
        return false;
    }

    public void setBassBoostMode(int i, String s)
    {
        Log.d("EPConnectionHandlerImpl", (new StringBuilder()).append("[BassBoost] setBassBoostMode(").append(i).append(", ").append(s).append(")").toString());
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            editor.putString((new StringBuilder()).append("ep_bass_boost_mode").append(i).toString(), s);
            editor.commit();
            Log.d("EPConnectionHandlerImpl", (new StringBuilder()).append("[BassBoost] setBassBoostMode value = ").append(s).toString());
        }
    }

    public void setEPDependendentOnPrimaryFlag(int i, boolean flag)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            switch (i)
            {
            case 2: // '\002'
                editor.putBoolean("epRDependendentOnPrimaryFlag", flag);
                break;

            case 1: // '\001'
                editor.putBoolean("epLDependendentOnPrimaryFlag", flag);
                break;
            }
            editor.commit();
        }
    }

    public void setEndPointForceUpgradeRequestFlag(int i, boolean flag)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            switch (i)
            {
            case 2: // '\002'
                editor.putBoolean("ep_r_force_upgrade_Flag", flag);
                break;

            case 1: // '\001'
                editor.putBoolean("ep_l_force_upgrade_Flag", flag);
                break;
            }
            editor.commit();
        }
    }

    public void setEndPointLinkKey(int i, String s)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            switch (i)
            {
            case 2: // '\002'
                editor.putString("ep_r_device_linkkey", s);
                break;

            case 1: // '\001'
                editor.putString("ep_l_device_linkkey", s);
                break;
            }
            editor.commit();
        }
    }

    public void setEndPointRole(int i, String s)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            switch (i)
            {
            case 2: // '\002'
                editor.putString("ep_r_device_role", s);
                break;

            case 1: // '\001'
                editor.putString("ep_l_device_role", s);
                break;
            }
            editor.commit();
        }
    }

    public void setEndpointCommonLinkKey(String s)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            editor.putString("ep_common_device_linkkey", s);
            editor.commit();
        }
    }

    public void setEndpointConnectedEPAddress(int i, String s)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            switch (i)
            {
            case 2: // '\002'
                editor.putString("ep_r_device_connected_ep", s);
                break;

            case 1: // '\001'
                editor.putString("ep_l_device_connected_ep", s);
                break;
            }
            editor.commit();
        }
    }

    public void setEndpointMode(int i, String s)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            switch (i)
            {
            case 2: // '\002'
                editor.putString("ep_r_device_mode", s);
                break;

            case 1: // '\001'
                editor.putString("ep_l_device_mode", s);
                break;
            }
            editor.commit();
        }
    }

    public void setEpBatteryIndPercentage(int i, String s)
    {
        if (getContext() != null)
        {
            android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
            switch (i)
            {
            case 2: // '\002'
                editor.putString((new StringBuilder()).append("ep_battery_level").append(i).toString(), s);
                break;

            case 1: // '\001'
                editor.putString((new StringBuilder()).append("ep_battery_level").append(i).toString(), s);
                break;
            }
            editor.commit();
        }
    }

    public void setEpSoftwareUpgradeOnProcess(int i, boolean flag)
    {
        switch (i)
        {
        case 2: // '\002'
            isEPRightSoftwareUpgradeOnProcess = flag;
            return;

        case 1: // '\001'
            isEPLeftSoftwareUpgradeOnProcess = flag;
            return;
        }
    }

    public void updateState(int i, int j)
    {
        super.updateState(i, j);
        if (i == 1)
        {
            if (j == 3)
            {
                HandleMessageService.COUNT_EPL_CONNECT_ATTEMPT = 3;
                Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
                HeadsetAction.getInstance().updateEarpieceUIBroadcast(i, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a018d));
            } else
            {
                if (j == 4)
                {
                    Utils.updateStatus("EPConnectionHandlerImpl", "EPL Disconnected. If required, change status of secondary ep", i, 1, (byte)3);
                    if (getEndpointMode(1).equals("Operational") && getEPDependendentOnPrimaryFlag(2) && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(2) == 3)
                        Utils.updateStatus("EPConnectionHandlerImpl", "EPL Disconnected. Secondary ep status changed to disconnected", i, 1, (byte)3);
                    String s1 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString((new StringBuilder()).append("firmware_progress").append(i).toString(), null);
                    if (s1 != null && s1.contains("PROGRESS"))
                    {
                        Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                        HeadsetAction.getInstance().broadcastResponsetoHeadset(102, -1);
                    } else
                    {
                        Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_FAILURE,RESPONSE_CODE_BT_DISCONNECT", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                        HeadsetAction.getInstance().broadcastResponsetoHeadset(102, 0);
                    }
                    HeadsetAction.getInstance().updateEarpieceUIBroadcast(i, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a0190));
                    EPVersionController.setController(null);
                    return;
                }
                if (j == 0)
                {
                    if (HeadsetAction.getInstance().getCurrentState() != 5)
                    {
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(i).toString(), Constants.EP_STATUS_UNABLE_CONNECT);
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_subtext").append(i).toString(), Constants.EP_SUBSTATUS_UNABLE_CONNECT);
                        Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                        HeadsetAction.getInstance().broadcastResponsetoHeadset(102, -1);
                        if (HeadsetAction.getInstance().getCurrentAction() == 0)
                            HeadsetAction.getInstance().broadcastEPFirmwareUpdateFailed(i);
                    }
                    EPVersionController.setController(null);
                    return;
                }
            }
        } else
        if (i == 2)
        {
            if (j == 3)
            {
                HandleMessageService.COUNT_EPR_CONNECT_ATTEMPT = 3;
                Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
                HeadsetAction.getInstance().updateEarpieceUIBroadcast(i, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a0193));
            } else
            if (j == 4)
            {
                Utils.updateStatus("EPConnectionHandlerImpl", "EPR Disconnected. If required, change status of secondary ep", i, 1, (byte)3);
                if (getEndpointMode(2).equals("Operational") && getEPDependendentOnPrimaryFlag(1) && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(1) == 3)
                    Utils.updateStatus("EPConnectionHandlerImpl", "EPR Disconnected. Secondary ep status changed to disconnected", i, 1, (byte)3);
                String s = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString((new StringBuilder()).append("firmware_progress").append(i).toString(), null);
                if (s != null && s.contains("PROGRESS"))
                {
                    Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                    HeadsetAction.getInstance().broadcastResponsetoHeadset(102, -1);
                } else
                {
                    Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_FAILURE,RESPONSE_CODE_BT_DISCONNECT", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                    HeadsetAction.getInstance().broadcastResponsetoHeadset(102, 0);
                }
                HeadsetAction.getInstance().updateEarpieceUIBroadcast(i, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a0196));
                EPVersionController.setController(null);
            } else
            if (j == 0 && HeadsetAction.getInstance().getCurrentState() != 5)
            {
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(i).toString(), Constants.EP_STATUS_UNABLE_CONNECT);
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_subtext").append(i).toString(), Constants.EP_SUBSTATUS_UNABLE_CONNECT);
                Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                HeadsetAction.getInstance().broadcastResponsetoHeadset(102, -1);
                if (HeadsetAction.getInstance().getCurrentAction() == 0)
                    HeadsetAction.getInstance().broadcastEPFirmwareUpdateFailed(i);
            }
            EPVersionController.setController(null);
            return;
        }
    }
}
