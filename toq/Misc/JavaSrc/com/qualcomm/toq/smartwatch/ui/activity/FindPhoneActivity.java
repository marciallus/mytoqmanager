// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.*;
import android.media.AudioManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.SystemController;
import com.qualcomm.toq.smartwatch.service.listener.CustomPhoneStateListener;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.WakeLocker;
import org.json.JSONException;
import org.json.JSONObject;

public class FindPhoneActivity extends Activity
{

    private static final String TAG = "FindPhoneActivity";
    BroadcastReceiver btReceiver;
    private boolean isCancelInitiated;
    private AndroidUtils mAndroidUtils;

    public FindPhoneActivity()
    {
        mAndroidUtils = null;
        isCancelInitiated = false;
        btReceiver = new BroadcastReceiver() {

            final FindPhoneActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                if (!Constants.ACTION_CANCEL_FIND_PHONE_REQUEST.equals(s)) goto _L2; else goto _L1
_L1:
                Log.d("FindPhoneActivity", "The ACTION_CANCEL_FIND_PHONE_REQUEST is received ");
                Log.d("FindPhoneActivity", "The ACTION_CANCEL_FIND_PHONE_REQUEST is received ");
                isCancelInitiated = true;
                resetFindPhoneFlags();
                mAndroidUtils.stopMediaPlayer();
                unregisterReceiver(btReceiver);
                finish();
_L3:
                return;
                Exception exception1;
                exception1;
                Log.d("FindPhoneActivity", exception1.toString());
                exception1.printStackTrace();
                return;
_L2:
                if (Constants.ACTION_BLUETOOTH_NOT_ENABLED.equals(s))
                {
                    Log.d("FindPhoneActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                    return;
                }
                if (Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
                {
                    Log.d("FindPhoneActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                    int i = intent.getIntExtra("state", 0);
                    if (intent.getIntExtra("endpointtype", 0) == 0 && i != 3)
                        try
                        {
                            SystemController.getSystemController().bFindPhoneReqOn = false;
                            mAndroidUtils.stopMediaPlayer();
                            if (btReceiver != null)
                                unregisterReceiver(btReceiver);
                            finish();
                            return;
                        }
                        catch (Exception exception)
                        {
                            Log.d("FindPhoneActivity", exception.toString());
                            exception.printStackTrace();
                            return;
                        }
                } else
                {
label0:
                    {
                        if (!Constants.ACTION_CALL_STATE_RINGING.equals(s))
                            break label0;
                        if (mAndroidUtils != null)
                        {
                            mAndroidUtils.pauseMediaPlayer();
                            return;
                        }
                    }
                }
                  goto _L3
                if (!Constants.ACTION_CALL_STATE_IDLE.equals(s))
                    continue; /* Loop/switch isn't completed */
                if (mAndroidUtils == null) goto _L3; else goto _L4
_L4:
                mAndroidUtils.startMediaPlayer();
                return;
                if (!Constants.ACTION_CALL_STATE_OFF_HOOK.equals(s) || mAndroidUtils == null) goto _L3; else goto _L5
_L5:
                mAndroidUtils.pauseMediaPlayer();
                return;
            }

            
            {
                this$0 = FindPhoneActivity.this;
                super();
            }
        }
;
    }

    private void foundPhoneReq(String s)
    {
        SystemController systemcontroller = SystemController.getSystemController();
        if (systemcontroller != null)
        {
            try
            {
                systemcontroller.sendFoundPhoneReq(new JSONObject(s));
                return;
            }
            catch (JSONException jsonexception)
            {
                Log.d("FindPhoneActivity", jsonexception.toString());
            }
            return;
        } else
        {
            Log.d("FindPhoneActivity", "SystemController.getSystemController() is null");
            return;
        }
    }

    private boolean phoneRingStatus()
    {
        return CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()).getCurrentCallState() == 1;
    }

    private void resetFindPhoneFlags()
    {
        SystemController.getSystemController().mFindPhoneCancel = false;
        SystemController.getSystemController().bFindPhoneReqOn = false;
        AudioManager audiomanager = (AudioManager)ToqApplication.getAppContext().getSystemService("audio");
        if (audiomanager != null)
        {
            Log.d("FindPhoneActivity", (new StringBuilder()).append("Setting Alarm volume to old state:  ").append(AndroidUtils.mDeviceAlarmVolume).toString());
            audiomanager.setStreamVolume(4, AndroidUtils.mDeviceAlarmVolume, 0);
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("FindPhoneActivity", (new StringBuilder()).append("onActivityResult ").append(j).toString());
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        mAndroidUtils.stopMediaPlayer();
        isCancelInitiated = true;
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("result", 0);
        jsonobject.put("description", "Found Phone");
_L1:
        resetFindPhoneFlags();
        foundPhoneReq(jsonobject.toString());
_L2:
        Exception exception;
        JSONException jsonexception;
        try
        {
            unregisterReceiver(btReceiver);
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        finish();
        return;
        jsonexception;
        jsonexception.printStackTrace();
          goto _L1
        exception;
        Log.d("FindPhoneActivity", exception.toString());
        exception.printStackTrace();
          goto _L2
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        isCancelInitiated = false;
        IntentFilter intentfilter = new IntentFilter(Constants.ACTION_BLUETOOTH_NOT_ENABLED);
        if (intentfilter != null)
        {
            intentfilter.addAction(Constants.ACTION_CANCEL_FIND_PHONE_REQUEST);
            intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
            intentfilter.addAction(Constants.ACTION_CALL_STATE_RINGING);
            intentfilter.addAction(Constants.ACTION_CALL_STATE_IDLE);
            intentfilter.addAction(Constants.ACTION_CALL_STATE_OFF_HOOK);
        }
        registerReceiver(btReceiver, intentfilter);
        WakeLocker.acquire(ToqApplication.getAppContext());
        setContentView(0x7f03002b);
        if (mAndroidUtils == null)
            mAndroidUtils = AndroidUtils.getAndroidUtils();
        mAndroidUtils.createMediaPlayer();
        mAndroidUtils.startMediaPlayer();
        Button button = (Button)findViewById(0x7f0901ae);
        if (button != null)
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final FindPhoneActivity this$0;

                public void onClick(View view)
                {
                    mAndroidUtils.stopMediaPlayer();
                    isCancelInitiated = true;
                    JSONObject jsonobject = new JSONObject();
                    jsonobject.put("result", 0);
                    jsonobject.put("description", "Found Phone");
_L3:
                    resetFindPhoneFlags();
                    foundPhoneReq(jsonobject.toString());
_L1:
                    Exception exception;
                    JSONException jsonexception;
                    try
                    {
                        unregisterReceiver(btReceiver);
                        finish();
                        return;
                    }
                    catch (Exception exception1)
                    {
                        exception1.printStackTrace();
                    }
                    break MISSING_BLOCK_LABEL_121;
                    jsonexception;
                    try
                    {
                        jsonexception.printStackTrace();
                        continue; /* Loop/switch isn't completed */
                    }
                    // Misplaced declaration of an exception variable
                    catch (Exception exception)
                    {
                        Log.d("FindPhoneActivity", exception.toString());
                        exception.printStackTrace();
                    }
                      goto _L1
                    return;
                    if (true) goto _L3; else goto _L2
_L2:
                }

            
            {
                this$0 = FindPhoneActivity.this;
                super();
            }
            }
);
        WakeLocker.release();
        setFinishOnTouchOutside(false);
        if (SystemController.getSystemController().mFindPhoneCancel)
        {
            isCancelInitiated = true;
            Intent intent = new Intent(Constants.ACTION_CANCEL_FIND_PHONE_REQUEST);
            mAndroidUtils.stopMediaPlayer();
            sendBroadcast(intent);
            Log.d("FindPhoneActivity", (new StringBuilder()).append("The broadcast is sent with the action").append(Constants.ACTION_CANCEL_FIND_PHONE_REQUEST).toString());
        }
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("FindPhoneActivity", "FindPhoneActivity is started");
        if (CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()).getCurrentCallState() == 0)
            mAndroidUtils.resumeMediaPlayer();
    }

    protected void onStop()
    {
        super.onStop();
        if (!isCancelInitiated && phoneRingStatus())
            mAndroidUtils.pauseMediaPlayer();
        Log.printUsageLog("FindPhoneActivity", "FindPhoneActivity is stopped");
    }



/*
    static boolean access$102(FindPhoneActivity findphoneactivity, boolean flag)
    {
        findphoneactivity.isCancelInitiated = flag;
        return flag;
    }

*/


}
