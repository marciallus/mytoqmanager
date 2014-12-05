// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards;

import android.content.*;
import android.content.pm.*;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalDeckOfCards;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalNotifyTextCard;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.io.FileManager;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.io.FileRecord;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.ICallback_v1;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IInstallationCallback_v1;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.Message;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.Status;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer.AbstractDeckOfCardsSync;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer.DeckOfCardsSync;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer.DeckOfCardsSyncFactory;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade;
import com.qualcomm.toq.smartwatch.controller.AppMessagingController;
import com.qualcomm.toq.smartwatch.ui.activity.MoreAppletsActivity;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.*;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards:
//            DeckOfCardsException, DeckOfCards, ToqNotification, ResourceStore

public final class LocalDeckOfCardsManager
{
    private static final class APPLET_INSTALLATION_EVENT extends Enum
    {

        private static final APPLET_INSTALLATION_EVENT $VALUES[];
        public static final APPLET_INSTALLATION_EVENT APPLET_INSTALL;
        public static final APPLET_INSTALLATION_EVENT APPLET_UNINSTALL;
        public static final APPLET_INSTALLATION_EVENT APPLET_UPDATE;

        public static APPLET_INSTALLATION_EVENT valueOf(String s)
        {
            return (APPLET_INSTALLATION_EVENT)Enum.valueOf(com/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT, s);
        }

        public static APPLET_INSTALLATION_EVENT[] values()
        {
            return (APPLET_INSTALLATION_EVENT[])$VALUES.clone();
        }

        static 
        {
            APPLET_INSTALL = new APPLET_INSTALLATION_EVENT("APPLET_INSTALL", 0);
            APPLET_UPDATE = new APPLET_INSTALLATION_EVENT("APPLET_UPDATE", 1);
            APPLET_UNINSTALL = new APPLET_INSTALLATION_EVENT("APPLET_UNINSTALL", 2);
            APPLET_INSTALLATION_EVENT aapplet_installation_event[] = new APPLET_INSTALLATION_EVENT[3];
            aapplet_installation_event[0] = APPLET_INSTALL;
            aapplet_installation_event[1] = APPLET_UPDATE;
            aapplet_installation_event[2] = APPLET_UNINSTALL;
            $VALUES = aapplet_installation_event;
        }

        private APPLET_INSTALLATION_EVENT(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface AppletInstallationListener
    {

        public abstract void onAppletInstall(String s);

        public abstract void onAppletUninstall(String s);

        public abstract void onAppletUpdate(String s);
    }

    private class Callback
    {

        private CallbackBinderDeathHandler binderDeathHandler;
        private ICallback_v1 callback;
        private String packageName;
        final LocalDeckOfCardsManager this$0;

        public String toString()
        {
            return (new StringBuilder()).append("[").append("packageName=").append(packageName).append(",").append("callback=").append(callback).append(",").append("binderDeathHandler=").append(binderDeathHandler).append("]").toString();
        }



        private Callback(String s, ICallback_v1 icallback_v1, CallbackBinderDeathHandler callbackbinderdeathhandler)
        {
            this$0 = LocalDeckOfCardsManager.this;
            super();
            packageName = s;
            callback = icallback_v1;
            binderDeathHandler = callbackbinderdeathhandler;
        }

    }

    private class CallbackBinderDeathHandler
        implements android.os.IBinder.DeathRecipient
    {

        private String packageName;
        final LocalDeckOfCardsManager this$0;

        public void binderDied()
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.CallbackBinderDeathHandler.binderDied - remote callback to client app died, packageName: ").append(packageName).toString());
            removeCallback(packageName);
        }

        private CallbackBinderDeathHandler(String s)
        {
            this$0 = LocalDeckOfCardsManager.this;
            super();
            packageName = s;
        }

    }

    private class InstallationCallback
    {

        private InstallationCallbackBinderDeathHandler binderDeathHandler;
        private IInstallationCallback_v1 callback;
        private DeckOfCards deckOfCards;
        private String packageName;
        private ResourceStore resourceStore;
        final LocalDeckOfCardsManager this$0;

        public String toString()
        {
            return (new StringBuilder()).append("[").append("packageName=").append(packageName).append(",").append("deckOfCards=").append(deckOfCards).append(",").append("resourceStore=").append(resourceStore).append(",").append("callback=").append(callback).append(",").append("binderDeathHandler=").append(binderDeathHandler).append("]").toString();
        }





        private InstallationCallback(String s, DeckOfCards deckofcards, ResourceStore resourcestore, IInstallationCallback_v1 iinstallationcallback_v1, InstallationCallbackBinderDeathHandler installationcallbackbinderdeathhandler)
        {
            this$0 = LocalDeckOfCardsManager.this;
            super();
            packageName = s;
            deckOfCards = deckofcards;
            resourceStore = resourcestore;
            callback = iinstallationcallback_v1;
            binderDeathHandler = installationcallbackbinderdeathhandler;
        }

    }

    private class InstallationCallbackBinderDeathHandler
        implements android.os.IBinder.DeathRecipient
    {

        private String packageName;
        final LocalDeckOfCardsManager this$0;

        public void binderDied()
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.InstallationCallbackBinderDeathHandler.binderDied - installation callback to client app died, packageName: ").append(packageName).toString());
            removeInstallationCallback(packageName);
        }

