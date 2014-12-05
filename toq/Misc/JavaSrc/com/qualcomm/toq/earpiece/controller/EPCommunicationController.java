// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.controller;

import android.content.*;
import android.content.res.AssetManager;
import android.os.Environment;
import android.text.TextUtils;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.controller.TFTPController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.tftp.FTPBaseMessage;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.earpiece.utils.*;
import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.earpiece.controller:
//            EPVersionController

public class EPCommunicationController extends DefaultController
{

    private static final String TAG = "EPCommunicationController";
    private static boolean isSWUpdateTimerRequired = true;
    private static EPCommunicationController mInstance = null;
    private static Timer mSWUpdateTimer = null;
    private int EP_BATTERY_RANGE;
    private String PBEMode;
    public String appName;
    private EPConnectionHandlerImpl epConnectionHandler;

    private EPCommunicationController()
    {
        appName = "EP_COMMUNICATION_CONTROLLER";
        PBEMode = "Off";
        epConnectionHandler = null;
        EP_BATTERY_RANGE = 20;
    }

    private void broadcastEPFirmwareUpdateLowBattery(int i)
    {
        Intent intent = new Intent();
        intent.setAction(Constants.ACTION_EAR_PIECE_UI_UPDATE);
        intent.putExtra("endpointtype", i);
        intent.putExtra("state", 2020);
        intent.putExtra("ep_firmware_update_error", -1);
        ToqApplication.getAppContext().sendBroadcast(intent);
    }

    private void broadcastEPFirmwareUpdateSuccess(int i)
    {
        Intent intent = new Intent();
        intent.setAction(Constants.ACTION_EAR_PIECE_UI_UPDATE);
        intent.putExtra("endpointtype", i);
        intent.putExtra("state", 101);
        intent.putExtra("ep_firmware_update_error", -1);
        ToqApplication.getAppContext().sendBroadcast(intent);
    }

