// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.*;
import android.location.LocationManager;
import android.net.Uri;
import android.os.*;
import android.telephony.TelephonyManager;
import com.qualcomm.aidl.personalHub.PHubListener;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.controller.IController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.service.PHubBaseService;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.alljoyn.AllJoynBusHandler;
import com.qualcomm.toq.smartwatch.ambient.AmbientAppUpgradeUtils;
import com.qualcomm.toq.smartwatch.ambient.StockAmbientInfo;
import com.qualcomm.toq.smartwatch.controller.*;
import com.qualcomm.toq.smartwatch.database.FMSDatabaseAdapter;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.listener.CustomPhoneStateListener;
import com.qualcomm.toq.smartwatch.service.receiver.PHubTimeReceiver;
import com.qualcomm.toq.smartwatch.ui.activity.FindWDActivity;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.File;
import java.io.IOException;
import java.util.*;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.service:
//            PHubFMS

public class PHubService extends PHubBaseService
    implements PHubFMS
{
    private class LocationServiceReceiver extends BroadcastReceiver
    {

        final PHubService this$0;

        public void onReceive(Context context, Intent intent)
        {
            if ("android.location.PROVIDERS_CHANGED".equals(intent.getAction()))
            {
                Log.d("AmbientController", "Broadcast for Provider Change Action Called");
                Log.printUsageLog("AmbientController", "Broadcast for Provider Change Action Called");
                if (mLocationUpdateHandler != null)
                    mLocationUpdateHandler.removeCallbacks(mLocationUpdateTask);
                else
                    mLocationUpdateHandler = new Handler();
                if (mLocationUpdateTask != null)
                    mLocationUpdateHandler.postDelayed(mLocationUpdateTask, 2000L);
            }
        }

        private LocationServiceReceiver()
        {
            this$0 = PHubService.this;
            super();
        }

    }


    private static final String TAG = "PHubService";
    static Object custom_lock;
    public static boolean isPHubServiceRunning = false;
    public static PHubService mInstance = null;
    private com.qualcomm.aidl.personalHub.PHubApi.Stub apiEndpoint;
    private PhubCalendarContentObserver calendarContentObserver;
    private PhubCallLogContentObserver callLogContentObserver;
    private PhubContactContentObserver contactContentObserver;
    private FMSDatabaseAdapter fmsDatabaseAdapter;
    Handler handler;
    private ConnectionFactory mConnectionFactory;
    private boolean mIsNetworkProviderEnabled;
    LocationServiceReceiver mLocationServiceReceiver;
    private Handler mLocationUpdateHandler;
    Runnable mLocationUpdateTask;
    private HashMap mPHubListener;
    private PhubSMSContentObserver smsContentObserver;

    public PHubService()
    {
        mPHubListener = new HashMap();
        contactContentObserver = null;
        callLogContentObserver = null;
        calendarContentObserver = null;
        smsContentObserver = null;
        mIsNetworkProviderEnabled = false;
        mLocationServiceReceiver = null;
        fmsDatabaseAdapter = null;
        mConnectionFactory = null;
        apiEndpoint = new com.qualcomm.aidl.personalHub.PHubApi.Stub() {

            final PHubService this$0;

            public void addListener(int i, PHubListener phublistener)
                throws RemoteException
            {
                synchronized (mPHubListener)
                {
                    mPHubListener.put(Integer.valueOf(i), phublistener);
                }
                return;
                exception;
                hashmap;
                JVM INSTR monitorexit ;
                throw exception;
            }

            public void associateWD()
                throws RemoteException
            {
                if (mConnectionFactory != null)
                {
                    if (mConnectionFactory.getConnManager() != null)
                    {
                        mConnectionFactory.getConnManager().associatePhoneWD();
                        return;
                    } else
                    {
                        Log.d("PHubService", "associateWD(): mConnectionFactory.getConnManager() is null");
                        return;
                    }
                } else
                {
                    Log.d("PHubService", "mConnectionFactory is null");
                    return;
                }
            }

            public void cancelFindWDReq()
                throws RemoteException
            {
                SystemController systemcontroller = SystemController.getSystemController();
                if (systemcontroller != null)
                {
                    systemcontroller.sendCancelFindWDReq();
                    return;
                } else
                {
                    Log.d("PHubService", "SystemController.getSystemController() is null");
                    return;
                }
            }

            public void disassociateWD()
                throws RemoteException
            {
label0:
                {
                    if (mConnectionFactory != null)
                    {
                        if (mConnectionFactory.getConnManager() == null)
                            break label0;
                        mConnectionFactory.getConnManager().disassociatePhoneWD();
                    }
                    return;
                }
                Log.d("PHubService", "disassociateWD(): mConnectionFactory.getConnManager() is null");
            }

            public void findWDReq()
                throws RemoteException
            {
                SystemController systemcontroller = SystemController.getSystemController();
                if (systemcontroller != null)
                {
                    systemcontroller.sendFindWDReq();
                    return;
                } else
                {
                    Log.d("PHubService", "SystemController.getSystemController() is null");
                    return;
                }
            }

            public void foundPhoneReq(String s)
                throws RemoteException
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
                        Log.d("PHubService", jsonexception.toString());
                    }
                    return;
                } else
                {
                    Log.d("PHubService", "SystemController.getSystemController() is null");
                    return;
                }
            }

            public int getBluetoothServiceStatus()
                throws RemoteException
            {
                return 0;
            }

            public int getConnectionState(String s)
                throws RemoteException
            {
                ConnectionFactory connectionfactory = mConnectionFactory;
                IEndPoint iendpoint = null;
                if (connectionfactory != null)
                    iendpoint = mConnectionFactory.getEndPoint(s);
                if (iendpoint != null)
                {
                    ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
                    if (toqconnectionhandlerimpl != null)
                        return toqconnectionhandlerimpl.getState(iendpoint.getType());
                }
                return 0;
            }

            public void removeListener(int i)
                throws RemoteException
            {
                synchronized (mPHubListener)
                {
                    mPHubListener.remove(Integer.valueOf(i));
                }
                return;
                exception;
                hashmap;
                JVM INSTR monitorexit ;
                throw exception;
            }

            public void resetConnectionWD()
                throws RemoteException
            {
label0:
                {
                    if (mConnectionFactory != null)
                    {
                        if (mConnectionFactory.getConnManager() == null)
                            break label0;
                        mConnectionFactory.getConnManager().resetEndPointConnection(0, true);
                    }
                    return;
                }
                Log.d("PHubService", "resetConnectionWD(): mConnectionFactory.getConnManager() is null");
            }

            public void sendFile(String s, String s1)
                throws RemoteException
            {
            }

            public void sendStringMessage(int i, int j, String s)
                throws RemoteException
            {
                sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), i, i, s, j, ConnectionFactory.getConnectionFactory().createTransactionID());
            }

            
            {
                this$0 = PHubService.this;
                super();
            }
        }
