// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service.receiver;

import android.content.*;
import android.os.Bundle;
import android.view.KeyEvent;
import com.qualcomm.toq.base.utils.Log;

public class HeadsetBroadCastReciever extends BroadcastReceiver
{


    public void onReceive(Context context, Intent intent)
    {
        Log.e("VoiceCallController", (new StringBuilder()).append("HeadsetBroadCastReciever recieved Event.  intent action= ").append(intent.getAction()).toString());
        try
        {
            if (intent.getAction().equals("android.intent.action.HEADSET_PLUG"))
            {
                Intent intent1 = new Intent("android.intent.action.MEDIA_BUTTON");
                intent1.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 79));
                context.sendOrderedBroadcast(intent1, "android.permission.CALL_PRIVILEGED");
                if (intent.getExtras().getInt("state", -1) != 0)
                {
                    Intent intent2 = new Intent("android.intent.action.HEADSET_PLUG");
                    intent2.addFlags(0x40000000);
                    intent2.putExtra("state", 0);
                    intent2.putExtra("name", "Headset");
                    context.sendOrderedBroadcast(intent2, null);
                }
            }
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("HeadsetBroadCastReciever", (new StringBuilder()).append("Exception in HeadsetBroadCastReciever onReceive(): ").append(exception.toString()).toString());
            return;
        }
    }
}
