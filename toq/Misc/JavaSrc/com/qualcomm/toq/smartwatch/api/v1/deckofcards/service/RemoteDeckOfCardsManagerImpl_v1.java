// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.service;

import android.content.Context;
import android.os.RemoteException;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.DeckOfCardsUtils;

final class RemoteDeckOfCardsManagerImpl_v1 extends com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1.Stub
{

    private static final boolean VERIFY_DEVICE_STATE = true;
    private static final boolean VERIFY_SECURITY = true;
    private Context context;
    private LocalDeckOfCardsManager localDeckOfCardsManager;

    RemoteDeckOfCardsManagerImpl_v1()
        throws DeckOfCardsException
    {
        localDeckOfCardsManager = LocalDeckOfCardsManager.getInstance();
        context = ToqApplication.getAppContext();
        Log.d("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.constructor");
    }

    private boolean isValidClientApiVersion(Status status)
    {
        if (status.getClientApiVersion() > 152)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.isValidClientApiVersion - client api version incompatible (client api version: ").append(status.getClientApiVersion()).append(", Toq app api version: ").append(152).append("), Toq app upgrade required...").toString());
            status.setStatus(-600, context.getString(0x7f0a00f1));
            return false;
        } else
        {
            return true;
        }
    }

    private boolean isValidCredentials(Status status, String s, String s1)
    {
        if (s == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isValidCredentials - package name is null");
            status.setStatus(-200, context.getString(0x7f0a00ec));
        } else
        {
            if (s1 == null)
            {
                Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isValidCredentials - token is null");
                status.setStatus(-200, context.getString(0x7f0a00ed));
                return false;
            }
            if (localDeckOfCardsManager.isValidInstall(status, s, s1))
                return true;
        }
        return false;
    }

    private boolean isValidDeviceState(Status status)
    {
        if (!DeckOfCardsUtils.isBluetoothEnabled())
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isValidDeviceState - bluetooth is disabled");
            status.setStatus(-100, context.getString(0x7f0a00ea));
            return false;
        }
        if (!DeckOfCardsUtils.isValidWDState())
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isValidDeviceState - qualcomm Toq invalid state");
            status.setStatus(-101, context.getString(0x7f0a00eb));
            return false;
        } else
        {
            return true;
        }
    }

    public void addCallback(Status status, String s, String s1, ICallback_v1 icallback_v1)
        throws RemoteException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.addCallback - status: ").append(status).append(", packageName: ").append(s).append(", remoteCallback: ").append(icallback_v1).toString());
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.addCallback - status is null");
            throw new RemoteException("status is null");
        }
        if (isValidClientApiVersion(status) && isValidCredentials(status, s, s1))
        {
            if (icallback_v1 == null)
            {
                Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.addCallback - remote callback is null");
                status.setStatus(-999, "remote callback is null");
                return;
            } else
            {
                localDeckOfCardsManager.addCallback(s, icallback_v1);
                status.setStatusCode(1);
                return;
            }
        } else
        {
            return;
        }
    }

    public void installDeckOfCards(Status status, String s, RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore, IInstallationCallback_v1 iinstallationcallback_v1)
        throws RemoteException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - status: ").append(status).append(", packageName: ").append(s).append(", deckOfCards: ").append(remotedeckofcards).append(", resourceStore: ").append(remoteresourcestore).append(", remoteInstallationCallback: ").append(iinstallationcallback_v1).toString());
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - status is null");
            throw new RemoteException("status is null");
        }
        if (isValidClientApiVersion(status) && isValidDeviceState(status))
        {
            if (s == null)
            {
                Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - package name is null");
                status.setStatus(-200, context.getString(0x7f0a00ec));
                return;
            }
            if (localDeckOfCardsManager.isInstalled(s))
            {
                Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - deck of cards already installed");
                status.setStatus(-202, context.getString(0x7f0a00ef));
                return;
            }
            if (remotedeckofcards == null)
            {
                Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - deck of cards is null");
                status.setStatus(-999, "deck of cards is null");
                return;
            }
            if (iinstallationcallback_v1 == null)
            {
                Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - remote installation callback is null");
                status.setStatus(-999, "remote installation callback is null");
                return;
            } else
            {
                localDeckOfCardsManager.triggerInstallation(s, remotedeckofcards, remoteresourcestore, iinstallationcallback_v1);
                status.setStatusCode(1);
                return;
            }
        } else
        {
            return;
        }
    }

    public boolean isToqWatchConnected(Status status, String s)
        throws RemoteException
    {
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isToqWatchConnected - status is null");
            throw new RemoteException("status is null");
        }
        if (!isValidClientApiVersion(status))
            return false;
        if (s == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isToqWatchConnected - package name is null");
            status.setStatus(-200, context.getString(0x7f0a00ec));
            return false;
        }
        boolean flag = DeckOfCardsUtils.isBluetoothEnabled();
        boolean flag1 = false;
        if (flag)
        {
            boolean flag2 = DeckOfCardsUtils.isValidWDState();
            flag1 = false;
            if (flag2)
                flag1 = true;
        }
        status.setStatusCode(1);
        return flag1;
    }

    public boolean isValidInstall(Status status, String s, String s1)
        throws RemoteException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.isValidInstall - status: ").append(status).append(", packageName: ").append(s).toString());
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isValidInstall - status is null");
            throw new RemoteException("status is null");
        }
        if (isValidClientApiVersion(status))
            if (!isValidCredentials(status, s, s1))
            {
                if (s != null && localDeckOfCardsManager.isInstalled(s))
                {
                    try
                    {
                        localDeckOfCardsManager.manualUninstall(s);
                    }
                    catch (Exception exception)
                    {
                        Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.isValidInstall - an error occurred uninstalling", exception);
                        status.setStatus(-500, exception.getMessage());
                        return false;
                    }
                    return false;
                }
            } else
            {
                status.setStatusCode(1);
                return true;
            }
        return false;
    }

    public void removeCallback(Status status, String s, String s1)
        throws RemoteException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.removeCallback - status: ").append(status).append(", packageName: ").append(s).toString());
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.removeCallback - status is null");
            throw new RemoteException("status is null");
        }
        if (isValidClientApiVersion(status) && isValidCredentials(status, s, s1))
        {
            localDeckOfCardsManager.removeCallback(s);
            status.setStatusCode(1);
            return;
        } else
        {
            return;
        }
    }

    public void sendNotification(Status status, String s, String s1, RemoteToqNotification remotetoqnotification)
        throws RemoteException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.sendNotification - status: ").append(status).append(", packageName: ").append(s).append(", notification: ").append(remotetoqnotification).toString());
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.sendNotification - status is null");
            throw new RemoteException("status is null");
        }
        while (!isValidClientApiVersion(status) || !isValidDeviceState(status) || !isValidCredentials(status, s, s1)) 
            return;
        if (remotetoqnotification == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.sendNotification - notification is null");
            status.setStatus(-999, "notification is null");
            return;
        }
        try
        {
            localDeckOfCardsManager.sendNotification(remotetoqnotification);
            status.setStatusCode(1);
            return;
        }
        catch (Exception exception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.sendNotification - an error occurred sending the notification: ").append(remotetoqnotification).toString(), exception);
            status.setStatus(-300, exception.getMessage());
            return;
        }
    }

    public void uninstallDeckOfCards(Status status, String s, String s1)
        throws RemoteException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.uninstallDeckOfCards - status: ").append(status).append(", packageName: ").append(s).toString());
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.uninstallDeckOfCards - status is null");
            throw new RemoteException("status is null");
        }
        while (!isValidClientApiVersion(status) || !isValidDeviceState(status) || !isValidCredentials(status, s, s1)) 
            return;
        try
        {
            localDeckOfCardsManager.uninstallDeckOfCards(s);
            status.setStatusCode(1);
            return;
        }
        catch (Exception exception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.uninstallDeckOfCards - an error occurred uninstalling the deck of cards for package name: ").append(s).toString(), exception);
            status.setStatus(-402, exception.getMessage());
            return;
        }
    }

    public void updateDeckOfCards(Status status, String s, String s1, RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore)
        throws RemoteException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - status: ").append(status).append(", packageName: ").append(s).append(", deckOfCards: ").append(remotedeckofcards).append(", resourceStore: ").append(remoteresourcestore).toString());
        if (status == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - status is null");
            throw new RemoteException("status is null");
        }
        while (!isValidClientApiVersion(status) || !isValidDeviceState(status) || !isValidCredentials(status, s, s1)) 
            return;
        if (remotedeckofcards == null)
        {
            Log.w("DeckOfCards", "RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - deck of cards is null");
            status.setStatus(-999, "deck of cards is null");
            return;
        }
        try
        {
            localDeckOfCardsManager.updateDeckOfCards(remotedeckofcards, remoteresourcestore);
            status.setStatusCode(1);
            return;
        }
        catch (Exception exception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - an error occurred updating the deck of cards: ").append(remotedeckofcards).toString(), exception);
            status.setStatus(-401, exception.getMessage());
            return;
        }
    }
}