;
        mLocationUpdateTask = new Runnable() {

            final PHubService this$0;

            public void run()
            {
                Log.d("AmbientController", (new StringBuilder()).append("There is a change in LocationService Settings;  mIsNetworkProviderEnabled: ").append(mIsNetworkProviderEnabled).toString());
                LocationManager locationmanager = (LocationManager)getSystemService("location");
                boolean flag = getSharedPreferences("ambient__pref", 0).getBoolean("WeatherCurrentCityUpdate", false);
                if (locationmanager.isProviderEnabled("network"))
                {
                    if (flag && Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()) && !mIsNetworkProviderEnabled)
                    {
                        mIsNetworkProviderEnabled = true;
                        Log.d("AmbientController", "Calling City Polling as Location Provider is enabled performing Manual Poll");
                        Log.printUsageLog("AmbientController", "Calling City Polling as Location Provider is enabled performing Manual Poll");
                        AmbientController.getController("weather").processAmbientTask(2);
                        return;
                    } else
                    {
                        Log.d("AmbientController", "Current city not enabled or No network ");
                        Log.printUsageLog("AmbientController", "Current city not enabled or No network ");
                        Log.d("AmbientController", (new StringBuilder()).append("IsCurrentCityUpdateEnabled ").append(flag).append("mIsNetworkProviderEnabled ").append(mIsNetworkProviderEnabled).append("isNetworkAvailable ").append(Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext())).toString());
                        return;
                    }
                } else
                {
                    mIsNetworkProviderEnabled = false;
                    return;
                }
            }

            
            {
                this$0 = PHubService.this;
                super();
            }
        }
