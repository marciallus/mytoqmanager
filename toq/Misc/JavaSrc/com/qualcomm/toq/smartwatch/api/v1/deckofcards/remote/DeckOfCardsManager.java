// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote;

import android.content.*;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsEventListener;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.Message;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.Status;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.Logger;
import java.io.IOException;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote:
//            RemoteDeckOfCardsException, DeckOfCardsManagerListener, RemoteDeckOfCards, RemoteResourceStore, 
//            RemoteToqNotification

public final class DeckOfCardsManager
{
    private class BinderDeathHandler
        implements android.os.IBinder.DeathRecipient
    {

        final DeckOfCardsManager this$0;

        public void binderDied()
        {
            Logger.w("DeckOfCardsManager.BinderDeathHandler.binderDied - binder to service died");
            reset();
        }

        private BinderDeathHandler()
        {
            this$0 = DeckOfCardsManager.this;
            super();
        }

        BinderDeathHandler(BinderDeathHandler binderdeathhandler)
        {
            this();
        }
    }


    private static final String TOQ_API_PREFS_FILE = "QualcommToqApiPrefsFile_v1";
    private static final String TOQ_INSTALLATION_TOKEN = "QualcommToqInstallationToken";
    private static DeckOfCardsManager inst;
    private IBinder _binder;
    private String _installationToken;
    private BinderDeathHandler binderDeathHandler;
    private Context context;
    private Set deckOfCardsEventListeners;
    private Set deckOfCardsManagerListeners;
    private Object mutex;
    private String packageName;
    private IDeckOfCardsManager_v1 service;
    private ServiceConnection serviceConnection;

    private DeckOfCardsManager(Context context1)
    {
        mutex = new Object();
        serviceConnection = new ServiceConnection() {

            final DeckOfCardsManager this$0;

            public void onServiceConnected(ComponentName componentname, IBinder ibinder)
            {
                _binder = ibinder;
                service = com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1.Stub.asInterface(ibinder);
                Logger.i((new StringBuilder("DeckOfCardsManager.ServiceConnection.onServiceConnected - className: ")).append(componentname).append(", service: ").append(service).toString());
                Iterator iterator;
                try
                {
                    _binder.linkToDeath(binderDeathHandler, 0);
                }
                catch (Exception exception)
                {
                    Logger.w("DeckOfCardsManager.ServiceConnection.onServiceConnected - unable to link to binder death handler", exception);
                }
                try
                {
                    if (isValidInstall())
                        addCallback();
                }
                catch (RemoteDeckOfCardsException remotedeckofcardsexception)
                {
                    Logger.w("DeckOfCardsManager.ServiceConnection.onServiceConnected - an error occurred adding the callback", remotedeckofcardsexception);
                }
                iterator = deckOfCardsManagerListeners.iterator();
                do
                {
                    if (!iterator.hasNext())
                        return;
                    ((DeckOfCardsManagerListener)iterator.next()).onConnected();
                } while (true);
            }

            public void onServiceDisconnected(ComponentName componentname)
            {
                Logger.i((new StringBuilder("DeckOfCardsManager.ServiceConnection.onServiceDisconnected - className: ")).append(componentname).append(", service: ").append(service).toString());
                reset();
            }

            
            {
                this$0 = DeckOfCardsManager.this;
                super();
            }
        }
;
        context = context1;
        packageName = context1.getPackageName();
        binderDeathHandler = new BinderDeathHandler(null);
        deckOfCardsManagerListeners = new LinkedHashSet();
        deckOfCardsEventListeners = new LinkedHashSet();
        Logger.i("Qualcomm Toq 3rd party API v1.5.2 (152)");
    }