    public static EPCommunicationController getEPCommunicationController()
    {
        com/qualcomm/toq/earpiece/controller/EPCommunicationController;
        JVM INSTR monitorenter ;
        if (mInstance == null)
            mInstance = new EPCommunicationController();
        com/qualcomm/toq/earpiece/controller/EPCommunicationController;
        JVM INSTR monitorexit ;
        return mInstance;
        Exception exception;
        exception;
        com/qualcomm/toq/earpiece/controller/EPCommunicationController;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private EPConnectionHandlerImpl getEPHandler()
    {
        if (epConnectionHandler == null)
            epConnectionHandler = EPConnectionHandlerImpl.getConnectionHandler();
        return epConnectionHandler;
    }

    private String getNewLinkKey()
    {
        StringBuffer stringbuffer = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < 16; i++)
        {
            stringbuffer.append(10 + random.nextInt(89) % 100);
            if (i != 15)
                stringbuffer.append(":");
        }

        return stringbuffer.toString();
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private void testing(final int endPointType)
    {
        if (mSWUpdateTimer == null)
        {
            mSWUpdateTimer = new Timer();
            isSWUpdateTimerRequired = true;
        }
        mSWUpdateTimer.scheduleAtFixedRate(new TimerTask() {

            final EPCommunicationController this$0;
            final int val$endPointType;

            public void run()
            {
                if (EPCommunicationController.isSWUpdateTimerRequired)
                {
                    EPCommunicationController.isSWUpdateTimerRequired = false;
                    if (EPCommunicationController.mSWUpdateTimer != null)
                    {
                        EPCommunicationController.mSWUpdateTimer.cancel();
                        EPCommunicationController.mSWUpdateTimer = null;
                    }
                    broadcastEPFirmwareUpdateSuccess(endPointType);
                }
                if (EPCommunicationController.mSWUpdateTimer != null)
                {
                    EPCommunicationController.mSWUpdateTimer.cancel();
                    EPCommunicationController.mSWUpdateTimer = null;
                }
            }

            
            {
                this$0 = EPCommunicationController.this;
                endPointType = i;
                super();
            }
        }
, 10000L, 10000L);
    }

    public void broadcastEPStateUpdate(int i)
    {
        if (ConnectionFactory.getConnectionFactory() != null)
        {
            Intent intent = new Intent(Constants.ACTION_EP_CONFIG_STATE_UPDATE);
            intent.putExtra("endpointtype", i);
            ToqApplication.getAppContext().sendBroadcast(intent);
        }
    }

    public String getLocalFileName(int i)
    {
        Context context;
        ConnectionFactory connectionfactory;
        String s;
        context = ToqApplication.getAppContext();
        connectionfactory = ConnectionFactory.getConnectionFactory();
        s = "";
        if (connectionfactory == null || context == null) goto _L2; else goto _L1
_L1:
        String s2;
        String s3;
        SharedPreferences sharedpreferences = context.getSharedPreferences("watch_details_pref", 0);
        s2 = "";
        s3 = "";
        if (sharedpreferences != null)
        {
            s2 = sharedpreferences.getString((new StringBuilder()).append("hardware_revision").append(i).toString(), "");
            s3 = sharedpreferences.getString((new StringBuilder()).append("build_target").append(i).toString(), null);
        }
        if ((s2 == null || !HeadsetUtils.isEPBuildVariantSupported(s2)) && (s3 == null || !HeadsetUtils.isEPBuildVariantSupported(s3))) goto _L4; else goto _L3
_L3:
        AssetManager assetmanager;
        String as[];
        int j;
        int k;
        String s1;
        boolean flag;
        if (s3 != null && !TextUtils.isEmpty(s3) && s3.equalsIgnoreCase("ep_p2"))
        {
            Log.d("EPCommunicationController", "Choosing zip file based on EP build target P2");
            s = "ep_p2.zip";
        } else
        if (s2.equalsIgnoreCase("P2") || s2.equalsIgnoreCase("MP"))
        {
            Log.d("EPCommunicationController", "Choosing zip file based on EP Hardware revision");
            s = "ep_p2.zip";
        } else
        {
            s = (new StringBuilder()).append("ep_").append(s2).append(".zip").toString();
        }
_L2:
        if (context == null)
            break MISSING_BLOCK_LABEL_373;
        assetmanager = context.getAssets();
        try
        {
            as = assetmanager.list("");
        }
        catch (IOException ioexception)
        {
            Log.e("EPCommunicationController", (new StringBuilder()).append("Failed to get asset file list: ").append(ioexception.toString()).toString());
            return null;
        }
        j = as.length;
        k = 0;
_L7:
        if (k >= j) goto _L6; else goto _L5
_L5:
        s1 = as[k];
        if (i != 1 && i != 2)
            continue; /* Loop/switch isn't completed */
        flag = s1.equalsIgnoreCase(s);
        if (flag)
            return s1;
        continue; /* Loop/switch isn't completed */
_L4:
        return null;
        Exception exception;
        exception;
        Log.e("EPCommunicationController", (new StringBuilder()).append("Failed to get version from filename in assets folder: ").append(s1).append(" details: ").append(exception.toString()).toString());
        k++;
          goto _L7
_L6:
        return null;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, final int transactionId, final int endPointType)
    {
        Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("Processing EPComm message. appID:").append(i).append(" messageType:").append(j).append(" transID:").append(transactionId).toString(), endPointType, 1, (byte)1);
        if (i != 19) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch 0 7: default 100
    //                   0 101
    //                   1 100
    //                   2 100
    //                   3 625
    //                   4 880
    //                   5 100
    //                   6 100
    //                   7 715;
           goto _L2 _L3 _L2 _L2 _L4 _L5 _L2 _L2 _L6
_L2:
        return;
_L3:
        JSONObject jsonobject1;
        String s5;
        String s6;
        String s7;
        jsonobject1 = (JSONObject)obj;
        Log.d("EPCommunicationController", (new StringBuilder()).append("VersionInd Payload =").append(jsonobject1.toString()).toString());
        s5 = jsonobject1.getString("role");
        s6 = jsonobject1.getString("link_key_ep");
        s7 = jsonobject1.getString("mode");
        String s8;
        String s9;
        s8 = "";
        s9 = "";
        String s12;
        s8 = jsonobject1.getString("epdl_ota_version").trim();
        s12 = jsonobject1.getString("connected_ep");
        s9 = s12;
_L11:
        String s11 = jsonobject1.getString("bass_boost_mode").trim();
        String s10 = s11;
_L13:
        Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("EPMessage:Received  state[").append(s5).append("][").append(s7).append("]").toString(), endPointType, 1, (byte)7);
        getEPHandler().setEndPointRole(endPointType, s5);
        if (!s8.equalsIgnoreCase("1.1")) goto _L8; else goto _L7
_L7:
        Log.d("EPCommunicationController", "Set FTPBaseMessage.BLOCK_SIZE = 1536");
        FTPBaseMessage.BLOCK_SIZE = 1536;
_L14:
        getEPHandler().setEndPointLinkKey(endPointType, s6);
        getEPHandler().setEndpointMode(endPointType, s7);
        getEPHandler().setEndpointConnectedEPAddress(endPointType, s9);
        getEPHandler().setBassBoostMode(endPointType, s10);
        Log.d("EPCommunicationController", (new StringBuilder()).append("connectedEPValue = ").append(s9).append(", epBassBoostMode = ").append(s10).append(", endPointType = ").append(endPointType).toString());
        if (!s7.equals("Config")) goto _L10; else goto _L9
_L9:
        Thread thread = new Thread() {

            final EPCommunicationController this$0;
            final int val$endPointType;
            final int val$transactionId;

            public void run()
            {
                if (handleEPModeConfigurationRev1(transactionId, endPointType))
                {
                    return;
                } else
                {
                    Utils.updateStatus("EPCommunicationController", "EPMessage: Not configured!!!", endPointType, 1, (byte)7);
                    return;
                }
            }

            
            {
                this$0 = EPCommunicationController.this;
                transactionId = i;
                endPointType = j;
                super();
            }
        }
;
        thread.start();
_L12:
        if (HeadsetAction.getInstance().getCurrentAction() != 0)
        {
            Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
            HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
            HeadsetAction.getInstance().setCancelTimer();
            if (endPointType == 2)
                HeadsetAction.getInstance().updateEarpieceUIBroadcast(endPointType, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a0194));
            if (endPointType == 1)
            {
                HeadsetAction.getInstance().updateEarpieceUIBroadcast(endPointType, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a018e));
                return;
            }
        }
          goto _L2
        Exception exception3;
        exception3;
        exception3.printStackTrace();
          goto _L11
        Exception exception2;
        exception2;
        Log.e("EPCommunicationController", (new StringBuilder()).append("Failed to send file/configure EP: details: ").append(exception2.toString()).toString());
          goto _L12
        Exception exception4;
        exception4;
        Log.e("EPCommunicationController", "[BassBoost] Exception in retrieving bass_boost_mode field");
        s10 = null;
          goto _L13