;
        mInstance = this;
    }

    private void checkforAmbientUpgrade()
    {
        if (ToqApplication.getAppContext() != null)
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
            if (sharedpreferences != null)
            {
                int i = sharedpreferences.getInt("ambient_upgrade_prefs_key", 1);
                if (i == 1)
                {
                    Log.d("AmbientAppUpgradeUtils", " An upgrade occured for Ambient ,making required changes");
                    int k = i + 1;
                    android.content.SharedPreferences.Editor editor1 = sharedpreferences.edit();
                    editor1.putInt("ambient_upgrade_prefs_key", k);
                    editor1.commit();
                    AmbientAppUpgradeUtils.getInstance().deletAmbientFolders(ToqApplication.getAppContext());
                    AmbientAppUpgradeUtils.getInstance().updateOldVersionCity(ToqApplication.getAppContext());
                } else
                if (i == 2)
                {
                    Log.d("AmbientAppUpgradeUtils", " An upgrade occured for Ambient ,updating icon number for Release 1.6");
                    int j = i + 1;
                    android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                    editor.putInt("ambient_upgrade_prefs_key", j);
                    editor.commit();
                    AmbientAppUpgradeUtils.getInstance().updateSharedPreferenceForIconNumber();
                    return;
                }
            }
        }
    }

    private void createDefaultAmbientEntry(Context context)
    {
        if (!isLaunchedFirstTime(context))
            break MISSING_BLOCK_LABEL_174;
        SharedPreferences sharedpreferences = context.getSharedPreferences("ambient__pref", 0);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putBoolean("WeatherCurrentCityUpdate", true);
        editor.commit();
        ArrayList arraylist;
        StockAmbientInfo stockambientinfo;
        android.content.SharedPreferences.Editor editor1;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_157;
        if (arraylist.isEmpty())
        {
            stockambientinfo = new StockAmbientInfo();
            stockambientinfo.setCompanySymbol("QCOM");
            stockambientinfo.setCompanyName("QUALCOMM INC COM");
            arraylist.add(stockambientinfo);
            editor1 = sharedpreferences.edit();
            editor1.putString("StockSymbolsBackGround", ObjectSerializer.serialize(arraylist));
            editor1.putString("StockSymbols", ObjectSerializer.serialize(arraylist));
            editor1.commit();
        }
        return;
        Log.e("PHubService", "Connected again..");
        return;
    }

    public static PHubService getPHubService()
    {
        PHubService phubservice;
        synchronized (custom_lock)
        {
            phubservice = mInstance;
        }
        return phubservice;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean isLaunchedFirstTime(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("first_time_connected_pref", 0);
        if (sharedpreferences.getBoolean("stock_update_qcom_app_launched_first", true))
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putBoolean("stock_update_qcom_app_launched_first", false);
            editor.commit();
            return true;
        } else
        {
            return false;
        }
    }

    private int removeRecursive(File file)
    {
        Log.e("PHubService", "RemoveRecursive called");
        String as[] = file.list();
        if (as != null && as.length > 0)
        {
            int i = as.length;
            for (int j = 0; j < i; j++)
            {
                String s = as[j];
                File file1 = new File(file.getAbsolutePath(), s);
                Log.e("PHubService", (new StringBuilder()).append("File Name ->").append(file1.getName()).toString());
                if (file1.isDirectory())
                {
                    Log.e("PHubService", "removeReursive 1");
                    removeRecursive(file1);
                } else
                {
                    Log.e("PHubService", (new StringBuilder()).append("removeReursive 2::").append(file1.getAbsolutePath()).toString());
                    boolean flag = file1.delete();
                    Log.e("PHubService", (new StringBuilder()).append("isDeleted::").append(flag).toString());
                }
            }

        }
        return !file.delete() ? -1 : 0;
    }

    private String[] splitString(String s)
    {
        return s.split("/");
    }

    private void unRegisterContentObservers()
    {
        if (mAppContext != null)
        {
            mAppContext.getContentResolver().unregisterContentObserver(contactContentObserver);
            mAppContext.getContentResolver().unregisterContentObserver(callLogContentObserver);
            mAppContext.getContentResolver().unregisterContentObserver(calendarContentObserver);
            mAppContext.getContentResolver().unregisterContentObserver(smsContentObserver);
        }
    }

    public void endFactoryObjects()
    {
        if (mConnectionFactory != null)
        {
            if (contactContentObserver != null)
                getContentResolver().unregisterContentObserver(contactContentObserver);
            if (callLogContentObserver != null)
                getContentResolver().unregisterContentObserver(callLogContentObserver);
            if (calendarContentObserver != null)
                getContentResolver().unregisterContentObserver(calendarContentObserver);
        }
    }

    public void findWDRequest()
    {
        SystemController systemcontroller = SystemController.getSystemController();
        if (systemcontroller != null)
        {
            systemcontroller.sendFindWDReq();
            return;
        } else
        {
            Log.d("PHubService", "SystemController.getSystemController() is null");
            return;
        }
    }

    public int fmsGetAppId()
    {
        return 0;
    }

    public int fmsMakeDir(int i, String s)
    {
        if ("mounted".equals(Environment.getExternalStorageState()))
        {
            File file = Environment.getExternalStorageDirectory();
            String as[] = splitString(s);
            int j = as.length;
            if (j != 0)
            {
                String s1 = file.getAbsolutePath();
                for (int k = 0; k < j - 1; k++)
                {
                    String s3 = as[k];
                    if ((new File((new StringBuilder()).append(s1).append("/").append(s3).toString())).exists())
                    {
                        s1 = (new StringBuilder()).append(s1).append("/").append(s3).toString();
                        continue;
                    }
                    if (k <= j - 1)
                        return -1;
                }

                String s2 = as[j - 1];
                Log.v("PHubService", (new StringBuilder()).append("dirNameToCreate ->").append(s2).toString());
                if ((new File((new StringBuilder()).append(s1).append("/").append(s2).toString())).mkdir())
                    return 0;
            }
        } else
        {
            Log.v("PHubService", "Media not mounted");
        }
        return -1;
    }

    public int fmsRemoveDir(int i, String s, boolean flag)
    {
label0:
        {
            if ("mounted".equals(Environment.getExternalStorageState()))
            {
                File file = Environment.getExternalStorageDirectory();
                File file1 = new File((new StringBuilder()).append(file.getAbsolutePath()).append("/").append(s).toString());
                Log.e("PHubService", (new StringBuilder()).append(" appId ").append(i).append(" isRecursive ").append(flag).toString());
                if (!file1.exists())
                {
                    Log.e("PHubService", "dir not exists");
                } else
                {
                    if (!file1.isDirectory())
                        break label0;
                    String as[] = file1.list();
                    if (as != null && as.length > 0 && flag)
                    {
                        Log.e("PHubService", "fmsRemoveDir 1");
                        return removeRecursive(file1);
                    }
                    if (as != null && as.length > 0 && !flag)
                    {
                        Log.e("PHubService", "dir not Null and Delete Non recursive");
                        return -1;
                    }
                    if (as != null && as.length == 0)
                    {
                        Log.e("PHubService", "Dirctory is last node");
                        file1.delete();
                        return 0;
                    }
                }
            }
            return -1;
        }
        Log.e("PHubService", "It is file so NOT deleting");
        return -1;
    }

    public int fmsRemoveFile(int i, String s)
    {
        int j = FMSController.getFmsController().fmsRemoveFile(i, s);
        Log.d("PHubService", (new StringBuilder()).append("Result of fmsRemoveFile: ").append(j).toString());
        return j;
    }

    public boolean fmsResynchRequest(int i, String s)
    {
        boolean flag = FMSController.getFmsController().fmsResynchRequest(i, s);
        Log.d("PHubService", (new StringBuilder()).append("Result of fmsResynchRequest: ").append(flag).toString());
        return flag;
    }

    public int fmsSyncFile(int i, String s, String s1, int j)
    {
        int k = FMSController.getFmsController().fmsSyncFile(i, s, s1, j);
        Log.d("PHubService", (new StringBuilder()).append("Result of fmsSyncFile: ").append(k).toString());
        return k;
    }

    public void launchGoogleVoiceApplication()
    {
        Log.d("PHubService", "Inside launchGoogleVoiceApplication()");
        Context context = ToqApplication.getAppContext();
        WakeLocker.acquire(context);
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        intent.setFlags(0x10000000);
        context.startActivity(intent);
    }

    public IBinder onBind(Intent intent)
    {
        if (!com/qualcomm/toq/smartwatch/service/PHubService.getName().equals(intent.getAction())) goto _L2; else goto _L1
_L1:
        Log.d("PHubService", (new StringBuilder()).append("Bound by intent ").append(intent).toString());
        if (!intent.hasExtra("associateWD")) goto _L4; else goto _L3
_L3:
        try
        {
            Log.d("PHubService", "BT off associate WD called");
            apiEndpoint.associateWD();
        }
        catch (RemoteException remoteexception2)
        {
            remoteexception2.printStackTrace();
        }
_L5:
        return apiEndpoint;
_L4:
        if (intent.hasExtra("disassociateWD"))
            try
            {
                Log.d("PHubService", "BT off disassociate WD called");
                apiEndpoint.disassociateWD();
            }
            catch (RemoteException remoteexception1)
            {
                remoteexception1.printStackTrace();
            }
        else
        if (intent.hasExtra("foundPhoneReq"))
            try
            {
                Log.d("PHubService", "BT off foundPhoneReq called");
                apiEndpoint.foundPhoneReq((new JSONObject()).toString());
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        if (true) goto _L5; else goto _L2
_L2:
        Log.d("PHubService", "Returning null for apiEndpoint");
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        Log.d("PHubService", "PHubService onCreate()");
        Log.d("FMSController", "onCreate() in PHubService called");
        custom_lock = new Object();
        isPHubServiceRunning = true;
        SharedPreferences sharedpreferences = getSharedPreferences("app_pref", 0);
        if (sharedpreferences.getBoolean("firstTime", true))
        {
            android.content.SharedPreferences.Editor editor1 = sharedpreferences.edit();
            editor1.putBoolean("firstTime", false);
            editor1.commit();
            Utils.deleteStoreFiles();
            ClockUtils.getClockUtils().parseClockInfoFromAssests();
        }
        createDefaultAmbientEntry(getBaseContext());
        SharedPreferences sharedpreferences1 = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (sharedpreferences1 != null)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences1.edit();
            editor.putLong("activity_current_day_end", AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec());
            editor.commit();
        }
        Log.d("PHubService", "FMSDatabaseAdapter open() from PHubService");
        fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(mAppContext);
        fmsDatabaseAdapter.open();
        if (!fmsDatabaseAdapter.isFMSDBOpen())
        {
            fmsDatabaseAdapter.close();
            fmsDatabaseAdapter.open();
        }
        Log.d("PHubService", "Removing number from the shared preferences if any while starting service");
        if (!CustomPhoneStateListener.isPhoneOnActiveCall)
            CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()).removeCallNumberFromPreference();
        ((TelephonyManager)(TelephonyManager)getSystemService("phone")).listen(CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()), 33);
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 24);
        calendar.set(12, 0);
        calendar.set(13, 0);
        long l = calendar.getTimeInMillis();
        StringBuilder stringbuilder = (new StringBuilder()).append("Midnight Alarm time set date ");
        Date date = new Date(l);
        Log.i("PHubService", stringbuilder.append(date).toString());
        Intent intent = new Intent(this, com/qualcomm/toq/smartwatch/service/receiver/PHubTimeReceiver);
        intent.setAction((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.service.receiver.PHubTimeReceiver").toString());
        PendingIntent pendingintent = PendingIntent.getBroadcast(getApplicationContext(), 0, intent, 0);
        ((AlarmManager)getSystemService("alarm")).set(0, l, pendingintent);
        startFactoryObjects();
        mLocationUpdateHandler = new Handler();
        mLocationServiceReceiver = new LocationServiceReceiver();
        registerReceiver(mLocationServiceReceiver, new IntentFilter("android.location.PROVIDERS_CHANGED"));
        mIsNetworkProviderEnabled = ((LocationManager)(LocationManager)getSystemService("location")).isProviderEnabled("network");
        Log.printUsageLog("PHubService", "Phub Service instance created");
    }

    public void onDestroy()
    {
        super.onDestroy();
        Log.d("PHubService", "Service destroying");
        Log.d("FMSController", "onDestroy() of PhubService called");
        isPHubServiceRunning = false;
        Log.d("PHubService", "Unregister phone listener while service is destroyed.");
        CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()).unRegisterListener();
        if (mLocationServiceReceiver != null)
            unregisterReceiver(mLocationServiceReceiver);
        Log.printUsageLog("PHubService", "Phub Service instance destroyed");
        endFactoryObjects();
        Log.d("PHubService", "Unregistering FMS receiver as service is destroying");
        FMSController.getFmsController().unRegisterFMSReceiver();
        try
        {
            unregisterReceiver(AndroidUtils.getAndroidUtils().getHeadsetBroadCastReceiver());
        }
        catch (Exception exception) { }
        sendBroadcast(new Intent(Constants.ACTION_SERVICE_STOPPED));
        if (handler != null)
        {
            handler.removeCallbacksAndMessages(null);
            handler.getLooper().quit();
            handler = null;
        }
        unRegisterContentObservers();
        synchronized (custom_lock)
        {
            mInstance = null;
        }
        custom_lock = null;
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void onLowMemory()
    {
        super.onLowMemory();
        Log.i("PHubService", "Service onLowMemory");
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.d("PHubService", "PHubService onStartCommand called");
        Log.printUsageLog("PHubService", "Phub Service Started");
        Log.d("PHubService", (new StringBuilder()).append("hasExtras:").append(intent).toString());
        if (intent == null || !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer")) goto _L2; else goto _L1
_L1:
        Bundle bundle = intent.getExtras();
        if (bundle == null || FMSController.getFmsController() == null) goto _L2; else goto _L3
_L3:
        String s = bundle.getString("command");
        if (s == null || !s.equalsIgnoreCase("fmsMakeDir")) goto _L5; else goto _L4
_L4:
        if (bundle.containsKey("filePath") && bundle.containsKey("appId"))
        {
            Log.d("PHubService", "ADB call for fmsMakeDir");
            fmsMakeDir(Integer.parseInt(bundle.getString("appId")), bundle.getString("filePath"));
        }
_L2:
        return super.onStartCommand(intent, i, j);
_L5:
        if (s != null && s.equalsIgnoreCase("fmsRemoveDir"))
        {
            if (bundle.containsKey("filePath") && bundle.containsKey("appId") && bundle.containsKey("isRecursive"))
            {
                boolean flag = bundle.getString("isRecursive").equals("true");
                boolean flag1 = false;
                if (flag)
                    flag1 = true;
                Log.d("PHubService", "ADB call for fmsRemoveDir");
                fmsRemoveDir(Integer.parseInt(bundle.getString("appId")), bundle.getString("filePath"), flag1);
            }
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("fmsRemoveFile"))
        {
            if (bundle.containsKey("filePath") && bundle.containsKey("appId"))
            {
                Log.d("PHubService", "ADB call for fmsRemoveFile");
                fmsRemoveFile(Integer.parseInt(bundle.getString("appId")), bundle.getString("filePath"));
            }
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("fmsSyncFile"))
        {
            Log.d("PHubService", (new StringBuilder()).append("ADB command call for fmsSyncFile: ").append(bundle).toString());
            if (bundle.containsKey("appId") && bundle.containsKey("srcPath") && bundle.containsKey("destPath"))
                if (bundle.containsKey("priority"))
                {
                    Log.d("PHubService", (new StringBuilder()).append("ADB command call for fmsSyncFile: ").append(Integer.parseInt(bundle.getString("appId"))).append(" ").append(bundle.getString("srcPath")).append(" ").append(bundle.getString("destPath")).append(" ").append(bundle.getInt("priority")).toString());
                    fmsSyncFile(Integer.parseInt(bundle.getString("appId")), bundle.getString("srcPath"), bundle.getString("destPath"), bundle.getInt("priority"));
                } else
                {
                    Log.d("PHubService", (new StringBuilder()).append("ADB command call for fmsSyncFile: ").append(Integer.parseInt(bundle.getString("appId"))).append(" ").append(bundle.getString("srcPath")).append(" ").append(bundle.getString("destPath")).append(" -1").toString());
                    fmsSyncFile(Integer.parseInt(bundle.getString("appId")), bundle.getString("srcPath"), bundle.getString("destPath"), -1);
                }
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("fmsResynchRequest"))
        {
            Log.d("PHubService", (new StringBuilder()).append("ADB command call for fmsResynchRequest: ").append(bundle).toString());
            if (bundle.containsKey("appId") && bundle.containsKey("path"))
            {
                Log.d("PHubService", (new StringBuilder()).append("ADB command call for fmsReSyncFile: ").append(Integer.parseInt(bundle.getString("appId"))).append(" ").append(bundle.getString("path")).toString());
                fmsResynchRequest(Integer.parseInt(bundle.getString("appId")), bundle.getString("path"));
            }
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("receiveFileFromWatch"))
        {
            Log.d("PHubService", (new StringBuilder()).append("ADB command call for receiveFileFromWatch: ").append(bundle).toString());
            Log.d("PHubService", (new StringBuilder()).append("ADB command call for receiveFileFromWatch:  ").append(bundle.getString("srcPath")).append(" ").append(bundle.getString("destPath")).toString());
            AndroidUtils.getAndroidUtils().receiveFileFromWatch(bundle.getString("srcPath"), bundle.getString("destPath"));
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("pushFileToWatch"))
        {
            Log.d("PHubService", (new StringBuilder()).append("ADB command call to pushFileToWatch: ").append(bundle).toString());
            Log.d("PHubService", (new StringBuilder()).append("ADB command call for pushFileToWatch:  ").append(bundle.getString("srcPath")).append(" ").append(bundle.getString("destPath")).toString());
            AndroidUtils.getAndroidUtils().pushFileToWatch(bundle.getString("srcPath"), bundle.getString("destPath"));
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("setDefaultMusicPlayer"))
        {
            Log.d("PHubService", (new StringBuilder()).append("ADB command call to setDefaultMusicPlayer: ").append(bundle).toString());
            Log.d("PHubService", (new StringBuilder()).append("ADB command call for setDefaultMusicPlayer:  ").append(bundle.getString("playerName")).toString());
            MusicControlUtils.getInstance().setDefaultMusicPlayer(bundle.getString("playerName"));
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("clearActivityHistory"))
        {
            Log.d("PHubService", "ADB call for clearActivityHistory");
            ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null && toqconnectionhandlerimpl != null)
            {
                if (toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) == 3)
                {
                    Log.d("PHubService", "Phone and WD in connected state, clearing activity history");
                    ActivityMonitoringController.getActivityMonitoringController().clearActivityData();
                } else
                {
                    Log.e("PHubService", "Phone and WD in disconnected state. Clear history failed");
                }
            } else
            {
                Log.e("PHubService", "ConnectionHandler/EndPoint is NULL");
            }
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("resetConnection"))
        {
            Log.d("PHubService", "ADB call for resetConnection");
            try
            {
                resetConnectionWD();
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
            continue; /* Loop/switch isn't completed */
        }
        if (s != null && s.equalsIgnoreCase("enableTFTP"))
        {
            Log.d("PHubService", "ADB call for resetConnection");
            try
            {
                if (bundle.containsKey("state"))
                    ToqConnectionHandlerImpl.getConnectionHandler().setEndPointEnableTFTPMode(0, bundle.getBoolean("value"));
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
            }
            continue; /* Loop/switch isn't completed */
        }
        if (s == null || !s.equalsIgnoreCase("setActivityGoal"))
            continue; /* Loop/switch isn't completed */
        Log.d("PHubService", "ADB call for setActivityGoal");
        int k;
        if (!bundle.containsKey("goalValue"))
            continue; /* Loop/switch isn't completed */
        k = Integer.parseInt(bundle.getString("goalValue"));
        if (k < 0) goto _L7; else goto _L6
_L6:
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (k >= 3000) goto _L9; else goto _L8
_L8:
        k = 3000;
_L10:
        if (sharedpreferences == null)
            continue; /* Loop/switch isn't completed */
        Exception exception;
        if (k != sharedpreferences.getInt("activity_monitoring_goal_points_key", 10000))
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putInt("activity_monitoring_goal_points_key", k);
            editor.commit();
            UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if (k > 25000)
            k = 25000;
        if (true) goto _L10; else goto _L7
_L7:
        try
        {
            Log.e("PHubService", "goalPoints cannot be negative.");
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Log.e("PHubService", "Exception in setActivityGoal");
            exception.printStackTrace();
        }
        if (true) goto _L2; else goto _L11
_L11:
    }

    public void onTaskRemoved(Intent intent)
    {
        super.onTaskRemoved(intent);
        Log.d("PHubService", "PhubService  Task has been removed");
        AndroidUtils.getAndroidUtils().stopMediaPlayer();
        SystemController.getSystemController().bFindPhoneReqOn = false;
    }

    public void resetConnectionWD()
        throws RemoteException
    {
label0:
        {
            if (mConnectionFactory != null)
            {
                if (mConnectionFactory.getConnManager() == null)
                    break label0;
                mConnectionFactory.getConnManager().resetEndPointConnection(0, true);
            }
            return;
        }
        Log.d("PHubService", "resetConnectionWD(): mConnectionFactory.getConnManager() is null");
    }

    public void sendDataToController(int i, int j, int k, Object obj, int l, int i1)
    {
label0:
        {
            if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(i) == 1)
            {
                Object obj1;
                if (j == 5)
                    obj1 = SystemController.getSystemController();
                else
                if (j == 3)
                    obj1 = SMSController.getSMSController();
                else
                if (j == 7)
                    obj1 = PopUpController.getPopUpController();
                else
                if (j == 1)
                    obj1 = VoiceCallController.getVoiceCallController();
                else
                if (j == 17)
                    obj1 = FMSController.getFmsController();
                else
                if (j == 24)
                    obj1 = MusicController.getMusicController();
                else
                if (j == 26)
                    obj1 = AppMessagingController.getAppMessagingController();
                else
                if (j == 34)
                    obj1 = AppLoggingController.getAppLoggingController();
                else
                if (j == 28)
                    obj1 = SpeechController.getSpeechController();
                else
                if (j == 30)
                    obj1 = ActivityMonitoringController.getActivityMonitoringController();
                else
                if (j == 32)
                {
                    obj1 = FTSController.getFtsController();
                } else
                {
                    obj1 = null;
                    if (j == 0)
                        obj1 = VersionController.getVersionController();
                }
                if (obj1 == null)
                    break label0;
                ((IController) (obj1)).sendControllerMessageData(i, j, k, obj, l, i1);
            }
            return;
        }
        Log.e("PHubService", "Controller is null");
    }

    public void startFactoryObjects()
    {
        Log.d("PHubService", "PHubService startFactoryObjects()");
        (new Thread() {

            final PHubService this$0;

            public void run()
            {
                Looper.prepare();
                mConnectionFactory = getConnectionFactory();
                SharedPreferences sharedpreferences = 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = PHubService.this;
                super();
            }
        }
).start();
    }

    public void startFindWDDialogActivity()
    {
        Context context = ToqApplication.getAppContext();
        Intent intent = new Intent(context, com/qualcomm/toq/smartwatch/ui/activity/FindWDActivity);
        intent.setFlags(0x10000000);
        context.startActivity(intent);
    }