    private void addCallback()
        throws RemoteDeckOfCardsException
    {
        if (!isInstalled())
            throw new RemoteDeckOfCardsException("Deck of cards is not installed");
        Status status = new Status();
        try
        {
            service.addCallback(status, packageName, getInstallationToken(), new com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.ICallback_v1.Stub() {

                final DeckOfCardsManager this$0;

                public void onMessage(Message message)
                    throws RemoteException
                {
                    switch (message.getEventType())
                    {
                    case 6: // '\006'
                        for (Iterator iterator5 = deckOfCardsEventListeners.iterator(); iterator5.hasNext(); ((DeckOfCardsEventListener)iterator5.next()).onMenuOptionSelected(message.getCardId(), message.getSelectedMenuOption(), message.getQuickReplyOption()));
                        break;

                    case 5: // '\005'
                        for (Iterator iterator4 = deckOfCardsEventListeners.iterator(); iterator4.hasNext(); ((DeckOfCardsEventListener)iterator4.next()).onMenuOptionSelected(message.getCardId(), message.getSelectedMenuOption()));
                        break;

                    case 4: // '\004'
                        for (Iterator iterator3 = deckOfCardsEventListeners.iterator(); iterator3.hasNext(); ((DeckOfCardsEventListener)iterator3.next()).onCardClosed(message.getCardId()));
                        break;

                    case 3: // '\003'
                        for (Iterator iterator2 = deckOfCardsEventListeners.iterator(); iterator2.hasNext(); ((DeckOfCardsEventListener)iterator2.next()).onCardInvisible(message.getCardId()));
                        break;

                    case 2: // '\002'
                        for (Iterator iterator1 = deckOfCardsEventListeners.iterator(); iterator1.hasNext(); ((DeckOfCardsEventListener)iterator1.next()).onCardVisible(message.getCardId()));
                        break;

                    case 1: // '\001'
                        for (Iterator iterator = deckOfCardsEventListeners.iterator(); iterator.hasNext(); ((DeckOfCardsEventListener)iterator.next()).onCardOpen(message.getCardId()));
                        break;

                    default:
                        Logger.w((new StringBuilder("DeckOfCardsManager.addCallback().onMessage - unable to parse event, message: ")).append(message).toString());
                        break;
                    }
                }

                public void onUninstalled()
                    throws RemoteException
                {
                    Logger.i("DeckOfCardsManager.addCallback().onUninstalled");
                    Iterator iterator;
                    try
                    {
                        resetInstallationToken();
                    }
                    catch (IOException ioexception)
                    {
                        Logger.w("DeckOfCardsManager.addCallback().onUninstalled - an error occurred resetting the installation token", ioexception);
                    }
                    iterator = deckOfCardsManagerListeners.iterator();
                    do
                    {
                        if (!iterator.hasNext())
                            return;
                        ((DeckOfCardsManagerListener)iterator.next()).onUninstalled();
                    } while (true);
                }

            
            {
                this$0 = DeckOfCardsManager.this;
                super();
            }
            }
);
        }
        catch (Exception exception)
        {
            throw new RemoteDeckOfCardsException("An error occurred adding the callback", exception);
        }
        if (status.getStatusCode() != 1)
            throw new RemoteDeckOfCardsException(status.getStatusCode(), (new StringBuilder("An error occurred adding the callback: ")).append(status.getMessage()).toString());
        else
            return;
    }

