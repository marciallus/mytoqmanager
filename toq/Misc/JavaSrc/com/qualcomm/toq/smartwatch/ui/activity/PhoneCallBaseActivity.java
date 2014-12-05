// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.VoiceCallController;
import com.qualcomm.toq.smartwatch.service.listener.CustomPhoneStateListener;

public class PhoneCallBaseActivity extends Activity
{


    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        showToastMessage((new StringBuilder()).append("Call Rslt: ").append(j).toString(), ToqApplication.getAppContext());
        if (i != 201)
            break MISSING_BLOCK_LABEL_199;
        showToastMessage("Call is about to be ended", ToqApplication.getAppContext());
        CustomPhoneStateListener customphonestatelistener;
        TelephonyManager telephonymanager;
        customphonestatelistener = CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext());
        telephonymanager = (TelephonyManager)ToqApplication.getAppContext().getSystemService("phone");
        Log.d("VoiceCallController", (new StringBuilder()).append("PhoneCallBaseActivity: getCallerNumber = ").append(customphonestatelistener.getCallerNumber()).append(":").append(CustomPhoneStateListener.isPhoneOnActiveCall).toString());
        if (customphonestatelistener.getCallerNumber().isEmpty() || CustomPhoneStateListener.isPhoneOnActiveCall || telephonymanager == null)
            break MISSING_BLOCK_LABEL_190;
        if (telephonymanager.getCallState() != 0)
            break MISSING_BLOCK_LABEL_190;
        Log.d("VoiceCallController", "PhoneCallBaseActivity Cancel clicked in google Voice dialog!");
        int k;
        if (customphonestatelistener.getServiceState() == 0)
            k = 1;
        else
            k = 0;
        customphonestatelistener.sendPhoneStateIndication(1, 2, k, 0, 0, 0, customphonestatelistener.getCallerNumber(), customphonestatelistener.getCallerName(), 0, 0L, null, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
        showToastMessage("Call is ended", ToqApplication.getAppContext());
_L2:
        finish();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        showToastMessage("Exception in ending call", ToqApplication.getAppContext());
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.d("VoiceCallController", "onCreate is called");
        String s = null;
        if (bundle != null)
            s = bundle.getString("activty_state");
        String s1 = getIntent().getStringExtra((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.number").toString());
        Log.d("VoiceCallController", (new StringBuilder()).append("onCreate is called: ").append(s1).append("activity sate: ").append(s).toString());
        if (s1 != null && !"forced_killed".equals(s))
        {
            if (VoiceCallController.getVoiceCallController().isNumber(s1))
            {
                Intent intent = new Intent("android.intent.action.CALL");
                if (android.os.Build.VERSION.SDK_INT > 19)
                    intent.setPackage("com.android.telecomm");
                else
                    intent.setPackage("com.android.phone");
                intent.setData(Uri.parse((new StringBuilder()).append("tel:").append(s1).toString()));
                startActivityForResult(intent, 201);
            }
            return;
        } else
        {
            finish();
            return;
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Log.d("VoiceCallController", "PhoneCallBaseActivity onDestroy is called");
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putString("activty_state", "forced_killed");
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("PhoneCallBaseActivity", "PhoneCallBaseActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("PhoneCallBaseActivity", "PhoneCallBaseActivity is stopped");
    }

    public void showToastMessage(String s, Context context)
    {
        Log.d("VoiceCallController", (new StringBuilder()).append("PhoneCallBaseActivity call: ").append(s).toString());
    }
}