/*
    static PhubCalendarContentObserver access$1002(PHubService phubservice, PhubCalendarContentObserver phubcalendarcontentobserver)
    {
        phubservice.calendarContentObserver = phubcalendarcontentobserver;
        return phubcalendarcontentobserver;
    }

*/


/*
    static ConnectionFactory access$102(PHubService phubservice, ConnectionFactory connectionfactory)
    {
        phubservice.mConnectionFactory = connectionfactory;
        return connectionfactory;
    }

*/






/*
    static PhubSMSContentObserver access$1402(PHubService phubservice, PhubSMSContentObserver phubsmscontentobserver)
    {
        phubservice.smsContentObserver = phubsmscontentobserver;
        return phubsmscontentobserver;
    }

*/




/*
    static Handler access$1602(PHubService phubservice, Handler handler1)
    {
        phubservice.mLocationUpdateHandler = handler1;
        return handler1;
    }

*/



/*
    static boolean access$1702(PHubService phubservice, boolean flag)
    {
        phubservice.mIsNetworkProviderEnabled = flag;
        return flag;
    }

*/






/*
    static PhubContactContentObserver access$602(PHubService phubservice, PhubContactContentObserver phubcontactcontentobserver)
    {
        phubservice.contactContentObserver = phubcontactcontentobserver;
        return phubcontactcontentobserver;
    }

*/