    private String getInstallationToken()
    {
        if (_installationToken == null)
            synchronized (mutex)
            {
                if (_installationToken == null)
                    _installationToken = readInstallationToken();
            }
        return _installationToken;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static DeckOfCardsManager getInstance(Context context1)
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new DeckOfCardsManager(context1);
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean isValidInstall()
        throws RemoteDeckOfCardsException
    {
        Status status;
label0:
        {
            status = new Status();
            boolean flag;
            int i;
            try
            {
                flag = service.isValidInstall(status, packageName, getInstallationToken());
            }
            catch (Exception exception)
            {
                throw new RemoteDeckOfCardsException("An error occurred validating the installation", exception);
            }
            i = status.getStatusCode();
            if (i != 1)
            {
                if (i != -200 && i != -201)
                    break label0;
                try
                {
                    resetInstallationToken();
                }
                catch (IOException ioexception)
                {
                    throw new RemoteDeckOfCardsException("An error occurred resetting the installation token", ioexception);
                }
            }
            return flag;
        }
        throw new RemoteDeckOfCardsException(status.getStatusCode(), (new StringBuilder("An error occurred validating the installation: ")).append(status.getMessage()).toString());
    }

    private String readInstallationToken()
    {
        return context.getSharedPreferences("QualcommToqApiPrefsFile_v1", 0).getString("QualcommToqInstallationToken", null);
    }

    private void reset()
    {
        service = null;
        if (_binder != null)
        {
            _binder.unlinkToDeath(binderDeathHandler, 0);
            _binder = null;
        }
        Iterator iterator = deckOfCardsManagerListeners.iterator();
        do
        {
            if (!iterator.hasNext())
                return;
            ((DeckOfCardsManagerListener)iterator.next()).onDisconnected();
        } while (true);
    }

    private void resetInstallationToken()
        throws IOException
    {
        writeInstallationToken(null);
        synchronized (mutex)
        {
            _installationToken = null;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void writeInstallationToken(String s)
        throws IOException
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("QualcommToqApiPrefsFile_v1", 0).edit();
        editor.putString("QualcommToqInstallationToken", s);
        editor.commit();
    }

    public void addDeckOfCardsEventListener(DeckOfCardsEventListener deckofcardseventlistener)
    {
        deckOfCardsEventListeners.add(deckofcardseventlistener);
    }

    public void addDeckOfCardsManagerListener(DeckOfCardsManagerListener deckofcardsmanagerlistener)
    {
        deckOfCardsManagerListeners.add(deckofcardsmanagerlistener);
    }

    public void connect()
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = isConnected();
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        android.content.pm.PackageInfo packageinfo = context.getPackageManager().getPackageInfo("com.qualcomm.toq", 1);
        boolean flag1;
        flag1 = false;
        if (packageinfo != null)
            flag1 = true;
_L4:
        if (flag1)
            break; /* Loop/switch isn't completed */
        throw new RemoteDeckOfCardsException("Qualcomm Toq app is not installed on this device");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        flag1 = false;
        if (true) goto _L4; else goto _L3
_L3:
        Intent intent = new Intent("com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1");
        intent.setPackage("com.qualcomm.toq");
        if (!context.bindService(intent, serviceConnection, 1))
            throw new RemoteDeckOfCardsException("Failed to bind to the Qualcomm Toq app service (different version of api or Toq app uninstalled?)");
          goto _L1
    }

    public void disconnect()
    {
        this;
        JVM INSTR monitorenter ;
        context.unbindService(serviceConnection);
_L1:
        reset();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        Logger.w((new StringBuilder("DeckOfCardsManager.disconnect - an error occurred disconnecting: ")).append(exception1.getMessage()).toString());
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void installDeckOfCards(RemoteDeckOfCards remotedeckofcards)
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        installDeckOfCards(remotedeckofcards, null);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void installDeckOfCards(RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore)
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        Logger.i((new StringBuilder("DeckOfCardsManager.installDeckOfCards - deckOfCards: ")).append(remotedeckofcards).append(", resourceStore: ").append(remoteresourcestore).toString());
        if (remotedeckofcards != null)
            break MISSING_BLOCK_LABEL_52;
        throw new RemoteDeckOfCardsException("DeckOfCards must not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Status status;
        if (isInstalled())
            throw new RemoteDeckOfCardsException("Deck of cards applet is already installed");
        status = new Status();
        service.installDeckOfCards(status, packageName, remotedeckofcards, remoteresourcestore, new com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1.Stub() {

            final DeckOfCardsManager this$0;

            public void onInstallationDenied()
                throws RemoteException
            {
                Logger.i("DeckOfCardsManager.installDeckOfCards.onInstallationDenied");
                Iterator iterator = deckOfCardsManagerListeners.iterator();
                do
                {
                    if (!iterator.hasNext())
                        return;
                    ((DeckOfCardsManagerListener)iterator.next()).onInstallationDenied();
                } while (true);
            }

            public void onInstallationSuccessful(String s)
                throws RemoteException
            {
                Logger.i("DeckOfCardsManager.installDeckOfCards.onInstallationSuccessful");
                Iterator iterator;
                try
                {
                    writeInstallationToken(s);
                }
                catch (Exception exception2)
                {
                    Logger.e("DeckOfCardsManager.installDeckOfCards.onInstallationSuccessful - an error occurred storing the installation token", exception2);
                    throw new RemoteException("An error occurred storing the installation token");
                }
                try
                {
                    addCallback();
                }
                catch (RemoteDeckOfCardsException remotedeckofcardsexception)
                {
                    Logger.w("DeckOfCardsManager.installDeckOfCards.onInstallationSuccessful - an error occurred adding the callback", remotedeckofcardsexception);
                }
                iterator = deckOfCardsManagerListeners.iterator();
                do
                {
                    if (!iterator.hasNext())
                        return;
                    ((DeckOfCardsManagerListener)iterator.next()).onInstallationSuccessful();
                } while (true);
            }

            
            {
                this$0 = DeckOfCardsManager.this;
                super();
            }
        }
);
        if (status.getStatusCode() != 1)
            throw new RemoteDeckOfCardsException(status.getStatusCode(), (new StringBuilder("An error occurred installing the deck of cards applet: ")).append(status.getMessage()).toString());
        break MISSING_BLOCK_LABEL_162;
        Exception exception1;
        exception1;
        throw new RemoteDeckOfCardsException("An error occurred installing the deck of cards applet", exception1);
        this;
        JVM INSTR monitorexit ;
    }

    public boolean isConnected()
    {
        return service != null;
    }

    public boolean isInstalled()
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        if (!isConnected())
            throw new RemoteDeckOfCardsException("Not connected to Qualcomm Toq app service");
        break MISSING_BLOCK_LABEL_25;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        String s = getInstallationToken();
        boolean flag;
        if (s != null)
            flag = true;
        else
            flag = false;
        this;
        JVM INSTR monitorexit ;
        return flag;
    }

    public boolean isToqWatchConnected()
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        if (!isConnected())
            throw new RemoteDeckOfCardsException("Not connected to Qualcomm Toq app service");
        break MISSING_BLOCK_LABEL_25;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Status status = new Status();
        boolean flag = service.isToqWatchConnected(status, packageName);
        if (status.getStatusCode() != 1)
            throw new RemoteDeckOfCardsException(status.getStatusCode(), (new StringBuilder("An error occurred checking if the Toq smartwatch is connected: ")).append(status.getMessage()).toString());
        break MISSING_BLOCK_LABEL_102;
        Exception exception1;
        exception1;
        throw new RemoteDeckOfCardsException("An error occurred checking if the Toq smartwatch is connected", exception1);
        this;
        JVM INSTR monitorexit ;
        return flag;
    }