_L8:
        Log.d("EPCommunicationController", "Set FTPBaseMessage.BLOCK_SIZE = 512");
        FTPBaseMessage.BLOCK_SIZE = 512;
          goto _L14
_L10:
        if (!s7.equals("Operational")) goto _L12; else goto _L15
_L15:
        handleEPModeConfigurationRev1(0, endPointType);
          goto _L12
_L4:
        String s4 = getEPHandler().getEndPointRole(endPointType);
        Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("[ChangeRoleResponse] Got response for changeRoleRequest(").append(s4).append(")").toString(), endPointType, 1, (byte)1);
        getEPCommunicationController().sendChageModeRequestMessage("Operational", 0, endPointType);
        Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("[ChangeRoleResponse] Sent ChangeModeRequest for endPointType = ").append(endPointType).toString(), endPointType, 1, (byte)1);
        return;
_L6:
        try
        {
            Log.d("EPCommunicationController", (new StringBuilder()).append("[BassBoost] Received bassBoostResponse for endPointType = ").append(endPointType).toString());
            String s3 = ((JSONObject)obj).getString("bass_boost_status");
            Log.d("EPCommunicationController", (new StringBuilder()).append("[BassBoost] bassBoostResponse Status = ").append(s3).toString());
            if (s3.toLowerCase(Locale.US).equalsIgnoreCase("pass"))
            {
                Log.d("EPCommunicationController", (new StringBuilder()).append("[BassBoost] Storing LAST_KNOWN_HEADSET_PBE_MODE = ").append(PBEMode).toString());
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_known_headset_mode", PBEMode);
            }
            Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("EPMessage:Received bassBoostResponse. Status:").append(s3).toString(), endPointType, 1, (byte)7);
            return;
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        return;
_L5:
        try
        {
            JSONObject jsonobject = (JSONObject)obj;
            String s = jsonobject.getString("mode");
            String s1 = jsonobject.getString("name");
            String s2 = jsonobject.getString("percentage");
            getEPHandler().setEpBatteryIndPercentage(endPointType, s2);
            Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("EPMessage:Received BatteryInd. modeValue:").append(s).append(" name:").append(s1).append(" percentageValue:").append(s2).toString(), endPointType, 1, (byte)7);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return;
          goto _L11
    }

    public boolean handleEPModeConfiguration(int i, int j)
    {
        return true;
    }

    public boolean handleEPModeConfigurationRev1(int i, int j)
    {
        boolean flag;
        ConnectionFactory connectionfactory;
        String s;
        int k;
        flag = true;
        connectionfactory = ConnectionFactory.getConnectionFactory();
        Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("EPMessage:rev1 Action= ").append(HeadsetAction.getInstance().getCurrentAction()).append(", UpgradeState = ").append(connectionfactory.getEndPointUpgradeState(j)).append(", versionstate = ").append(connectionfactory.getEndPointVersionState(j)).toString(), j, 1, (byte)7);
        if (HeadsetAction.getInstance().getCurrentAction() != 0)
            break MISSING_BLOCK_LABEL_687;
        s = getEPHandler().getEpBatteryIndPercentage(j);
        if (s == null)
        {
            boolean flag1 = TextUtils.isEmpty(s);
            k = 0;
            if (flag1)
                break MISSING_BLOCK_LABEL_121;
        }
        int l = Integer.parseInt(s);
        k = l;