        private InstallationCallbackBinderDeathHandler(String s)
        {
            this$0 = LocalDeckOfCardsManager.this;
            super();
            packageName = s;
        }

    }

    private class StateListenerImpl
        implements com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade.StateListener
    {

        final LocalDeckOfCardsManager this$0;

        public void onBluetoothDisabled()
        {
        }

        public void onBluetoothEnabled()
        {
        }

        public void onWatchConnected()
        {
        }

        public void onWatchDisconnected()
        {
        }

        public void onWatchPaired()
        {
        }

        public void onWatchUnpaired()
        {
            Log.d("DeckOfCards", "LocalDeckOfCardsManager.StateListenerImpl.onWatchUnpaired - purging...");
            try
            {
                purgeAll();
                return;
            }
            catch (Exception exception)
            {
                Log.e("DeckOfCards", "LocalDeckOfCardsManager.StateListenerImpl.onWatchUnpaired - an error occurred storing the toq applet records after purging", exception);
            }
        }

        private StateListenerImpl()
        {
            this$0 = LocalDeckOfCardsManager.this;
            super();
        }

    }

    private static class ToqAppletRecord
        implements Serializable
    {

        private static final long serialVersionUID = 0x687366ad086a1553L;
        private HashMap map;

        private String getPackageName()
        {
            return (String)map.get("packageName");
        }

        private String getinstallationToken()
        {
            return (String)map.get("installationToken");
        }

        private boolean isInstalled()
        {
            return ((Boolean)map.get("isInstalled")).booleanValue();
        }

        private boolean isRemote()
        {
            return ((Boolean)map.get("isRemote")).booleanValue();
        }

        private void setInstallationToken(String s)
        {
            map.put("installationToken", s);
        }

        private void setInstalled(boolean flag)
        {
            map.put("isInstalled", Boolean.valueOf(flag));
        }

        private void setRemote(boolean flag)
        {
            map.put("isRemote", Boolean.valueOf(flag));
        }

        public boolean equals(Object obj)
        {
            if (this == obj)
                return true;
            if (obj != null && obj.getClass() == getClass())
                return map.equals(((ToqAppletRecord)obj).map);
            else
                return false;
        }

        public int hashCode()
        {
            return 37 * (185 + getClass().getName().hashCode()) + map.hashCode();
        }

        public String toString()
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("[").append("packageName=").append(getPackageName()).append(",").append("isInstalled=").append(isInstalled()).append(",").append("isRemote=").append(isRemote()).append(",").append("installationToken=");
            String s;
            if (getinstallationToken() != null)
                s = "********";
            else
                s = "null";
            return stringbuilder.append(s).append("]").toString();
        }








