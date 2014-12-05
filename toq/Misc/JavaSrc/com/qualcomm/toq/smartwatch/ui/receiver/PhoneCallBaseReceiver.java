// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.receiver;

import android.content.*;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.VoiceCallController;
import com.qualcomm.toq.smartwatch.ui.activity.PhoneCallBaseActivity;

public class PhoneCallBaseReceiver extends BroadcastReceiver
{


    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (Constants.ACTION_INITIATE_CALL.equals(s))
        {
            Log.printUsageLog("PhoneCallBaseReceiver", "initiating a call");
            String s1 = intent.getStringExtra((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.number").toString());
            if (VoiceCallController.getVoiceCallController().isNumber(s1))
            {
                Intent intent1 = new Intent(context, com/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity);
                intent1.addFlags(0x14000000);
                intent1.putExtra((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.number").toString(), s1);
                context.startActivity(intent1);
            }
        } else
        if (Constants.ACTION_CANCEL_CALL.equals(s))
            return;
    }
}