_L1:
        Log.d(Constants.EP_TAG, (new StringBuilder()).append("Battery range is = ").append(k).toString());
        Exception exception;
        if (k > EP_BATTERY_RANGE && (connectionfactory.getEndPointUpgradeState(j) || ConnectionFactory.getConnectionFactory().getCustomsBuildFlag()))
        {
            if (connectionfactory.getEndPointVersionState(j) == 1)
            {
                connectionfactory.setEndPointVersionState(j, 2);
                if (j == 2)
                    HeadsetAction.getInstance().updateEarpieceUIBroadcast(j, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a0197));
                if (j == 1)
                    HeadsetAction.getInstance().updateEarpieceUIBroadcast(j, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a0191));
                EPVersionController.getEPVersionController().sendAlohaWaitUpdateMessage(0, j);
            } else
            if (connectionfactory.getEndPointVersionState(j) == 2)
                if (getEPHandler().getEndpointMode(j).equals("Config"))
                {
                    Constants.EP_TFTP_PATH = (new StringBuilder()).append(ToqApplication.getAppContext().getFilesDir().getAbsoluteFile()).append("/TFTP/").toString();
                    getEPHandler().setEpSoftwareUpgradeOnProcess(j, true);
                    flag = pushFileThroughTFTPZipVersion(11, j);
                    getEPHandler().setEpSoftwareUpgradeOnProcess(j, false);
                    Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("Earpiece Firmware push result: ").append(flag).toString(), j, 1, (byte)1);
                    if (!flag)
                    {
                        Utils.updateStatus("EPCommunicationController", "EPMessage:->Error in File transfer!!!", j, 1, (byte)7);
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(j).toString(), Constants.EP_STATUS_UPDATE_REQUIRED);
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_subtext").append(j).toString(), "");
                    } else
                    {
                        Utils.updateStatus("EPCommunicationController", "EPMessage:->File transfer completed", j, 1, (byte)7);
                        sendChageModeRequestMessage("Operational", 0, j);
                        getEPHandler().setEndpointMode(j, "Operational");
                        Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE [Instread of success we are sending failure from Connection handler impl]", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                        testing(j);
                    }
                } else
                {
                    Utils.updateStatus("EPCommunicationController", "EPMessage:Earpiece needs update but it is not in Config mode!!! Leads to send waitUpdate message", j, 1, (byte)7);
                    EPVersionController.getEPVersionController().sendAlohaWaitUpdateMessage(i, j);
                    return false;
                }
        } else
        {
            if (k <= EP_BATTERY_RANGE && connectionfactory.getEndPointUpgradeState(j))
            {
                Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE--Low Battery", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
                broadcastEPFirmwareUpdateLowBattery(j);
                return false;
            }
            Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
            HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
            if (PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded() && PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded() && !connectionfactory.getEndPointUpgradeState(1))
            {
                Log.d("EPCommunicationController", ".......... Firmware update sent.........");
                broadcastEPFirmwareUpdateSuccess(1);
            }
        }