        private ToqAppletRecord(String s)
        {
            map = new HashMap();
            map.put("packageName", s);
            setInstalled(false);
            setRemote(false);
        }

    }


    public static final String TOQ_APPLET_RECORDS_FILE = "toq_applet_records_file";
    public static final String TOQ_APPLET_RECORDS_KEY = "top_applet_records_key";
    private static LocalDeckOfCardsManager inst;
    private Set appletInstallationListeners;
    private Map callbackMap;
    private Context context;
    private DeckOfCardsSync deckOfCardsSync;
    private Map iconCacheMap;
    private File iconCacheRoot;
    private Map installationCallbackMap;
    private Handler remoteCallbackHandler;
    private HandlerThread remoteCallbackThread;
    private SecureRandom secureRandom;
    private Map toqAppletRecordsMap;

    private LocalDeckOfCardsManager()
        throws DeckOfCardsException
    {
        remoteCallbackHandler = null;
        remoteCallbackThread = null;
        context = ToqApplication.getAppContext();
        deckOfCardsSync = DeckOfCardsSyncFactory.getInstance().getDeckOfCardsSync();
        callbackMap = Collections.synchronizedMap(new HashMap());
        installationCallbackMap = Collections.synchronizedMap(new HashMap());
        secureRandom = new SecureRandom();
        appletInstallationListeners = new HashSet();
        initIconCache();
        StateListenerFacade.getInstance().addStateListener(new StateListenerImpl());
        toqAppletRecordsMap = getToqAppletRecords();
        if (toqAppletRecordsMap == null)
        {
            toqAppletRecordsMap = Collections.synchronizedMap(new HashMap());
            try
            {
                storeToqAppRecords(toqAppletRecordsMap);
            }
            catch (Exception exception4)
            {
                Log.e("DeckOfCards", "LocalDeckOfCardsManager.constructor - an error occurred saving the new toq applet records", exception4);
            }
        }
_L2:
        Log.i("DeckOfCards", "LocalDeckOfCardsManager.constructor - Qualcomm Toq 3rd party API v1.5.2 (152)");
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.constructor - internal installed applets: ").append(Arrays.toString(getInternalInstalledAppletPackageNames())).toString());
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.constructor - external installed applets: ").append(Arrays.toString(getExternalInstalledAppletPackageNames())).toString());
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.constructor - external not installed applets: ").append(Arrays.toString(getExternalNotInstalledAppletPackageNames())).toString());
        Log.d("DeckOfCards", "LocalDeckOfCardsManager.constructor - done");
        return;
        Exception exception2;
        exception2;
        Log.w("DeckOfCards", "LocalDeckOfCardsManager.constructor - an error occurred retrieving the toq applet records", exception2);
        if (toqAppletRecordsMap == null)
        {
            toqAppletRecordsMap = Collections.synchronizedMap(new HashMap());
            try
            {
                storeToqAppRecords(toqAppletRecordsMap);
            }
            catch (Exception exception3)
            {
                Log.e("DeckOfCards", "LocalDeckOfCardsManager.constructor - an error occurred saving the new toq applet records", exception3);
            }
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        if (toqAppletRecordsMap == null)
        {
            toqAppletRecordsMap = Collections.synchronizedMap(new HashMap());
            try
            {
                storeToqAppRecords(toqAppletRecordsMap);
            }
            catch (Exception exception1)
            {
                Log.e("DeckOfCards", "LocalDeckOfCardsManager.constructor - an error occurred saving the new toq applet records", exception1);
            }
        }
        throw exception;
    }

    private void addInstallationCallback(String s, DeckOfCards deckofcards, ResourceStore resourcestore, IInstallationCallback_v1 iinstallationcallback_v1)
    {
        InstallationCallbackBinderDeathHandler installationcallbackbinderdeathhandler = new InstallationCallbackBinderDeathHandler(s);
        try
        {
            iinstallationcallback_v1.asBinder().linkToDeath(installationcallbackbinderdeathhandler, 0);
        }
        catch (RemoteException remoteexception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.addInstallationCallback - unable to link binder death handler to installation callback, packageName: ").append(s).toString());
        }
        installationCallbackMap.put(s, new InstallationCallback(s, deckofcards, resourcestore, iinstallationcallback_v1, installationcallbackbinderdeathhandler));
    }

    private File cacheIcon(String s, String s1)
        throws DeckOfCardsException
    {
        byte abyte0[];
        File file;
        BufferedOutputStream bufferedoutputstream;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.cacheIcon - iconPackageName: ").append(s).append(", iconFileName: ").append(s1).toString());
        android.graphics.drawable.Drawable drawable;
        try
        {
            PackageManager packagemanager = context.getPackageManager();
            drawable = packagemanager.getApplicationIcon(packagemanager.getApplicationInfo(s, 0));
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new DeckOfCardsException((new StringBuilder()).append("No app installed matching iconPackageName: ").append(s).toString());
        }
        if (drawable == null)
            throw new DeckOfCardsException((new StringBuilder()).append("App has no icon, iconPackageName: ").append(s).toString());
        abyte0 = convertPNGIcon(Bitmap.createScaledBitmap(((BitmapDrawable)drawable).getBitmap(), 48, 48, false));
        file = new File(iconCacheRoot, s1);
        bufferedoutputstream = null;
        BufferedOutputStream bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(file));
        bufferedoutputstream1.write(abyte0);
        bufferedoutputstream1.flush();
        bufferedoutputstream1.close();
        Exception exception;
        Exception exception1;
        if (bufferedoutputstream1 != null)
            try
            {
                bufferedoutputstream1.close();
            }
            catch (IOException ioexception1) { }
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.cacheIcon - stored local icon img: ").append(file).toString());
        return file;
        exception;
_L4:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred storing the icon img, iconPackageName: ").append(s).toString(), exception);
        exception1;
_L2:
        if (bufferedoutputstream != null)
            try
            {
                bufferedoutputstream.close();
            }
            catch (IOException ioexception) { }
        throw exception1;
        exception1;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void dispatchEvent(APPLET_INSTALLATION_EVENT applet_installation_event, String s)
    {
        Iterator iterator = appletInstallationListeners.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            static class _cls3
            {

                static final int $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT[];

                static 
                {
                    $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT = new int[APPLET_INSTALLATION_EVENT.values().length];
                    try
                    {
                        $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT[APPLET_INSTALLATION_EVENT.APPLET_INSTALL.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT[APPLET_INSTALLATION_EVENT.APPLET_UPDATE.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT[APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2)
                    {
                        return;
                    }
                }
            }

            switch (_cls3..SwitchMap.com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager.APPLET_INSTALLATION_EVENT[applet_installation_event.ordinal()])
            {
            case 3: // '\003'
                ((AppletInstallationListener)iterator.next()).onAppletUninstall(s);
                break;

            case 2: // '\002'
                ((AppletInstallationListener)iterator.next()).onAppletUpdate(s);
                break;

            case 1: // '\001'
                ((AppletInstallationListener)iterator.next()).onAppletInstall(s);
                break;
            }
        } while (true);
    }

    private String generateToken(String s)
    {
        return (new BigInteger(130, secureRandom)).toString(32);
    }

    private String[] getInstalledAppletPackageNames(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        arraylist = new ArrayList();
        Iterator iterator = toqAppletRecordsMap.values().iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            ToqAppletRecord toqappletrecord = (ToqAppletRecord)iterator.next();
            if (toqappletrecord.isRemote() == flag && toqappletrecord.isInstalled())
                arraylist.add(toqappletrecord.getPackageName());
        } while (true);
        break MISSING_BLOCK_LABEL_85;
        Exception exception;
        exception;
        throw exception;
        String as[] = (String[])arraylist.toArray(new String[arraylist.size()]);
        this;
        JVM INSTR monitorexit ;
        return as;
    }

    public static LocalDeckOfCardsManager getInstance()
        throws DeckOfCardsException
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new LocalDeckOfCardsManager();
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private Map getToqAppletRecords()
        throws IOException, ClassNotFoundException
    {
        this;
        JVM INSTR monitorenter ;
        String s = context.getSharedPreferences("toq_applet_records_file", 0).getString("top_applet_records_key", null);
        Map map = null;
        if (s != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return map;
_L2:
        map = (Map)ObjectSerializer.deserialize(s);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void initIconCache()
    {
        Log.d("DeckOfCards", "LocalDeckOfCardsManager.initIconCache");
        iconCacheMap = Collections.synchronizedMap(new HashMap());
        iconCacheRoot = new File(context.getCacheDir(), "notification-icons");
        if (!iconCacheRoot.exists())
            iconCacheRoot.mkdir();
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.initIconCache - iconCacheRoot: ").append(iconCacheRoot).toString());
    }

    private void purgeAll()
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        toqAppletRecordsMap.clear();
        storeToqAppRecords(toqAppletRecordsMap);
        iconCacheMap.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void removeInstallationCallback(String s)
    {
        InstallationCallback installationcallback = (InstallationCallback)installationCallbackMap.remove(s);
        installationcallback.callback.asBinder().unlinkToDeath(installationcallback.binderDeathHandler, 0);
    }

    private void storeToqAppRecords(Map map)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("toq_applet_records_file", 0).edit();
        editor.putString("top_applet_records_key", ObjectSerializer.serialize((Serializable)map));
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void addAppletInstallationListener(AppletInstallationListener appletinstallationlistener)
    {
        appletInstallationListeners.add(appletinstallationlistener);
    }

    public void addCallback(String s, ICallback_v1 icallback_v1)
    {
        CallbackBinderDeathHandler callbackbinderdeathhandler = new CallbackBinderDeathHandler(s);
        try
        {
            icallback_v1.asBinder().linkToDeath(callbackbinderdeathhandler, 0);
        }
        catch (RemoteException remoteexception)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.addCallback - unable to link binder death handler to remote callback, packageName: ").append(s).toString());
        }
        callbackMap.put(s, new Callback(s, icallback_v1, callbackbinderdeathhandler));
    }

    public void completeInstallationRequest(final String packageName, boolean flag)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        final InstallationCallback installationCallback;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.completeInstallationRequest - packageName: ").append(packageName).append(", isRequestAccepted: ").append(flag).toString());
        installationCallback = (InstallationCallback)installationCallbackMap.get(packageName);
        if (installationCallback != null)
            break MISSING_BLOCK_LABEL_90;
        throw new DeckOfCardsException((new StringBuilder()).append("There is no installation callback for the specified client package name (client app process died?), packageName: ").append(packageName).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (!flag)
            break MISSING_BLOCK_LABEL_425;
        final String token;
        token = generateToken(packageName);
        ToqAppletRecord toqappletrecord = new ToqAppletRecord(packageName);
        toqappletrecord.setInstalled(false);
        toqappletrecord.setInstallationToken(token);
        toqappletrecord.setRemote(true);
        toqAppletRecordsMap.put(packageName, toqappletrecord);
        storeToqAppRecords(toqAppletRecordsMap);
        installDeckOfCards(installationCallback.deckOfCards, installationCallback.resourceStore);
        if (remoteCallbackThread == null)
        {
            remoteCallbackThread = new HandlerThread("RemoteCallBackthread");
            remoteCallbackThread.start();
            remoteCallbackHandler = new Handler(remoteCallbackThread.getLooper());
        }
        if (remoteCallbackHandler != null)
            remoteCallbackHandler.post(new Runnable() {

                final LocalDeckOfCardsManager this$0;
                final InstallationCallback val$installationCallback;
                final String val$packageName;
                final String val$token;

                public void run()
                {
                    installationCallback.callback.onInstallationSuccessful(token);
                    removeInstallationCallback(packageName);
                    return;
                    RemoteException remoteexception;
                    remoteexception;
                    Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.completeInstallationRequest - an error occurred during onInstallationSuccessful callback ").append(remoteexception).toString());
                    if (isInstalled(packageName))
                        deckOfCardsSync.uninstallDeckOfCards(packageName, null);
_L1:
                    toqAppletRecordsMap.remove(packageName);
                    storeToqAppRecords(toqAppletRecordsMap);
_L2:
                    removeInstallationCallback(packageName);
                    return;
                    Exception exception4;
                    exception4;
                    Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.completeInstallationRequest - an error occurred uninstalling the deck of cards for packageName: ").append(packageName).toString(), exception4);
                      goto _L1
                    Exception exception3;
                    exception3;
                    removeInstallationCallback(packageName);
                    throw exception3;
                    IOException ioexception2;
                    ioexception2;
                    Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.completeInstallationRequest - an error occurred removing toq applet record for packageName: ").append(packageName).toString(), ioexception2);
                      goto _L2
                }

            
            {
                this$0 = LocalDeckOfCardsManager.this;
                installationCallback = installationcallback;
                token = s;
                packageName = s1;
                super();
            }
            }
);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        toqAppletRecordsMap.remove(packageName);
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred storing the toq applet record for packageName: ").append(packageName).toString(), ioexception);
        Exception exception1;
        exception1;
        if (isInstalled(packageName))
            deckOfCardsSync.uninstallDeckOfCards(packageName, null);
_L1:
        toqAppletRecordsMap.remove(packageName);
        storeToqAppRecords(toqAppletRecordsMap);
_L2:
        removeInstallationCallback(packageName);
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred completing the installation - reset - packageName: ").append(packageName).toString(), exception1);
        Exception exception2;
        exception2;
        Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.completeInstallationRequest - an error occurred uninstalling the deck of cards for packageName: ").append(packageName).toString(), exception2);
          goto _L1
        IOException ioexception1;
        ioexception1;
        Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.completeInstallationRequest - an error occurred removing toq applet record for packageName: ").append(packageName).toString(), ioexception1);
          goto _L2
        if (remoteCallbackThread == null)
        {
            remoteCallbackThread = new HandlerThread("RemoteCallBackthread");
            remoteCallbackThread.start();
            remoteCallbackHandler = new Handler(remoteCallbackThread.getLooper());
        }
        if (remoteCallbackHandler != null)
            remoteCallbackHandler.post(new Runnable() {

                final LocalDeckOfCardsManager this$0;
                final InstallationCallback val$installationCallback;
                final String val$packageName;

                public void run()
                {
                    installationCallback.callback.onInstallationDenied();
                    removeInstallationCallback(packageName);
                    return;
                    RemoteException remoteexception;
                    remoteexception;
                    remoteexception.printStackTrace();
                    removeInstallationCallback(packageName);
                    return;
                    Exception exception3;
                    exception3;
                    removeInstallationCallback(packageName);
                    throw exception3;
                }

            
            {
                this$0 = LocalDeckOfCardsManager.this;
                installationCallback = installationcallback;
                packageName = s;
                super();
            }
            }
);
          goto _L3
    }

    public byte[] convertPNGIcon(Bitmap bitmap)
        throws DeckOfCardsException
    {
        return ((AbstractDeckOfCardsSync)deckOfCardsSync).convertPNGBitmap(bitmap);
    }

    public void dispatchRemoteMessage(String s, Message message)
        throws DeckOfCardsException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.dispatchRemoteMessage - packageName: ").append(s).append(", message: ").append(message).toString());
        Callback callback = (Callback)callbackMap.get(s);
        if (callback == null)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.dispatchRemoteMessage - there is no remote callback for the specified client package name (client app process not running?), packageName: ").append(s).toString());
            return;
        }
        try
        {
            callback.callback.onMessage(message);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new DeckOfCardsException((new StringBuilder()).append("An error occurred calling back to the client app with a message, packageName: ").append(s).append(", message: ").append(message).toString(), remoteexception);
        }
    }

    public String[] getExternalInstalledAppletPackageNames()
    {
        this;
        JVM INSTR monitorenter ;
        String as[] = getInstalledAppletPackageNames(true);
        this;
        JVM INSTR monitorexit ;
        return as;
        Exception exception;
        exception;
        throw exception;
    }

    public String[] getExternalNotInstalledAppletPackageNames()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        arraylist = new ArrayList();
        for (Iterator iterator = context.getPackageManager().queryBroadcastReceivers(new Intent("com.qualcomm.toq.smartwatch.install.applet", null), 0).iterator(); iterator.hasNext(); arraylist.add(((ResolveInfo)iterator.next()).activityInfo.packageName));
        break MISSING_BLOCK_LABEL_77;
        Exception exception;
        exception;
        throw exception;
        for (Iterator iterator1 = Arrays.asList(getExternalInstalledAppletPackageNames()).iterator(); iterator1.hasNext(); arraylist.remove((String)iterator1.next()));
        String as[] = (String[])arraylist.toArray(new String[arraylist.size()]);
        this;
        JVM INSTR monitorexit ;
        return as;
    }

    public String[] getInternalInstalledAppletPackageNames()
    {
        this;
        JVM INSTR monitorenter ;
        String as[] = getInstalledAppletPackageNames(false);
        this;
        JVM INSTR monitorexit ;
        return as;
        Exception exception;
        exception;
        throw exception;
    }

    public Handler getRemoteCallbackHandler()
    {
        return remoteCallbackHandler;
    }

    public String getWDAppRoot(String s)
    {
        return ((AbstractDeckOfCardsSync)deckOfCardsSync).getWDAppRoot(s);
    }

    public void installDeckOfCards(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.installDeckOfCards - deckOfCards: ").append(deckofcards).append(", resourceStore: ").append(resourcestore).toString());
        s = deckofcards.getId();
        if (isInstalled(s))
            throw new DeckOfCardsException((new StringBuilder()).append("Deck of cards is already installed, deckOfCards: ").append(deckofcards).toString());
        break MISSING_BLOCK_LABEL_85;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord != null)
            break MISSING_BLOCK_LABEL_135;
        throw new DeckOfCardsException((new StringBuilder()).append("Remote applet has no corresponding toq applet record, packageName: ").append(s).toString());
        if (!toqappletrecord.isRemote() || toqappletrecord.isInstalled())
            throw new DeckOfCardsException((new StringBuilder()).append("Toq applet record for remote app has invalid state, toqAppletRecord: ").append(toqappletrecord).toString());
        deckOfCardsSync.installDeckOfCards(deckofcards, resourcestore);
        toqappletrecord.setInstalled(true);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_INSTALL, s);
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred storing the toq applet record for packageName: ").append(s).toString(), ioexception);
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred installing the deck of cards [").append(deckofcardsexception.getMessage()).append("]").toString(), deckofcardsexception);
    }

    public void installInternalDeckOfCards(DeckOfCards deckofcards)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.installInternalDeckOfCards - deckOfCards: ").append(deckofcards).toString());
        s = deckofcards.getId();
        if (isInstalled(s))
            throw new DeckOfCardsException((new StringBuilder()).append("Deck of cards is already installed, deckOfCards: ").append(deckofcards).toString());
        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord != null) goto _L2; else goto _L1