/*
    static PhubCallLogContentObserver access$802(PHubService phubservice, PhubCallLogContentObserver phubcalllogcontentobserver)
    {
        phubservice.callLogContentObserver = phubcalllogcontentobserver;
        return phubcalllogcontentobserver;
    }

*/


    // Unreferenced inner class com/qualcomm/toq/smartwatch/service/PHubService$2$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final _cls2 this$1;
        final Context val$contextObj;

        public void run()
        {
            SharedPreferences sharedpreferences;
            android.content.SharedPreferences.Editor editor;
            sharedpreferences = contextObj.getSharedPreferences("calendars_pref", 0);
            editor = sharedpreferences.edit();
            HashMap hashmap;
            com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars acalendars[];
            hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("all_calendar_id", ObjectSerializer.serialize(new HashMap())));
            if (CalendarController.getCalendarController() == null)
                break MISSING_BLOCK_LABEL_190;
            acalendars = CalendarController.getCalendarController().getAvailableCalendars(contextObj);
            if (acalendars == null) goto _L2; else goto _L1
_L1:
            if (hashmap == null) goto _L4; else goto _L3
_L3:
            if (!hashmap.isEmpty()) goto _L4; else goto _L5
_L5:
            int i = 0;
            do
            {
                int j;
                com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars calendars1;
                try
                {
                    if (i >= acalendars.length)
                        break;
                    com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars calendars = acalendars[i];
                    calendars.setChecked(true);
                    hashmap.put(calendars.getCalendarId(), Boolean.valueOf(calendars.isChecked()));
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    continue; /* Loop/switch isn't completed */
                }
                catch (ClassNotFoundException classnotfoundexception)
                {
                    classnotfoundexception.printStackTrace();
                    continue; /* Loop/switch isn't completed */
                }
                i++;
            } while (true);
              goto _L2
