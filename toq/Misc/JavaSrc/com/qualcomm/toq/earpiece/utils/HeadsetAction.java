// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.utils;

import android.bluetooth.BluetoothAdapter;
import android.content.*;
import android.os.*;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.earpiece.utils:
//            IHeadsetAction, HeadsetState, EarpiecePreference, HeadsetUtils

public class HeadsetAction
    implements IHeadsetAction
{
    public final class ActionHandler extends Handler
    {

        final HeadsetAction this$0;

        public void handleMessage(Message message)
        {
            int i;
            int ai[];
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage:handleMessage what:").append(message.what).append(", arg1 = ").append(message.arg1).toString(), message.arg1, 1, (byte)7);
            i = message.what;
            ai = null;
            i;
            JVM INSTR lookupswitch 5: default 104
        //                       0: 546
        //                       1: 561
        //                       2: 576
        //                       3: 591
        //                       999: 606;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
            if (ai == null || ai.length <= 0) goto _L8; else goto _L7
_L7:
            int k;
            k = message.arg1;
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage:Process queueStates length :").append(ai.length).toString(), k, 1, (byte)1);
            HeadsetState headsetstate = new HeadsetState(ai[0], 100, -1);
            headsetActionStatusList.add(headsetstate);
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage: br while:").append(actionHandler.hasMessages(999)).toString(), k, 1, (byte)1);
_L10:
            HeadsetState headsetstate1;
            do
            {
                while (headsetActionStatusList == null || headsetActionStatusList.size() <= 0) ;
                headsetstate1 = (HeadsetState)headsetActionStatusList.get(-1 + headsetActionStatusList.size());
                processSubState(headsetstate1, ai, k);
            } while (headsetstate1.getSubState() != 100);
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage:Process :").append(message.what).append("   state:").append(IHeadsetState.HeadsetStatesEnum.values()[headsetstate1.getState()]).append("   subState:").append(IHeadsetState.HeadsetSubStatesEnum.values()[-100 + headsetstate1.getSubState()]).toString(), k, 1, (byte)1);
            synchronized (actionHandler)
            {
                processState(headsetstate1, k);
                Log.d("HeadsetAction", "br wait()");
                actionHandler.wait();
            }
_L11:
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage:Process action(ar) :").append(message.what).append("   state:").append(IHeadsetState.HeadsetStatesEnum.values()[headsetstate1.getState()]).append("   subState:").append(IHeadsetState.HeadsetSubStatesEnum.values()[-100 + headsetstate1.getSubState()]).toString(), k, 1, (byte)1);
            if (headsetstate1.getState() != 5 || headsetstate1.getSubState() != 101) goto _L10; else goto _L9
_L9:
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage: ar while:").append(actionHandler.hasMessages(999)).toString(), k, 1, (byte)1);
            Utils.updateStatus("HeadsetAction", "EPMessage:Process end of while:", k, 1, (byte)1);
_L8:
            return;
_L2:
            Log.d(Constants.EP_TAG, "assigning queue states to ACTION_INSTALL_UPDATE_STATES");
            ai = IHeadsetAction.ACTION_INSTALL_UPDATE_STATES;
              goto _L1
_L3:
            Log.d(Constants.EP_TAG, "assigning queue states to ACTION_SWAP_ROLES");
            ai = IHeadsetAction.ACTION_SWAP_ROLES__STATES;
              goto _L1
_L4:
            Log.d(Constants.EP_TAG, "assigning queue states to ACTION_CHECK_STATUS");
            ai = IHeadsetAction.ACTION_CHECK_STATUS_STATES;
              goto _L1
_L5:
            Log.d(Constants.EP_TAG, "assigning queue states to ACTION_BASS_BOOST");
            ai = IHeadsetAction.ACTION_BASS_BOOST__STATES;
              goto _L1
_L6:
            Log.d(Constants.EP_TAG, "destroying queue states to START");
            SimpleDateFormat simpledateformat = new SimpleDateFormat("MMMM dd, h:mm a", Locale.US);
            Log.d("HeadsetAction", (new StringBuilder()).append("DATE: ").append(simpledateformat.format(new Date())).toString());
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_status_checked", simpledateformat.format(new Date()));
            int j = currentAction;
            ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
            Boolean boolean1 = Boolean.valueOf(PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded());
            Boolean boolean2 = Boolean.valueOf(PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded());
            String s = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "");
            String s1 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "");
            boolean flag;
            Boolean boolean3;
            boolean flag1;
            Boolean boolean4;
            String s2;
            String s3;
            boolean flag2;
            Boolean boolean5;
            String s4;
            String s5;
            String s6;
            String s7;
            boolean flag3;
            byte byte0;
            if (s.equalsIgnoreCase(Constants.EP_STATUS_OK) || s.equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
                flag = true;
            else
                flag = false;
            boolean3 = Boolean.valueOf(flag);
            if (s1.equalsIgnoreCase(Constants.EP_STATUS_OK) || s1.equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
                flag1 = true;
            else
                flag1 = false;
            boolean4 = Boolean.valueOf(flag1);
            s2 = getEPHandler().getEndPointLinkKey(1);
            s3 = getEPHandler().getEndPointLinkKey(2);
            if (s1.equalsIgnoreCase(Constants.EP_STATUS_OK) && s.equalsIgnoreCase(Constants.EP_STATUS_OK) || s1.equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED) && s.equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
                flag2 = true;
            else
                flag2 = false;
            boolean5 = Boolean.valueOf(flag2);
            s4 = getEPHandler().getEndpointMode(1);
            s5 = getEPHandler().getEndpointMode(2);
            s6 = getEPHandler().getEndPointRole(1);
            s7 = getEPHandler().getEndPointRole(2);
            if (!s1.equals(Constants.EP_STATUS_UNABLE_CONNECT) && !s.equals(Constants.EP_STATUS_UNABLE_CONNECT))
                flag3 = true;
            else
                flag3 = false;
            if (s7.equalsIgnoreCase("Primary"))
            {
                Log.d("HeadsetAction", (new StringBuilder()).append("[BassBoost] Storing primary headset while destroyingEndPoints = 2, rightEPRole = ").append(s7).toString());
                byte0 = 2;
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", 2);
            } else
            if (s6.equalsIgnoreCase("Primary"))
            {
                Log.d("HeadsetAction", (new StringBuilder()).append("[BassBoost] Storing primary headset while destroyingEndPoints = 1, leftEPRole = ").append(s6).toString());
                byte0 = 1;
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", 1);
            } else
            {
                byte0 = -1;
                Log.d("HeadsetAction", "[BassBoost] setting -1 for PBE primay headset while destroyingEndPoints");
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", -1);
            }
            if (j != 1 && j != 3)
            {
                currentAction = -1;
                Boolean boolean6 = Boolean.valueOf(false);
                if (boolean1.booleanValue() && boolean2.booleanValue())
                {
                    BTConnectionManager btconnectionmanager;
                    boolean flag6;
                    if (!connectionfactory.getEndPointUpgradeState(1) && !connectionfactory.getEndPointUpgradeState(2) && s1.equals("OK") && s.equals("OK"))
                        flag6 = true;
                    else
                        flag6 = false;
                    boolean6 = Boolean.valueOf(flag6);
                } else
                if (boolean1.booleanValue())
                {
                    boolean flag5;
                    if (!connectionfactory.getEndPointUpgradeState(1) && s1.equals("OK"))
                        flag5 = true;
                    else
                        flag5 = false;
                    boolean6 = Boolean.valueOf(flag5);
                } else
                if (boolean2.booleanValue())
                {
                    boolean flag4;
                    if (!connectionfactory.getEndPointUpgradeState(2) && s.equals("OK"))
                        flag4 = true;
                    else
                        flag4 = false;
                    boolean6 = Boolean.valueOf(flag4);
                }
                Log.d("HeadsetAction", (new StringBuilder()).append("isLeftBonded = ").append(boolean1).append(", isRightBonded = ").append(boolean2).append(", checkHeadset = ").append(boolean6).append("rStatus =").append(s).append(", lStatus = ").append(s1).toString());
                Log.d("HeadsetAction", (new StringBuilder()).append("L UpgradeState = ").append(connectionfactory.getEndPointUpgradeState(1)).append(", R UpgradeState = ").append(connectionfactory.getEndPointUpgradeState(2)).toString());
                if (j == 0 && boolean6.booleanValue() && !ConnectionFactory.getConnectionFactory().getCustomsBuildFlag())
                {
                    Log.d("HeadsetAction", "ACTION_INSTALL_UPDATE && SAME_FIRMEARE_INFO");
                    updateEarpieceUIBroadcast(message.arg1, "SAME_FIRMEARE_INFO");
                } else
                if (j == 0)
                {
                    Intent intent = new Intent();
                    intent.setAction(Constants.ACTION_EAR_PIECE_UI_UPDATE);
                    intent.putExtra("endpointtype", 2);
                    intent.putExtra("state", 2021);
                    intent.putExtra("ep_firmware_update_error", -1);
                    ToqApplication.getAppContext().sendBroadcast(intent);
                } else
                if (j == 2)
                {
                    if (boolean1.booleanValue() && boolean2.booleanValue() && flag3 && getEPHandler().getEndPointRole(2).contains("Secondary") && getEPHandler().getEndPointRole(1).contains("Secondary"))
                    {
                        Log.d("HeadsetAction", "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS Both headaests are Secondary");
                        updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS");
                        return;
                    }
                    if (boolean1.booleanValue() && boolean2.booleanValue() && boolean5.booleanValue() && flag3 && (!s2.equals(s3) || s2.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00") || s3.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00") || s2 == null || s3 == null || TextUtils.isEmpty(s3) || TextUtils.isEmpty(s2)))
                    {
                        Log.d("HeadsetAction", "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS Both headaests are not having association");
                        updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS");
                        return;
                    }
                    if (boolean1.booleanValue() && boolean2.booleanValue() && flag3 && getEPHandler().getEndPointRole(2).contains("Primary") && getEPHandler().getEndPointRole(1).contains("Primary"))
                    {
                        Log.d("HeadsetAction", "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS Both headaests are Primary");
                        updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS");
                        return;
                    }
                    if (boolean2.booleanValue() && boolean3.booleanValue() && (!boolean1.booleanValue() || s1.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT)) && getEPHandler().getEndPointRole(2).contains("Secondary"))
                    {
                        Log.d("HeadsetAction", "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only R connected & Secondary ");
                        updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS");
                        return;
                    }
                    if (boolean1.booleanValue() && boolean4.booleanValue() && (!boolean2.booleanValue() || s.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT)) && getEPHandler().getEndPointRole(1).contains("Secondary"))
                    {
                        Log.d("HeadsetAction", "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only L connected & Secondary");
                        updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS");
                        return;
                    }
                    if (mConnectionFactory == null)
                        mConnectionFactory = ConnectionFactory.getConnectionFactory();
                    if (mConnectionFactory != null)
                    {
                        BTConnectionManager btconnectionmanager1 = BTConnectionManager.getConnectionManager(mConnectionFactory.getContext());
                        if (btconnectionmanager1 != null)
                        {
                            btconnectionmanager1.disassociatePhoneEPLeft();
                            btconnectionmanager1.disassociatePhoneEPRight();
                        }
                    }
                    updateEarpieceUIBroadcast(message.arg1);
                } else
                {
                    updateEarpieceUIBroadcast(message.arg1);
                }
                if (mConnectionFactory == null)
                    mConnectionFactory = ConnectionFactory.getConnectionFactory();
                if (mConnectionFactory != null)
                {
                    btconnectionmanager = BTConnectionManager.getConnectionManager(mConnectionFactory.getContext());
                    if (btconnectionmanager != null)
                    {
                        btconnectionmanager.disassociatePhoneEPLeft();
                        btconnectionmanager.disassociatePhoneEPRight();
                    }
                }
                unRegisterHeadsetActionResponseReceiver();
                HeadsetAction.headsetAction = null;
                if (mServiceLooper != null)
                {
                    mServiceLooper.quit();
                    mServiceLooper = null;
                }
                if (headsetActionStatusList != null && headsetActionStatusList.size() > 0)
                    headsetActionStatusList.clear();
            }
            if (j == 1 || j == 3)
            {
                if (j == 3)
                    if (s6.contains("Primary") && byte0 == 1)
                    {
                        if (boolean4.booleanValue() && s4.equals("Operational"))
                        {
                            setCurrentAction(3);
                            updateEarpieceUIBroadcast(1, "PERFORM_BASS_BOOST");
                            unRegisterHeadsetActionResponseReceiver();
                            return;
                        }
                    } else
                    if (s7.contains("Primary") && byte0 == 2 && boolean3.booleanValue() && s5.equals("Operational"))
                    {
                        setCurrentAction(3);
                        updateEarpieceUIBroadcast(2, "PERFORM_BASS_BOOST");
                        unRegisterHeadsetActionResponseReceiver();
                        return;
                    }
                if (j == 1 && boolean5.booleanValue() && s4.equals("Operational") && s5.equals("Operational"))
                {
                    setCurrentAction(1);
                    updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE");
                    unRegisterHeadsetActionResponseReceiver();
                    return;
                }
                if (boolean2.booleanValue() && boolean3.booleanValue() && (!boolean1.booleanValue() || s1.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT)) && getEPHandler().getEndPointRole(2).contains("Secondary") && j != 3)
                {
                    Log.d("HeadsetAction", "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only R connected & Secondary ");
                    updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS");
                    return;
                }
                if (boolean1.booleanValue() && boolean4.booleanValue() && (!boolean2.booleanValue() || s.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT)) && getEPHandler().getEndPointRole(1).contains("Secondary") && j != 3)
                {
                    Log.d("HeadsetAction", "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET Only L connected & Secondary");
                    updateEarpieceUIBroadcast(message.arg1, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS");
                    return;
                }
                updateEarpieceUIBroadcast(message.arg1);
                if (s4.equals("Config") || s5.equals("Config"))
                    Log.e("HeadsetAction", (new StringBuilder()).append("Left or Right headset are in CONFIG mode leftEPMode = ").append(s4).append(", rightEPMode = ").append(s5).toString());
                unRegisterHeadsetActionResponseReceiver();
                HeadsetAction.headsetAction = null;
                if (mServiceLooper != null)
                {
                    mServiceLooper.quit();
                    mServiceLooper = null;
                }
                if (headsetActionStatusList != null && headsetActionStatusList.size() > 0)
                    headsetActionStatusList.clear();
            }
            Log.d(Constants.EP_TAG, "destroying queue states to END");
            return;
            exception;
            actionhandler;
            JVM INSTR monitorexit ;
            try
            {
                throw exception;
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
              goto _L11
        }

        public ActionHandler(Looper looper)
        {
            this$0 = HeadsetAction.this;
            super(looper);
        }
    }


    private static final String TAG = "HeadsetAction";
    private static HeadsetAction headsetAction;
    private static boolean isTimerRequired = true;
    private static Timer mTimer = null;
    private static int sCheckingCounter = 0;
    public ActionHandler actionHandler;
    private Context appContext;
    private int currentAction;
    private EPConnectionHandlerImpl epConnectionHandler;
    private BroadcastReceiver headsetActionResponseReceiver;
    public List headsetActionStatusList;
    private ConnectionFactory mConnectionFactory;
    public Looper mServiceLooper;
    HandlerThread thread;

    private HeadsetAction(Context context)
    {
        headsetActionStatusList = new ArrayList();
        mConnectionFactory = null;
        currentAction = -1;
        epConnectionHandler = null;
        headsetActionResponseReceiver = new BroadcastReceiver() {

            final HeadsetAction this$0;

            public void onReceive(Context context1, Intent intent)
            {
                String s = intent.getAction();
                if (s != null && s.equals("ACTION_HEADSET"))
                {
                    int i = intent.getIntExtra("ACTION_HEADSET_RESPONSE_SUBSTATE", 102);
                    int j = intent.getIntExtra("ACTION_HEADSET_RESPONSE_CODE", -1);
                    Log.d("HeadsetAction", (new StringBuilder()).append("BR Onreceive() subState = ").append(i).append(", subenum = ").append(IHeadsetState.HeadsetSubStatesEnum.values()[i - 100]).append(", responseCode = ").append(j).toString());
                    updateCurrentActionState(i, j);
                }
            }

            
            {
                this$0 = HeadsetAction.this;
                super();
            }
        }
;
        appContext = context;
        thread = new HandlerThread("ServiceStartArguments", 10);
        thread.start();
        mServiceLooper = thread.getLooper();
        actionHandler = new ActionHandler(mServiceLooper);
        PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
        PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
        registerHeadsetActionResponseReceiver();
    }

    private void addLeftHeadsetAction(int i)
    {
        if (PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded())
        {
            Message message = actionHandler.obtainMessage();
            message.what = i;
            message.arg1 = 1;
            actionHandler.sendMessage(message);
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage:Process action :").append(i).toString(), 1, 1, (byte)7);
        }
    }

    private void addRightHeadsetAction(int i)
    {
        if (PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
        {
            Message message = actionHandler.obtainMessage();
            message.what = i;
            message.arg1 = 2;
            actionHandler.sendMessage(message);
            Utils.updateStatus("HeadsetAction", (new StringBuilder()).append("EPMessage:Process action :").append(i).toString(), 2, 1, (byte)7);
        }
    }

    private EPConnectionHandlerImpl getEPHandler()
    {
        if (epConnectionHandler == null)
            epConnectionHandler = EPConnectionHandlerImpl.getConnectionHandler();
        return epConnectionHandler;
    }

    public static HeadsetAction getInstance()
    {
        com/qualcomm/toq/earpiece/utils/HeadsetState;
        JVM INSTR monitorenter ;
        if (headsetAction == null)
            headsetAction = new HeadsetAction(ToqApplication.getAppContext());
        com/qualcomm/toq/earpiece/utils/HeadsetState;
        JVM INSTR monitorexit ;
        return headsetAction;
        Exception exception;
        exception;
        com/qualcomm/toq/earpiece/utils/HeadsetState;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void registerHeadsetActionResponseReceiver()
    {
        Log.d("HeadsetAction", "registerHeadsetActionResponseReceiver()");
        IntentFilter intentfilter = new IntentFilter("ACTION_HEADSET");
        LocalBroadcastManager.getInstance(appContext).registerReceiver(headsetActionResponseReceiver, intentfilter);
    }

    private void updateEarpieceUIBroadcast(int i)
    {
        Context context = ToqApplication.getAppContext();
        Intent intent = new Intent(Constants.ACTION_EAR_PIECE_UI_UPDATE);
        intent.putExtra("state", 0);
        intent.putExtra("endpointtype", i);
        intent.putExtra("perform_action", "");
        Log.d("HeadsetAction", "updateEarpieceUIBroadcast(endPointType) ");
        context.sendBroadcast(intent);
    }

    private void updateEarpieceUIBroadcast(int i, String s)
    {
        Context context = ToqApplication.getAppContext();
        Intent intent = new Intent(Constants.ACTION_EAR_PIECE_UI_UPDATE);
        intent.putExtra("state", 0);
        intent.putExtra("endpointtype", i);
        intent.putExtra("perform_action", s);
        Log.d("HeadsetAction", "sent updateEarpieceUIBroadcast(endPointType, roles)");
        context.sendBroadcast(intent);
    }

    public void broadcastEPFirmwareUpdateFailed(int i)
    {
        Intent intent = new Intent();
        intent.setAction(Constants.ACTION_EAR_PIECE_UI_UPDATE);
        intent.putExtra("endpointtype", i);
        intent.putExtra("state", 102);
        intent.putExtra("ep_firmware_update_error", -1);
        ToqApplication.getAppContext().sendBroadcast(intent);
    }

    public void broadcastResponsetoHeadset(int i, int j)
    {
        Intent intent = new Intent("ACTION_HEADSET");
        intent.putExtra("ACTION_HEADSET_RESPONSE_SUBSTATE", i);
        intent.putExtra("ACTION_HEADSET_RESPONSE_CODE", j);
        LocalBroadcastManager.getInstance(ToqApplication.getAppContext()).sendBroadcast(intent);
    }

    public int getCurrentAction()
    {
        return currentAction;
    }

    public int getCurrentState()
    {
        int i = headsetActionStatusList.size();
        if (i > 0)
            return ((HeadsetState)headsetActionStatusList.get(i - 1)).getState();
        else
            return 5;
    }

    public void processAction(int i)
    {
        actionHandler.removeCallbacksAndMessages(null);
        currentAction = i;
        int j = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getInteger("last_known_primary_headset", -1);
        Log.d("HeadsetAction", (new StringBuilder()).append("processAction LAST_KNOWN_PRIMARY_HEADSET_ENDPOINT epVal = ").append(j).toString());
        if (currentAction == 3 && j != -1)
        {
            Log.d("HeadsetAction", "[BassBoost] Process action");
            if (j == 1)
                addLeftHeadsetAction(i);
            else
            if (j == 2)
                addRightHeadsetAction(i);
        } else
        if (currentAction == 0)
        {
            Log.d("HeadsetAction", "ACTION_INSTALL_UPDATE Process action");
            switch (j)
            {
            case 2: // '\002'
                addRightHeadsetAction(i);
                addLeftHeadsetAction(i);
                break;

            case 1: // '\001'
                addLeftHeadsetAction(i);
                addRightHeadsetAction(i);
                break;

            default:
                addRightHeadsetAction(i);
                addLeftHeadsetAction(i);
                break;
            }
        } else
        {
            addRightHeadsetAction(i);
            addLeftHeadsetAction(i);
        }
        Message message = actionHandler.obtainMessage();
        message.what = 999;
        message.arg1 = 1;
        actionHandler.sendMessage(message);
    }

    public void processState(HeadsetState headsetstate, final int endPointType)
    {
        mConnectionFactory = ConnectionFactory.getConnectionFactory();
        if (mConnectionFactory == null)
            Log.d("HeadsetAction", "processState() connectionfactory is null");
        switch (headsetstate.getState())
        {
        case 2: // '\002'
        case 3: // '\003'
        default:
            break;

        case 5: // '\005'
            if (BluetoothAdapter.getDefaultAdapter().isEnabled())
            {
                isTimerRequired = false;
                if (getCurrentAction() != 1 && getCurrentAction() != 2 && getCurrentAction() != 3)
                    if (endPointType == 1)
                    {
                        BTConnectionManager btconnectionmanager1 = BTConnectionManager.getConnectionManager(mConnectionFactory.getContext());
                        if (btconnectionmanager1 != null)
                            btconnectionmanager1.disassociatePhoneEPLeft();
                    } else
                    if (endPointType == 2)
                    {
                        BTConnectionManager btconnectionmanager = BTConnectionManager.getConnectionManager(mConnectionFactory.getContext());
                        if (btconnectionmanager != null)
                            btconnectionmanager.disassociatePhoneEPRight();
                    }
            }
            Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
            getInstance().broadcastResponsetoHeadset(101, -1);
            return;

        case 4: // '\004'
            if (getCurrentAction() == 0)
            {
                Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                getInstance().broadcastResponsetoHeadset(101, -1);
                return;
            }
            if (mTimer == null)
            {
                mTimer = new Timer();
                isTimerRequired = true;
            }
            mTimer.schedule(new TimerTask() {

                final HeadsetAction this$0;
                final int val$endPointType;

                public void run()
                {
                    if (HeadsetAction.isTimerRequired)
                    {
                        HeadsetAction.isTimerRequired = false;
                        if (HeadsetAction.mTimer != null)
                        {
                            HeadsetAction.mTimer.cancel();
                            HeadsetAction.mTimer = null;
                        }
                        Utils.printEarpieceLog(Constants.EP_TAG, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
                        HeadsetAction.getInstance().broadcastResponsetoHeadset(101, -1);
                        if (endPointType == 2)
                        {
                            HeadsetAction.getInstance().updateEarpieceUIBroadcast(endPointType, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a0195));
                            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(endPointType).toString(), Constants.EP_STATUS_UNABLE_CONNECT);
                        }
                        if (endPointType == 1)
                        {
                            HeadsetAction.getInstance().updateEarpieceUIBroadcast(endPointType, "UPDATE_HEADSET", HeadsetUtils.getString(0x7f0a018f));
                            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(endPointType).toString(), Constants.EP_STATUS_UNABLE_CONNECT);
                        }
                    }
                    if (HeadsetAction.mTimer != null)
                    {
                        HeadsetAction.mTimer.cancel();
                        HeadsetAction.mTimer = null;
                    }
                }

            
            {
                this$0 = HeadsetAction.this;
                endPointType = i;
                super();
            }
            }
, 10000L);
            return;

        case 1: // '\001'
            if (BluetoothAdapter.getDefaultAdapter().isEnabled())
            {
                SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
                if (endPointType == 1)
                {
                    BTConnectionManager.getConnectionManager(mConnectionFactory.getContext()).connect(sharedpreferences.getString("associated_ep_l_device_address", null));
                    return;
                } else
                {
                    BTConnectionManager.getConnectionManager(mConnectionFactory.getContext()).connect(sharedpreferences.getString("associated_ep_r_device_address", null));
                    return;
                }
            }
            break;

        case 0: // '\0'
            if (BluetoothAdapter.getDefaultAdapter().isEnabled())
            {
                Constants.isChangeRolesActive = false;
                mConnectionFactory.initiateConnection(ToqApplication.getAppContext(), endPointType);
            }
            if (endPointType == 2)
                getInstance().updateEarpieceUIBroadcast(endPointType, "UPDATE_HEADSET", "Searching for Right headset...\n ");
            if (endPointType == 1)
            {
                getInstance().updateEarpieceUIBroadcast(endPointType, "UPDATE_HEADSET", "Searching for Left headset...\n ");
                return;
            }
            break;
        }
    }

    public void processSubState(HeadsetState headsetstate, int ai[], int i)
    {
        switch (headsetstate.getSubState())
        {
        case 102: // 'f'
            HeadsetState headsetstate2 = new HeadsetState(5, 100, -1);
            headsetActionStatusList.add(headsetstate2);
            return;

        case 101: // 'e'
            int j = 0;
            for (int k = 0; k < ai.length; k++)
                if (ai[k] == headsetstate.getState() && k + 1 < ai.length)
                    j = ai[k + 1];

            HeadsetState headsetstate1 = new HeadsetState(j, 100, -1);
            headsetActionStatusList.add(headsetstate1);
            return;

        case 100: // 'd'
        default:
            return;
        }
    }

    public void quitLooper()
    {
        if (mServiceLooper != null)
            mServiceLooper.quit();
        if (actionHandler != null)
            actionHandler.getLooper().quit();
        headsetAction = null;
    }

    public void setCancelTimer()
    {
        if (mTimer != null)
        {
            mTimer.cancel();
            mTimer = null;
        }
        isTimerRequired = false;
    }

    public void setCurrentAction(int i)
    {
        currentAction = i;
    }

    public void unRegisterHeadsetActionResponseReceiver()
    {
        Log.d("HeadsetAction", "Called unRegisterHeadsetActionResponseReceiver()");
        Intent intent = new Intent("ACTION_HEADSET");
        intent.putExtra("ACTION_HEADSET_RESPONSE_SUBSTATE", 101);
        intent.putExtra("ACTION_HEADSET_RESPONSE_STATUS_MESSAGE", "");
        LocalBroadcastManager.getInstance(appContext).sendBroadcast(intent);
        LocalBroadcastManager.getInstance(appContext).unregisterReceiver(headsetActionResponseReceiver);
    }

    public void updateCurrentActionState(int i, int j)
    {
        HeadsetState headsetstate;
        int k;
        HeadsetState headsetstate2;
        HeadsetState headsetstate3;
        try
        {
            k = headsetActionStatusList.size();
            Log.d("HeadsetAction", (new StringBuilder()).append("updateCurrentActionState()...subState = ").append(i).append(", subenum = ").append(IHeadsetState.HeadsetSubStatesEnum.values()[i - 100]).append(", responseCode = ").append(j).append(", listSize =").append(k).toString());
        }
        catch (Exception exception)
        {
            Log.e("HeadsetAction", (new StringBuilder()).append("Exception in updateCurrentActionState:").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
        if (k <= 0)
            break MISSING_BLOCK_LABEL_569;
        headsetstate = (HeadsetState)headsetActionStatusList.get(k - 1);
        headsetstate.updateState(headsetstate.getState(), i, j);
        Utils.printEarpieceLog(Constants.EP_TAG, (new StringBuilder()).append("currentHeadsetState.getResponseCode() = ").append(headsetstate.getResponseCode()).append(", currentHeadsetState.getState()  = ").append(headsetstate.getState()).toString(), Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
        if (headsetstate.getResponseCode() != 0)
            break MISSING_BLOCK_LABEL_486;
        if (headsetstate.getState() == 1 || sCheckingCounter >= 3)
            break MISSING_BLOCK_LABEL_327;
        if (headsetActionStatusList != null && headsetActionStatusList.size() > 0)
            headsetActionStatusList.clear();
        try
        {
            Log.d("HeadsetAction", "[sleep] updateCurrentActionState..Giving sleep 2 seconds");
            Thread.sleep(2000L);
        }
        catch (Exception exception2) { }
        headsetstate3 = new HeadsetState(1, 100, -1);
        headsetActionStatusList.add(headsetstate3);
        sCheckingCounter = 1 + sCheckingCounter;
        Utils.printEarpieceLog(Constants.EP_TAG, (new StringBuilder()).append("STATE_CONNECTION_ATTEMPT // RESPONSE_CODE_BT_DISCONNECT Retrying Connection Attempt - Return").append(headsetstate.getState()).toString(), Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
        return;
        if (sCheckingCounter >= 3)
        {
            sCheckingCounter = 0;
            Utils.printEarpieceLog(Constants.EP_TAG, "Called blocking retunrn <<3>>", Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
            headsetstate2 = new HeadsetState(5, 100, -1);
            headsetActionStatusList.add(headsetstate2);
            return;
        }
        sCheckingCounter = 0;
        Utils.printEarpieceLog(Constants.EP_TAG, (new StringBuilder()).append("Blocking return").append(headsetstate.getState()).toString(), Thread.currentThread().getStackTrace()[2].getMethodName(), Thread.currentThread().getStackTrace()[2].getLineNumber());
        return;
        if (headsetstate.getResponseCode() == 2)
        {
            sCheckingCounter = 0;
            HeadsetState headsetstate1 = new HeadsetState(5, 100, -1);
            headsetActionStatusList.add(headsetstate1);
        }
        synchronized (actionHandler)
        {
            sCheckingCounter = 0;
            Log.d("HeadsetAction", "br notify()");
            actionHandler.notify();
        }
        return;
        exception1;
        actionhandler;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void updateEarpieceUIBroadcast(int i, String s, String s1)
    {
        Log.d("HeadsetAction", (new StringBuilder()).append("updateEarpieceUIBroadcast(), endPointType = ").append(i).append(", actionStr = ").append(s).append(", message = ").append(s1).toString());
        String s2 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString((new StringBuilder()).append("firmware_progress_mode").append(i).toString(), "");
        if (!s2.equalsIgnoreCase("ON") || s2 == null)
        {
            Context context = ToqApplication.getAppContext();
            Intent intent = new Intent(Constants.ACTION_EAR_PIECE_UI_UPDATE);
            intent.putExtra("state", 0);
            intent.putExtra("endpointtype", i);
            intent.putExtra("perform_action", s);
            intent.putExtra("display_message", s1);
            Log.d("HeadsetAction", "sent updateEarpieceUIBroadcast(endPointType, roles, message)");
            context.sendBroadcast(intent);
            if (s1 != null && s1.toLowerCase(Locale.US).contains("Waiting for Software update".toLowerCase(Locale.US)))
            {
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("firmware_progress_mode").append(i).toString(), "ON");
                return;
            }
        }
    }




/*
    static int access$002(HeadsetAction headsetaction, int i)
    {
        headsetaction.currentAction = i;
        return i;
    }

*/





/*
    static ConnectionFactory access$302(HeadsetAction headsetaction, ConnectionFactory connectionfactory)
    {
        headsetaction.mConnectionFactory = connectionfactory;
        return connectionfactory;
    }

*/



/*
    static HeadsetAction access$502(HeadsetAction headsetaction)
    {
        headsetAction = headsetaction;
        return headsetaction;
    }

*/



/*
    static boolean access$602(boolean flag)
    {
        isTimerRequired = flag;
        return flag;
    }

*/



/*
    static Timer access$702(Timer timer)
    {
        mTimer = timer;
        return timer;
    }

*/
}