_L1:
        toqappletrecord = new ToqAppletRecord(s);
        toqAppletRecordsMap.put(s, toqappletrecord);
_L4:
        deckOfCardsSync.installDeckOfCards(deckofcards, null);
        toqappletrecord.setInstalled(true);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_INSTALL, s);
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!toqappletrecord.isRemote() && !toqappletrecord.isInstalled()) goto _L4; else goto _L3
_L3:
        throw new DeckOfCardsException((new StringBuilder()).append("Toq applet record for internal applet has invalid state, toqAppletRecord: ").append(toqappletrecord).toString());
        IOException ioexception;
        ioexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred storing the toq applet record for packageName: ").append(s).toString(), ioexception);
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred installing the deck of cards [").append(deckofcardsexception.getMessage()).append("]").toString(), deckofcardsexception);
    }

    public boolean isInstalled(String s)
    {
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord == null)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.isInstalled - no toq applet record for packageName: ").append(s).toString());
            return false;
        } else
        {
            return toqappletrecord.isInstalled();
        }
    }

    public boolean isValidInstall(Status status, String s, String s1)
    {
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord == null)
        {
            Log.w("DeckOfCards", "LocalDeckOfCardsManager.isValidInstall - no matching registration");
            status.setStatus(-201, context.getString(0x7f0a00f0));
            return false;
        }
        if (!toqappletrecord.isInstalled())
        {
            Log.w("DeckOfCards", "LocalDeckOfCardsManager.isValidInstall - deck of cards not installed");
            status.setStatus(-201, context.getString(0x7f0a00f0));
            return false;
        }
        if (toqappletrecord.getinstallationToken() != null && toqappletrecord.getinstallationToken().equals(s1))
        {
            return true;
        } else
        {
            Log.w("DeckOfCards", "LocalDeckOfCardsManager.isValidInstall - token not matching");
            status.setStatus(-200, context.getString(0x7f0a00ee));
            return false;
        }
    }

    public void manualUninstall(String s)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.manualUninstall - packageName: ").append(s).toString());
        if (!isInstalled(s))
            throw new DeckOfCardsException((new StringBuilder()).append("Trying to uninstall a deck of cards which is not installed, packageName: ").append(s).toString());
        break MISSING_BLOCK_LABEL_140;
        Exception exception2;
        exception2;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred uninstalling the deck of cards [").append(exception2.getMessage()).append("]").toString(), exception2);
        Exception exception1;
        exception1;
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Callback callback;
        deckOfCardsSync.uninstallDeckOfCards(s, null);
        callback = (Callback)callbackMap.get(s);
        if (callback != null) goto _L2; else goto _L1
