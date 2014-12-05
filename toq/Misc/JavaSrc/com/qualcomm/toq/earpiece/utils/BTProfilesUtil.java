// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.utils;

import android.bluetooth.*;
import android.content.Context;
import android.content.Intent;
import com.qualcomm.toq.base.utils.Constants;
import java.util.Iterator;
import java.util.List;

public class BTProfilesUtil
{

    private static Context mContext;
    private static BTProfilesUtil sBtProfilesUtil;
    private BluetoothA2dp mBluetoothA2DP;
    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothHeadset mBluetoothHFPHeadset;
    private android.bluetooth.BluetoothProfile.ServiceListener mProfileListener;

    private BTProfilesUtil()
    {
        mProfileListener = new android.bluetooth.BluetoothProfile.ServiceListener() {

            final BTProfilesUtil this$0;

            public void onServiceConnected(int i, BluetoothProfile bluetoothprofile)
            {
                if (i == 1)
                {
                    mBluetoothHFPHeadset = (BluetoothHeadset)bluetoothprofile;
                    if (BTProfilesUtil.sBtProfilesUtil != null)
                        BTProfilesUtil.sBtProfilesUtil.broadcastProfileUpdateToUiReceiver(Constants.HFP_PROFILE_CONNECTED);
                } else
                if (i == 2)
                {
                    mBluetoothA2DP = (BluetoothA2dp)bluetoothprofile;
                    if (BTProfilesUtil.sBtProfilesUtil != null)
                    {
                        BTProfilesUtil.sBtProfilesUtil.broadcastProfileUpdateToUiReceiver(Constants.A2DP_PROFILE_CONNECTED);
                        return;
                    }
                }
            }

            public void onServiceDisconnected(int i)
            {
                if (i == 1)
                {
                    mBluetoothHFPHeadset = null;
                    if (BTProfilesUtil.sBtProfilesUtil != null)
                        BTProfilesUtil.sBtProfilesUtil.broadcastProfileUpdateToUiReceiver(Constants.HFP_PROFILE_CONNECTED);
                }
                if (i == 2)
                {
                    mBluetoothA2DP = null;
                    if (BTProfilesUtil.sBtProfilesUtil != null)
                        BTProfilesUtil.sBtProfilesUtil.broadcastProfileUpdateToUiReceiver(Constants.A2DP_PROFILE_CONNECTED);
                }
            }

            
            {
                this$0 = BTProfilesUtil.this;
                super();
            }
        }
;
    }

    private void closeProxy()
    {
        if (mBluetoothAdapter != null)
        {
            if (mBluetoothHFPHeadset != null)
                mBluetoothAdapter.closeProfileProxy(1, mBluetoothHFPHeadset);
            if (mBluetoothA2DP != null)
                mBluetoothAdapter.closeProfileProxy(2, mBluetoothA2DP);
        }
    }

    public static BTProfilesUtil getInstance(Context context)
    {
        com/qualcomm/toq/earpiece/utils/BTProfilesUtil;
        JVM INSTR monitorenter ;
        if (sBtProfilesUtil == null)
        {
            sBtProfilesUtil = new BTProfilesUtil();
            mContext = context;
            sBtProfilesUtil.openProxy();
        }
        com/qualcomm/toq/earpiece/utils/BTProfilesUtil;
        JVM INSTR monitorexit ;
        return sBtProfilesUtil;
        Exception exception;
        exception;
        com/qualcomm/toq/earpiece/utils/BTProfilesUtil;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void openProxy()
    {
        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        mBluetoothAdapter.getProfileProxy(mContext, mProfileListener, 1);
        mBluetoothAdapter.getProfileProxy(mContext, mProfileListener, 2);
    }

    public void broadcastProfileUpdateToUiReceiver(String s)
    {
        Intent intent = new Intent(Constants.ACTION_EAR_PIECE_PROFILE_UPDATE);
        intent.putExtra("actionType", s);
        mContext.sendBroadcast(intent);
    }

    public boolean isA2DPConnected(String s, String s1)
    {
        BluetoothA2dp bluetootha2dp = mBluetoothA2DP;
        boolean flag = false;
        if (bluetootha2dp != null)
        {
            Iterator iterator = mBluetoothA2DP.getConnectedDevices().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
                if (bluetoothdevice.getName().equals(s) && bluetoothdevice.getAddress().equals(s1))
                    flag = true;
            } while (true);
        }
        return flag;
    }

    public boolean isHeadsetProfileConnected(String s, String s1)
    {
        BluetoothHeadset bluetoothheadset = mBluetoothHFPHeadset;
        boolean flag = false;
        if (bluetoothheadset != null)
        {
            Iterator iterator = mBluetoothHFPHeadset.getConnectedDevices().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
                if (bluetoothdevice.getName().equals(s) && bluetoothdevice.getAddress().equals(s1))
                    flag = true;
            } while (true);
        }
        return flag;
    }

    public void shutdown()
    {
        if (sBtProfilesUtil != null)
        {
            closeProxy();
            mProfileListener = null;
            sBtProfilesUtil = null;
        }
    }


/*
    static BluetoothHeadset access$002(BTProfilesUtil btprofilesutil, BluetoothHeadset bluetoothheadset)
    {
        btprofilesutil.mBluetoothHFPHeadset = bluetoothheadset;
        return bluetoothheadset;
    }

*/



/*
    static BluetoothA2dp access$202(BTProfilesUtil btprofilesutil, BluetoothA2dp bluetootha2dp)
    {
        btprofilesutil.mBluetoothA2DP = bluetootha2dp;
        return bluetootha2dp;
    }

*/
}