    public void removeDeckOfCardsEventListener(DeckOfCardsEventListener deckofcardseventlistener)
    {
        deckOfCardsEventListeners.remove(deckofcardseventlistener);
    }

    public void removeDeckOfCardsManagerListener(DeckOfCardsManagerListener deckofcardsmanagerlistener)
    {
        deckOfCardsManagerListeners.remove(deckofcardsmanagerlistener);
    }

    public void sendNotification(RemoteToqNotification remotetoqnotification)
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        Logger.i((new StringBuilder("DeckOfCardsManager.sendNotification - notification: ")).append(remotetoqnotification).toString());
        if (remotetoqnotification != null)
            break MISSING_BLOCK_LABEL_42;
        throw new RemoteDeckOfCardsException("Notification must not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Status status;
        if (!isInstalled())
            throw new RemoteDeckOfCardsException("Deck of cards applet is not installed");
        status = new Status();
        service.sendNotification(status, packageName, getInstallationToken(), remotetoqnotification);
        if (status.getStatusCode() != 1)
            throw new RemoteDeckOfCardsException(status.getStatusCode(), (new StringBuilder("An error occurred sending the notification: ")).append(status.getMessage()).toString());
        break MISSING_BLOCK_LABEL_142;
        Exception exception1;
        exception1;
        throw new RemoteDeckOfCardsException("An error occurred sending the notification", exception1);
        this;
        JVM INSTR monitorexit ;
    }

    public void uninstallDeckOfCards()
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        Logger.i("DeckOfCardsManager.uninstallDeckOfCards");
        if (!isInstalled())
            throw new RemoteDeckOfCardsException("Deck of cards applet is not installed");
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Status status = new Status();
        service.uninstallDeckOfCards(status, packageName, getInstallationToken());
        if (status.getStatusCode() != 1)
            throw new RemoteDeckOfCardsException(status.getStatusCode(), (new StringBuilder("An error occurred uninstalling the deck of cards applet: ")).append(status.getMessage()).toString());
        break MISSING_BLOCK_LABEL_110;
        Exception exception1;
        exception1;
        throw new RemoteDeckOfCardsException("An error occurred uninstalling the deck of cards applet", exception1);
        resetInstallationToken();
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        throw new RemoteDeckOfCardsException("An error occurred resetting the installation token", ioexception);
    }

    public void updateDeckOfCards(RemoteDeckOfCards remotedeckofcards)
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        updateDeckOfCards(remotedeckofcards, null);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void updateDeckOfCards(RemoteDeckOfCards remotedeckofcards, RemoteResourceStore remoteresourcestore)
        throws RemoteDeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        Logger.i((new StringBuilder("DeckOfCardsManager.updateDeckOfCards - deckOfCards: ")).append(remotedeckofcards).append(", resourceStore: ").append(remoteresourcestore).toString());
        if (remotedeckofcards != null)
            break MISSING_BLOCK_LABEL_52;
        throw new RemoteDeckOfCardsException("DeckOfCards must not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Status status;
        if (!isInstalled())
            throw new RemoteDeckOfCardsException("Deck of cards applet is not installed");
        status = new Status();
        service.updateDeckOfCards(status, packageName, getInstallationToken(), remotedeckofcards, remoteresourcestore);
        if (status.getStatusCode() != 1)
            throw new RemoteDeckOfCardsException(status.getStatusCode(), (new StringBuilder("An error occurred updating the deck of cards applet: ")).append(status.getMessage()).toString());
        break MISSING_BLOCK_LABEL_158;
        Exception exception1;
        exception1;
        throw new RemoteDeckOfCardsException("An error occurred updating the deck of cards applet", exception1);
        this;
        JVM INSTR monitorexit ;
    }












}