_L1:
        Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.manualUninstall - there is no remote callback for the specified client package name (client app process not running?), packageName: ").append(s).toString());
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception1;
        ioexception1;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception1);
_L2:
        callback.callback.onUninstalled();
        removeCallback(s);
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
          goto _L3
        IOException ioexception2;
        ioexception2;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception2);
        RemoteException remoteexception;
        remoteexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred calling back to the client app that it has been uninstalled, packageName: ").append(s).toString(), remoteexception);
        Exception exception3;
        exception3;
        removeCallback(s);
        throw exception3;
        IOException ioexception;
        ioexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception);
    }

    public void onPackageRemoved(String s)
    {
        if (!isInstalled(s))
            break MISSING_BLOCK_LABEL_38;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.onPackageRemoved - package is installed, uninstalling packageName: ").append(s).toString());
        manualUninstall(s);
        return;
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.onPackageRemoved - an error occurred handling the uninstall for packageName: ").append(s).toString(), deckofcardsexception);
        return;
    }

    public void removeAppletInstallationListener(AppletInstallationListener appletinstallationlistener)
    {
        appletInstallationListeners.remove(appletinstallationlistener);
    }

    public void removeCallback(String s)
    {
        Callback callback = (Callback)callbackMap.remove(s);
        callback.callback.asBinder().unlinkToDeath(callback.binderDeathHandler, 0);
    }

    public String sendIcon(String s, String s1)
    {
        String s2 = (new StringBuilder()).append(s1).append(".img").toString();
        File file;
        if (!iconCacheMap.containsKey(s1))
        {
            Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.sendIcon - icon cache map has no entry for iconPackageName: ").append(s1).toString());
            try
            {
                iconCacheMap.put(s1, cacheIcon(s1, s2));
            }
            catch (Exception exception1)
            {
                Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.sendIcon - an error occurred caching the icon for iconPackageName: ").append(s1).toString(), exception1);
            }
        } else
        {
            Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.sendIcon - icon cache map already has entry for iconPackageName: ").append(s1).toString());
        }
        file = (File)iconCacheMap.get(s1);
        if (file == null)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.sendIcon - no app icon for iconPackageName: ").append(s1).toString());
            return null;
        }
        try
        {
            String s3 = (new StringBuilder()).append(getWDAppRoot(s)).append("/").append(s2).toString();
            FileManager.getInstance().sendIconFile(new FileRecord(file, s3));
        }
        catch (Exception exception)
        {
            Log.e("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.sendIcon - an error occurred sending the icon for appletPackageName: ").append(s).append(", iconPackageName: ").append(s1).toString(), exception);
        }
        return (new StringBuilder()).append("fms:/").append(s2).toString();
    }

    public void sendNotification(ToqNotification toqnotification)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        String s1;
        ToqAppletRecord toqappletrecord;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.sendNotification - notification: ").append(toqnotification).toString());
        s = toqnotification.getId();
        s1 = toqnotification.getName();
        toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord != null)
            break MISSING_BLOCK_LABEL_91;
        throw new DeckOfCardsException((new StringBuilder()).append("Remote Android app has no corresponding toq applet record, packageName: ").append(s).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (!toqappletrecord.isRemote() || !toqappletrecord.isInstalled())
            throw new DeckOfCardsException((new StringBuilder()).append("Toq applet record for remote Android app has invalid state, toqAppletRecord: ").append(toqappletrecord).toString());
        com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.NotificationTextCard notificationtextcard = toqnotification.getNotificationCard();
        if (notificationtextcard == null) goto _L2; else goto _L1
_L1:
        InternalNotifyTextCard internalnotifytextcard;
        Log.d("DeckOfCards", "LocalDeckOfCardsManager.sendNotification - using notification text card");
        internalnotifytextcard = InternalNotifyTextCard.getRemoteToqNotificationInstance(notificationtextcard, s1, sendIcon(s, s));
_L3:
        AppMessagingController.getAppMessagingController().showNotificationPopup(s, s1, internalnotifytextcard);
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        InternalNotifyTextCard internalnotifytextcard1;
        Log.d("DeckOfCards", "LocalDeckOfCardsManager.sendNotification - using legacy values");
        String s2 = sendIcon(s, s);
        internalnotifytextcard1 = InternalNotifyTextCard.getRemoteToqNotificationLegacyInstance(s, s1, toqnotification.getTimeMillis(), toqnotification.getTitleText(), toqnotification.getMessageText(), toqnotification.getInfoText(), s2);
        internalnotifytextcard = internalnotifytextcard1;
          goto _L3
        Exception exception1;
        exception1;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred sending the notification [").append(exception1.getMessage()).append("]").toString(), exception1);
    }

    public void setRemoteCallbackHandler(Handler handler)
    {
        remoteCallbackHandler = handler;
    }

    public void setRemoteCallbackThread(HandlerThread handlerthread)
    {
        remoteCallbackThread = handlerthread;
    }

    public void triggerInstallation(String s, DeckOfCards deckofcards, ResourceStore resourcestore, IInstallationCallback_v1 iinstallationcallback_v1)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.triggerInstallation - packageName: ").append(s).append(", deckOfCards: ").append(deckofcards).append(", resourceStore: ").append(resourcestore).append(", installationCallback: ").append(iinstallationcallback_v1).toString());
        addInstallationCallback(s, deckofcards, resourcestore, iinstallationcallback_v1);
        Intent intent = new Intent(context, com/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity);
        intent.putExtra("packageName", s);
        intent.setFlags(0x50800000);
        context.startActivity(intent);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void uninstallDeckOfCards(String s)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.uninstallDeckOfCards - packageName: ").append(s).toString());
        if (!isInstalled(s))
            throw new DeckOfCardsException((new StringBuilder()).append("Deck of cards is not installed, packageName: ").append(s).toString());
        break MISSING_BLOCK_LABEL_68;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord != null)
            break MISSING_BLOCK_LABEL_114;
        throw new DeckOfCardsException((new StringBuilder()).append("Remote applet has no corresponding toq applet record, packageName: ").append(s).toString());
        if (!toqappletrecord.isRemote() || !toqappletrecord.isInstalled())
            throw new DeckOfCardsException((new StringBuilder()).append("Toq applet record for remote applet has invalid state, toqAppletRecord: ").append(toqappletrecord).toString());
        Callback callback;
        deckOfCardsSync.uninstallDeckOfCards(s, null);
        callback = (Callback)callbackMap.get(s);
        if (callback != null) goto _L2; else goto _L1