_L2:
        return flag;
        exception;
        k = 0;
          goto _L1
        if (HeadsetAction.getInstance().getCurrentAction() == 1 || HeadsetAction.getInstance().getCurrentAction() != 2);
          goto _L2
    }

    public boolean handleEPRoleConfigurationRev3(int i, int j)
    {
        byte byte0;
        boolean flag;
        if (j == 1)
            byte0 = 2;
        else
            byte0 = 1;
        if (j == 1)
            flag = PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
        else
            flag = PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
        if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(j) != 3 || flag && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte0) != 3 && getEPHandler().getEndPointRole(byte0).contains("Request"))
        {
            String s = getEPHandler().getEndPointRole(j);
            String s1 = getEPHandler().getEndPointRole(byte0);
            if (s.contains("Request"))
                if (s.contains("Primary"))
                    getEPHandler().setEndPointRole(j, "PrimaryPendingRequest");
                else
                    getEPHandler().setEndPointRole(j, "SecondaryPendingRequest");
            if (s1.contains("Request"))
                if (s1.contains("Primary"))
                    getEPHandler().setEndPointRole(byte0, "PrimaryPendingRequest");
                else
                    getEPHandler().setEndPointRole(byte0, "SecondaryPendingRequest");
            return false;
        }
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        this;
        JVM INSTR monitorenter ;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        String s8;
        String s9;
        String s10;
        String s11;
        s2 = sharedpreferences.getString("associated_ep_l_device_name", null);
        s3 = sharedpreferences.getString("associated_ep_r_device_name", null);
        s4 = sharedpreferences.getString("associated_ep_l_device_address", null);
        s5 = sharedpreferences.getString("associated_ep_r_device_address", null);
        s6 = getEPHandler().getEndPointRole(1);
        s7 = getEPHandler().getEndPointRole(2);
        s8 = getEPHandler().getEndPointLinkKey(1);
        s9 = getEPHandler().getEndPointLinkKey(2);
        s10 = getEPHandler().getEndpointCommonLinkKey();
        s11 = getNewLinkKey();
        String s12 = ":00:00:10:";
        if (j != 1) goto _L2; else goto _L1
_L1:
        if (s6.contains("Request")) goto _L3; else goto _L2
_L2:
        if (j != 2) goto _L5; else goto _L4
_L4:
        if (!s7.contains("Request")) goto _L5; else goto _L3
_L3:
        if (j != 1) goto _L7; else goto _L6
_L6:
        if (s9 == null) goto _L9; else goto _L8
_L8:
        if (s9.isEmpty()) goto _L9; else goto _L10
