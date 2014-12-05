// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.service;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.IBinder;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.service.PHubService;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.service:
//            RemoteDeckOfCardsManagerImpl_v1

public final class DeckOfCardsService extends Service
{

    private RemoteDeckOfCardsManagerImpl_v1 remoteDeckOfCardsManagerImpl_v1;


    public IBinder onBind(Intent intent)
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsService.onBind - intent: ").append(intent).toString());
        if (intent.getAction().equals("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"))
        {
            return remoteDeckOfCardsManagerImpl_v1;
        } else
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("DeckOfCardsService.onBind - unrecognised interface requested: ").append(intent.getAction()).toString());
            return null;
        }
    }

    public void onCreate()
    {
        super.onCreate();
        Log.d("DeckOfCards", "DeckOfCardsService.onCreate - start...");
        if (PHubService.isPHubServiceRunning)
            break MISSING_BLOCK_LABEL_122;
        Log.d("DeckOfCards", "DeckOfCardsService.onCreate - Toq service not running, launching...");
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        if (Utils.isEulaAgreementAccepted() && PhubBluetoothDeviceBondInfo.getInstance().isWDBonded() && bluetoothadapter != null)
            try
            {
                if (bluetoothadapter.isEnabled())
                    startService(new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName()));
            }
            catch (Exception exception)
            {
                Log.e("DeckOfCards", "DeckOfCardsService.onCreate - an error occurred launching the Toq service", exception);
            }
_L1:
        try
        {
            remoteDeckOfCardsManagerImpl_v1 = new RemoteDeckOfCardsManagerImpl_v1();
        }
        catch (DeckOfCardsException deckofcardsexception)
        {
            throw new IllegalStateException("Unable to start service", deckofcardsexception);
        }
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsService.onCreate - remoteDeckOfCardsManagerImpl_v1: ").append(remoteDeckOfCardsManagerImpl_v1).toString());
        return;
        Log.d("DeckOfCards", "DeckOfCardsService.onCreate - Toq service already running");
          goto _L1
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        return 1;
    }
}