_L1:
        Log.w("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.uninstallDeckOfCards - there is no remote callback for the specified client package name (client app process not running?), packageName: ").append(s).toString());
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception1;
        ioexception1;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception1);
_L2:
        callback.callback.onUninstalled();
        removeCallback(s);
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
          goto _L3
        IOException ioexception2;
        ioexception2;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception2);
        RemoteException remoteexception;
        remoteexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred calling back to the client app that it has been uninstalled, packageName: ").append(s).toString(), remoteexception);
        Exception exception3;
        exception3;
        removeCallback(s);
        throw exception3;
        Exception exception2;
        exception2;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred uninstalling the deck of cards [").append(exception2.getMessage()).append("]").toString(), exception2);
        Exception exception1;
        exception1;
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
        throw exception1;
        IOException ioexception;
        ioexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception);
    }

    public void uninstallInternalDeckOfCards(InternalDeckOfCards internaldeckofcards)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.uninstallInternalDeckOfCards - deckOfCards: ").append(internaldeckofcards).toString());
        s = internaldeckofcards.getId();
        if (!isInstalled(s))
            throw new DeckOfCardsException((new StringBuilder()).append("Deck of cards is not installed, deckOfCards: ").append(internaldeckofcards).toString());
        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord != null)
            break MISSING_BLOCK_LABEL_121;
        throw new DeckOfCardsException((new StringBuilder()).append("Internal applet has no corresponding toq applet record, packageName: ").append(s).toString());
        if (toqappletrecord.isRemote() || !toqappletrecord.isInstalled())
            throw new DeckOfCardsException((new StringBuilder()).append("Toq applet record for internal applet has invalid state, toqAppletRecord: ").append(toqappletrecord).toString());
        deckOfCardsSync.uninstallDeckOfCards(s, internaldeckofcards.getAppZipFileName());
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception1;
        ioexception1;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception1);
        Exception exception2;
        exception2;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred uninstalling the deck of cards [").append(exception2.getMessage()).append("]").toString(), exception2);
        Exception exception1;
        exception1;
        toqAppletRecordsMap.remove(s);
        storeToqAppRecords(toqAppletRecordsMap);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UNINSTALL, s);
        throw exception1;
        IOException ioexception;
        ioexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing toq applet record for packageName: ").append(s).toString(), ioexception);
    }

    public void updateDeckOfCards(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.updateDeckOfCards - deckOfCards: ").append(deckofcards).append(", resourceStore: ").append(resourcestore).toString());
        s = deckofcards.getId();
        if (!isInstalled(s))
            throw new DeckOfCardsException((new StringBuilder()).append("Deck of cards is not installed, deckOfCards: ").append(deckofcards).toString());
        break MISSING_BLOCK_LABEL_85;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord != null)
            break MISSING_BLOCK_LABEL_135;
        throw new DeckOfCardsException((new StringBuilder()).append("Remote applet has no corresponding toq applet record, packageName: ").append(s).toString());
        if (!toqappletrecord.isRemote() || !toqappletrecord.isInstalled())
            throw new DeckOfCardsException((new StringBuilder()).append("Toq applet record for remote app has invalid state, toqAppletRecord: ").append(toqappletrecord).toString());
        deckOfCardsSync.updateDeckOfCards(deckofcards, resourcestore);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UPDATE, s);
        this;
        JVM INSTR monitorexit ;
        return;
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred updating the deck of cards [").append(deckofcardsexception.getMessage()).append("]").toString(), deckofcardsexception);
    }

    public void updateDeckOfCardsAppZip()
    {
        this;
        JVM INSTR monitorenter ;
        if (toqAppletRecordsMap == null || toqAppletRecordsMap.size() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        Log.d("DeckOfCards", "LocalDeckOfCardsManager.updateDeckOfCardsAppZip Updating the installed appletes.");
        iterator = toqAppletRecordsMap.keySet().iterator();
_L5:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        String s;
        ToqAppletRecord toqappletrecord;
        s = (String)iterator.next();
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.updateDeckOfCardsAppZip installed remote package: ").append(s).toString());
        toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord == null)
            break MISSING_BLOCK_LABEL_168;
        boolean flag = toqappletrecord.isRemote();
        if (!flag)
            break MISSING_BLOCK_LABEL_168;
        deckOfCardsSync.updateDeckOfCardsAppZip(s);
          goto _L5
        Exception exception1;
        exception1;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.updateDeckOfCardsAppZip Exception in upgrading the applet: ").append(s).toString());
          goto _L5
        Exception exception;
        exception;
        throw exception;
        StringBuilder stringbuilder = (new StringBuilder()).append(" Invalid toqAppletRecord for upgrade: ");
        if (toqappletrecord == null)
            break MISSING_BLOCK_LABEL_227;
        Object obj = Boolean.valueOf(toqappletrecord.isRemote());
_L6:
        Log.d("DeckOfCards", stringbuilder.append(obj).toString());
          goto _L5
_L2:
        Log.d("DeckOfCards", " There are no installed applets");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
        obj = "NULL";
          goto _L6
    }

    public void updateInternalDeckOfCards(DeckOfCards deckofcards)
        throws DeckOfCardsException
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        Log.d("DeckOfCards", (new StringBuilder()).append("LocalDeckOfCardsManager.updateInternalDeckOfCards - deckOfCards: ").append(deckofcards).toString());
        s = deckofcards.getId();
        if (!isInstalled(s))
            throw new DeckOfCardsException((new StringBuilder()).append("Deck of cards is not installed, deckOfCards: ").append(deckofcards).toString());
        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ToqAppletRecord toqappletrecord = (ToqAppletRecord)toqAppletRecordsMap.get(s);
        if (toqappletrecord != null)
            break MISSING_BLOCK_LABEL_121;
        throw new DeckOfCardsException((new StringBuilder()).append("Internal applet has no corresponding toq applet record, packageName: ").append(s).toString());
        if (toqappletrecord.isRemote() || !toqappletrecord.isInstalled())
            throw new DeckOfCardsException((new StringBuilder()).append("Toq applet record for internal applet has invalid state, toqAppletRecord: ").append(toqappletrecord).toString());
        deckOfCardsSync.updateDeckOfCards(deckofcards, null);
        dispatchEvent(APPLET_INSTALLATION_EVENT.APPLET_UPDATE, s);
        this;
        JVM INSTR monitorexit ;
        return;
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred updating the deck of cards [").append(deckofcardsexception.getMessage()).append("]").toString(), deckofcardsexception);
    }





}
