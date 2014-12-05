// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.receiver;

import android.content.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;

public class SmartwatchUpgradeReceiver extends BroadcastReceiver
{

    private static final String TAG = "SmartwatchUpgradeReceiver";


    public void onReceive(Context context, Intent intent)
    {
        String s;
        s = intent.getAction();
        Log.d("SmartwatchUpgradeReceiver", (new StringBuilder()).append("onReceive() ").append(s).toString());
        if (s == null)
            break MISSING_BLOCK_LABEL_62;
        LocalDeckOfCardsManager localdeckofcardsmanager;
        if (!s.equals("com.qualcomm.toq.smartwatch.app_updated"))
            break MISSING_BLOCK_LABEL_62;
        localdeckofcardsmanager = LocalDeckOfCardsManager.getInstance();
        if (localdeckofcardsmanager != null)
            try
            {
                localdeckofcardsmanager.updateDeckOfCardsAppZip();
                return;
            }
            catch (Exception exception)
            {
                Log.e("SmartwatchUpgradeReceiver", "!!! SmartwatchUpgradeReceiver exception !!!");
                exception.printStackTrace();
            }
        break MISSING_BLOCK_LABEL_82;
        Log.e("SmartwatchUpgradeReceiver", " This is not a smartwatch upgrade intent.");
        return;
    }
}