_L4:
            if (hashmap == null) goto _L2; else goto _L6
_L6:
            hashmap.clear();
            j = 0;
_L7:
            if (j >= acalendars.length)
                break; /* Loop/switch isn't completed */
            calendars1 = acalendars[j];
            hashmap.put(calendars1.getCalendarId(), Boolean.valueOf(calendars1.isChecked()));
            j++;
            if (true) goto _L7; else goto _L2
_L2:
            CalendarController.getCalendarController().setAvailableCalendarIds(hashmap);
            Log.d("PHubService", (new StringBuilder()).append(" The calendars with all ids and is checked value").append(hashmap).toString());
            editor.putString("all_calendar_id", ObjectSerializer.serialize(hashmap));
_L13:
            editor.commit();
            if (CalendarController.DEFAULT_EVENTS != 0) goto _L9; else goto _L8
_L8:
            CalendarController.getCalendarController().readCalendar(contextObj);
_L11:
            return;
_L9:
            if (CalendarController.DEFAULT_EVENTS != 1) goto _L11; else goto _L10
_L10:
            CalendarController.getCalendarController().readCalendarVer2(contextObj);
            return;
            if (true) goto _L13; else goto _L12
_L12:
        }

            
            {
                this$1 = final__pcls2;
                contextObj = Context.this;
                super();
            }
    }

}