_L10:
        if (!s8.equals(s9) || s8.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00")) goto _L12; else goto _L11
_L11:
        s10 = s8;
          goto _L13
_L31:
        Exception exception;
        String s13;
        String s14;
        StringBuilder stringbuilder;
        String s15;
        String s17;
        if (s13.contains("Primary"))
            s14 = "Primary";
        else
            s14 = "Secondary";
        stringbuilder = (new StringBuilder()).append("Other ep address(");
        if (j == 1)
            s15 = s5;
        else
            s15 = s4;
        Utils.updateStatus("EPCommunicationController", stringbuilder.append(s15).append(")").toString(), j, 1, (byte)1);
        if (j != 1) goto _L15; else goto _L14
_L14:
        if (s5 == null) goto _L17; else goto _L16
_L16:
        if (!s5.isEmpty()) goto _L18; else goto _L17
_L30:
        sendChageRoleRequestMessage(s2, s4, s14, (new StringBuilder()).append(s17).append(s12).append(s10).toString(), i, j);
        s17;
_L29:
        getEPHandler().setEndPointLinkKey(j, s10);
        this;
        JVM INSTR monitorexit ;
        return true;
_L12:
        if (s10 == null) goto _L20; else goto _L19
_L19:
        if (!s10.isEmpty()) goto _L13; else goto _L20
_L20:
        s10 = s11;
        getEPHandler().setEndpointCommonLinkKey(s10);
          goto _L13
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L9:
        s10 = s8;
          goto _L13
_L7:
        if (j != 2) goto _L13; else goto _L21
_L21:
        if (s8 == null) goto _L23; else goto _L22
_L22:
        if (s8.isEmpty()) goto _L23; else goto _L24
_L24:
        if (!s8.equals(s9) || s8.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00")) goto _L26; else goto _L25
_L25:
        s10 = s9;
          goto _L13
_L26:
        if (s10 == null) goto _L28; else goto _L27
_L27:
        if (!s10.isEmpty()) goto _L13; else goto _L28
_L28:
        s10 = s11;
        getEPHandler().setEndpointCommonLinkKey(s10);
          goto _L13
_L15:
        if (s4 == null)
            break MISSING_BLOCK_LABEL_783;
        if (s4.isEmpty())
            break MISSING_BLOCK_LABEL_783;
_L32:
        String s16 = (new StringBuilder()).append(s4).append(s12).append(s10).toString();
        sendChageRoleRequestMessage(s3, s5, s14, s16, i, j);
          goto _L29
_L5:
        this;
        JVM INSTR monitorexit ;
        return false;
_L18:
        s17 = s5;
          goto _L30
_L13:
        if (j == 1)
            s13 = s6;
        else
            s13 = s7;
          goto _L31
_L17:
        s12 = ":00:00:00:";
        s10 = "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00";
        s17 = "00:00:00:00:00:00";
          goto _L30
_L23:
        s10 = s9;
          goto _L13
        s4 = "00:00:00:00:00:00";
        s12 = ":00:00:00:";
        s10 = "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00";
          goto _L32
    }

    public boolean pushFileThroughTFTPZipVersion(int i, int j)
    {
        String s;
label0:
        {
            if (j != 1)
            {
                s = null;
                if (j != 2)
                    break label0;
            }
            s = getLocalFileName(j);
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        String s1;
        File file;
        s1 = (new StringBuilder()).append(Constants.EP_TFTP_PATH).append(s).toString();
        file = new File(s1);
        file.setWritable(true);
        if (file.exists()) goto _L4; else goto _L3
_L3:
        boolean flag1 = true;
_L6:
        if (flag1)
            break; /* Loop/switch isn't completed */
        Log.e("EPCommunicationController", (new StringBuilder()).append("Problem in deleting previous firmware file in device ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
        this;
        JVM INSTR monitorexit ;
        return false;
_L4:
        boolean flag7 = file.exists();
        flag1 = false;
        if (!flag7)
            continue; /* Loop/switch isn't completed */
        if (!file.delete())
            break MISSING_BLOCK_LABEL_174;
        Log.d("EPCommunicationController", (new StringBuilder()).append("Old Zip file path: ").append(s1).append(", Deletion Success from SD").toString());
        flag1 = true;
        continue; /* Loop/switch isn't completed */
        Log.d("EPCommunicationController", (new StringBuilder()).append("Old Zip file path: ").append(s1).append(", Deletion Failure from SD").toString());
        flag1 = false;
        if (true) goto _L6; else goto _L5
_L18:
        this;
        JVM INSTR monitorexit ;
        boolean flag;
        Exception exception1;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.e("EPCommunicationController", (new StringBuilder()).append("Error in pushFileThroughTFTPZipVersion.").append(exception.getMessage()).toString());
            exception.printStackTrace();
            flag = false;
        }
_L16:
        return flag;
_L5:
        boolean flag3;
        boolean flag2 = file.getParentFile().mkdirs();
        Log.d("EPCommunicationController", (new StringBuilder()).append(file.getAbsolutePath()).append(" dest folder creation: ").append(flag2).toString());
        file.setWritable(true);
        flag3 = ConnectionFactory.getConnectionFactory().getCustomsBuildFlag();
        Object obj;
        boolean flag4;
        obj = null;
        flag4 = false;
        if (!flag3) goto _L8; else goto _L7
_L7:
        File file1;
        String s2 = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/TFTP/").toString();
        file1 = new File((new StringBuilder()).append(s2).append("custom/").append(s).toString());
        if (!file1.exists())
            file1.getParentFile().mkdirs();
        if (!file1.exists() || file1.length() <= 0L) goto _L10; else goto _L9
_L9:
        flag4 = true;
        obj = new FileInputStream(file1);
        Utils.updateStatus("EPCommunicationController", "EPMessage:Custom build", j, 1, (byte)7);
_L8:
        if (flag4)
            break MISSING_BLOCK_LABEL_477;
        obj = ToqApplication.getAppContext().getAssets().open(s);
        Utils.updateStatus("EPCommunicationController", "EPMessage:Assets build", j, 1, (byte)7);
        FileOutputStream fileoutputstream;
        byte abyte0[];
        Log.d("EPCommunicationController", (new StringBuilder()).append("destinationZipFile = ").append(file).toString());
        fileoutputstream = new FileOutputStream(file);
        abyte0 = new byte[512];
_L11:
        int k = ((InputStream) (obj)).read(abyte0);
        if (k <= 0)
            break MISSING_BLOCK_LABEL_548;
        fileoutputstream.write(abyte0, 0, k);
          goto _L11
        ZipFile zipfile;
        Enumeration enumeration;
        ((InputStream) (obj)).close();
        fileoutputstream.close();
        Utils.updateStatus("EPCommunicationController", "EPMessage:Copied zip to assets", j, 1, (byte)7);
        zipfile = new ZipFile(file);
        enumeration = zipfile.entries();
_L13:
        boolean flag5 = enumeration.hasMoreElements();
        File file2;
        file2 = null;
        if (!flag5)
            break MISSING_BLOCK_LABEL_824;
        ZipEntry zipentry;
        String s3;
        zipentry = (ZipEntry)enumeration.nextElement();
        s3 = zipentry.getName();
        if (!s3.contains(".BIN")) goto _L13; else goto _L12
_L12:
        File file3;
        String s4 = (new StringBuilder()).append(s1.substring(0, s1.lastIndexOf("/"))).append("/").append(s3.substring(0, s3.indexOf("."))).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).append(s3.substring(s3.indexOf("."))).toString();
        file3 = new File(s4);
        InputStream inputstream;
        FileOutputStream fileoutputstream1;
        if (file3.exists() && file3.length() > 0L)
            file3.delete();
        file3.getParentFile().mkdirs();
        inputstream = zipfile.getInputStream(zipentry);
        fileoutputstream1 = new FileOutputStream(file3);
_L14:
        int l = inputstream.read(abyte0);
        if (l <= 0)
            break MISSING_BLOCK_LABEL_802;
        fileoutputstream1.write(abyte0, 0, l);
          goto _L14
        inputstream.close();
        fileoutputstream1.close();
        Log.d("EPCommunicationController", "Extracted");
        file2 = file3;
        if (zipfile == null)
            break MISSING_BLOCK_LABEL_834;
        zipfile.close();
        this;
        JVM INSTR monitorexit ;
        flag = false;
        if (file2 == null) goto _L16; else goto _L15
_L15:
        boolean flag6;
        flag = TFTPController.getTFTPController(j).sendFile(file2.getName(), new ArrayList(), (byte)i);
        flag6 = file2.delete();
        if (flag6)
            break MISSING_BLOCK_LABEL_887;
        Log.d("EPCommunicationController", "Error in temporary file deletion!!!");
        Log.d("EPCommunicationController", (new StringBuilder()).append("Bin File deleted: ").append(flag6).toString());
          goto _L16
_L2:
        Log.d("EPCommunicationController", "endpointZipFileName is null");
        flag = false;
          goto _L16
        exception1;
        continue; /* Loop/switch isn't completed */
_L10:
        obj = null;
        flag4 = false;
          goto _L8
        exception1;
        if (true) goto _L18; else goto _L17
_L17:
    }

    public void sendChageModeRequestMessage(String s, int i, int j)
    {
        try
        {
            sendControllerMessageData(j, 19, 20, (new StringBuilder()).append("{\"mode\":\"").append(s).append("\", \"phone_addr\":\"").append(BTConnectionManager.sLocalBluetoothAddress).append("\"}").toString(), 1, i);
            Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("[ChangeModeRequestInd] sent changeModeRequestMessage[Operational] = ").append(s).toString(), j, 1, (byte)1);
            Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("EPMessage:->Sent changeModeRequestMessage[Operational] = ").append(s).toString(), j, 1, (byte)7);
            return;
        }
        catch (Exception exception)
        {
            Log.e("EPCommunicationController", (new StringBuilder()).append("Exception in sendChageModeRequestMessage(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void sendChageRoleRequestMessage(String s, String s1, String s2, String s3, int i, int j)
    {
        try
        {
            String s4 = (new StringBuilder()).append("{\"name\":\"").append(s).append("\", \"role\":\"").append(s2).append("\", \"link_key_ep\":\"").append(s3).append("\"}").toString();
            sendControllerMessageData(j, 19, 20, s4, 2, i);
            Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("EPMessage:->Sent changeRoleRequest-").append(s4).toString(), j, 1, (byte)7);
            return;
        }
        catch (Exception exception)
        {
            Log.e("EPCommunicationController", (new StringBuilder()).append("Exception in sendChageRoleRequestMessage(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
label0:
        {
label1:
            {
                if (i != 1 && i != 2 || !getEPHandler().getEPDependendentOnPrimaryFlag(i))
                    break label0;
                ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
                if (connectionfactory != null)
                {
                    com.qualcomm.toq.base.endpoint.IEndPoint iendpoint;
                    if (i == 1)
                        iendpoint = connectionfactory.getEndPoint(1);
                    else
                        iendpoint = connectionfactory.getEndPoint(2);
                    if (connectionfactory.getContext() != null && (iendpoint != null || getEPHandler().getEPDependendentOnPrimaryFlag(i)))
                    {
                        if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(i) == 3)
                            break label1;
                        Utils.updateStatus("EPCommunicationController", "Secondary ear piece is not in CONNECTED state. Just neglect the message.", i, 1, (byte)1);
                    }
                }
                return;
            }
            Utils.updateStatus("EPCommunicationController", "Secondary ear piece is in CONNECTED state with primary.", i, 1, (byte)1);
            if (i == 1)
                i = 2;
            else
                i = 1;
            k = 22;
        }
        super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendbassBoostRequest(String s, int i, int j)
    {
        try
        {
            PBEMode = s;
            String s1 = (new StringBuilder()).append("{\"bass_boost_mode\":\"").append(s).append("\"}").toString();
            sendControllerMessageData(j, 19, 20, s1, 6, i);
            Log.d("EPCommunicationController", (new StringBuilder()).append("[BassBoost] Sent bassBoostRequest payload = ").append(s1).toString());
            Utils.updateStatus("EPCommunicationController", (new StringBuilder()).append("EPMessage:->Sent bassBoostRequest-").append(s1).toString(), j, 1, (byte)7);
            return;
        }
        catch (Exception exception)
        {
            Log.e("EPCommunicationController", (new StringBuilder()).append("Exception in sendbassBoostRequest: ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void updateRoleRequest(int i)
    {
        if (i == 1)
        {
            if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_name"))
            {
                getEPHandler().setEndPointRole(1, "PrimaryPendingRequest");
            } else
            {
                getEPHandler().setEndPointRole(2, "SecondaryPendingRequest");
                getEPHandler().setEndPointRole(1, "PrimaryPendingRequest");
                return;
            }
        } else
        if (i == 2)
            if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_name"))
            {
                getEPHandler().setEndPointRole(2, "PrimaryPendingRequest");
                return;
            } else
            {
                getEPHandler().setEndPointRole(1, "SecondaryPendingRequest");
                getEPHandler().setEndPointRole(2, "PrimaryPendingRequest");
                return;
            }
    }




/*
    static boolean access$002(boolean flag)
    {
        isSWUpdateTimerRequired = flag;
        return flag;
    }

*/



/*
    static Timer access$102(Timer timer)
    {
        mSWUpdateTimer = timer;
        return timer;
    }

*/

}
