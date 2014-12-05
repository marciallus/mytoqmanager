// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.handler;

import android.bluetooth.BluetoothAdapter;
import android.content.*;
import android.media.AudioManager;
import android.os.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.receiver.HandleMessageService;
import com.qualcomm.toq.base.controller.IController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.ConnectionHandlerImpl;
import com.qualcomm.toq.base.tftp.filetransfer.TFTPFiletransferClient;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.ambient.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade;
import com.qualcomm.toq.smartwatch.connectionmanager.tcp.TCPConnectionManager;
import com.qualcomm.toq.smartwatch.controller.*;
import com.qualcomm.toq.smartwatch.database.PHubDatabaseAdapter;
import com.qualcomm.toq.smartwatch.filetransfer.PhubFileTransferClient;
import com.qualcomm.toq.smartwatch.notification.NotificationHandler;
import com.qualcomm.toq.smartwatch.notification.ToqNotificationManager;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.File;
import java.util.ArrayList;

public class ToqConnectionHandlerImpl extends ConnectionHandlerImpl
{
    private class ToqHandlerStateListenerImpl
        implements com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade.StateListener
    {

        private int lastWatchConnectionState;
        final ToqConnectionHandlerImpl this$0;

        public void onBluetoothDisabled()
        {
        }

        public void onBluetoothEnabled()
        {
        }

        public void onWatchConnected()
        {
            lastWatchConnectionState = 3;
        }

        public void onWatchDisconnected()
        {
            if (lastWatchConnectionState == 3 && !BluetoothAdapter.getDefaultAdapter().isEnabled() && ToqApplication.getDeviceType() == 0)
                ToqNotificationManager.getInstance().showWatchBTDisconnectNotification();
            lastWatchConnectionState = 4;
        }

        public void onWatchPaired()
        {
        }

        public void onWatchUnpaired()
        {
            Log.d("ToqConnectionHandlerImpl", "ToqHandlerStateListenerImpl:onWatchUnpaired() - clean FMS data");
            if (FMSController.getFmsController() != null)
                FMSController.getFmsController().clearFMSData();
            FMSController.setController(null);
        }

        private ToqHandlerStateListenerImpl()
        {
            this$0 = ToqConnectionHandlerImpl.this;
            super();
            lastWatchConnectionState = 4;
        }

    }


    private static final String TAG = "ToqConnectionHandlerImpl";
    private static ToqConnectionHandlerImpl mInstance;
    private ConnectionFactory connFactory;
    private IConnectionManager connManager;
    private Context context;
    private PHubDatabaseAdapter dbAdapter;
    private ArrayList mOldStockList;
    private ArrayList mOldWeatheList;

    private ToqConnectionHandlerImpl()
    {
        connFactory = ConnectionFactory.getConnectionFactory();
        context = null;
        StateListenerFacade.getInstance().addStateListener(new ToqHandlerStateListenerImpl());
    }

    private void createAmbientBackupList(Context context1)
    {
        if (context1 == null)
            break MISSING_BLOCK_LABEL_141;
        SharedPreferences sharedpreferences = context1.getSharedPreferences("ambient__pref", 0);
        if (!sharedpreferences.getBoolean("AmbientBackUp", false))
        {
            mOldWeatheList = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
            mOldStockList = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("weather_city_backup", ObjectSerializer.serialize(mOldWeatheList));
            editor.putString("stock_symbol_backup", ObjectSerializer.serialize(mOldStockList));
            editor.putBoolean("AmbientBackUp", true);
            editor.commit();
        }
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    private void deleteOutStandingWDAmbientFile(Context context1)
    {
        if (context1 == null) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences;
        ArrayList arraylist;
        ArrayList arraylist1;
        int i;
        StockAmbientInfo stockambientinfo;
        int j;
        WeatherAmbientInfo weatherambientinfo;
        WeatherAmbientInfo weatherambientinfo1;
        try
        {
            sharedpreferences = context1.getSharedPreferences("ambient__pref", 0);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (sharedpreferences == null) goto _L2; else goto _L3
_L3:
        if (sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false))
            break MISSING_BLOCK_LABEL_266;
        weatherambientinfo1 = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        if (weatherambientinfo1 == null)
            break MISSING_BLOCK_LABEL_266;
        if (weatherambientinfo1.getCityName() != null && (weatherambientinfo1 instanceof CurrentCityWeatherAmbientInfo))
        {
            if (weatherambientinfo1.getAppImageSourceLocation() != null)
            {
                File file5 = new File(weatherambientinfo1.getAppImageSourceLocation());
                if (file5.exists())
                    file5.delete();
            }
            if (((CurrentCityWeatherAmbientInfo)weatherambientinfo1).getClockZipSourceLocation() != null)
            {
                File file6 = new File(((CurrentCityWeatherAmbientInfo)weatherambientinfo1).getClockZipSourceLocation());
                if (file6.exists())
                    file6.delete();
            }
            if (weatherambientinfo1.getDestinationLocation() != null && weatherambientinfo1.getAppImageDestinationLocation() != null && ((CurrentCityWeatherAmbientInfo)weatherambientinfo1).getClockZipDestinationLocation() != null)
            {
                Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("Removing File  ").append(weatherambientinfo1.getDestinationLocation()).toString());
                Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("Removing File  ").append(weatherambientinfo1.getAppImageDestinationLocation()).toString());
                AmbientController ambientcontroller1 = AmbientController.getController("weather");
                ambientcontroller1.removeFile(weatherambientinfo1.getAppImageDestinationLocation());
                ambientcontroller1.removeFile(((CurrentCityWeatherAmbientInfo)weatherambientinfo1).getClockZipDestinationLocation());
            }
        }
        mOldWeatheList = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("weather_city_backup", ObjectSerializer.serialize(new ArrayList())));
        mOldStockList = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("stock_symbol_backup", ObjectSerializer.serialize(new ArrayList())));
        if (context1 == null) goto _L5; else goto _L4
_L4:
        if (mOldStockList == null || mOldWeatheList == null) goto _L5; else goto _L6
_L6:
        arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
        arraylist1 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbols", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null || arraylist1 == null) goto _L5; else goto _L7
_L7:
        Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("Old weather List size : ").append(mOldWeatheList.size()).append("And new size: ").append(arraylist.size()).toString());
        if (mOldWeatheList.size() <= arraylist.size()) goto _L9; else goto _L8
_L8:
        j = arraylist.size();
_L15:
        if (j >= mOldWeatheList.size()) goto _L9; else goto _L10
_L10:
        weatherambientinfo = (WeatherAmbientInfo)mOldWeatheList.get(j);
        if (weatherambientinfo == null) goto _L12; else goto _L11
_L11:
        if (weatherambientinfo.getAppImageDestinationLocation() != null && weatherambientinfo.getDestinationLocation() != null)
        {
            AmbientController.getController("weather").removeFile(weatherambientinfo.getAppImageDestinationLocation());
            if (weatherambientinfo.getSourceLocation() != null && weatherambientinfo.getAppImageSourceLocation() != null)
            {
                File file3 = new File(weatherambientinfo.getSourceLocation());
                if (file3.exists())
                    file3.delete();
                File file4 = new File(weatherambientinfo.getAppImageSourceLocation());
                if (file4.exists())
                    file4.delete();
            }
        }
          goto _L12
_L9:
        if (mOldStockList.size() <= arraylist1.size()) goto _L5; else goto _L13
_L13:
        i = arraylist1.size();
_L16:
        if (i >= mOldStockList.size()) goto _L5; else goto _L14
_L14:
        stockambientinfo = (StockAmbientInfo)mOldStockList.get(i);
        if (stockambientinfo == null)
            break MISSING_BLOCK_LABEL_877;
        if (stockambientinfo.getAppImageDestinationLocation() != null && stockambientinfo.getDarkImageDestinationLocation() != null && stockambientinfo.getDestinationLocation() != null)
        {
            AmbientController ambientcontroller = AmbientController.getController("weather");
            ambientcontroller.removeFile(stockambientinfo.getAppImageDestinationLocation());
            ambientcontroller.removeFile(stockambientinfo.getDarkImageDestinationLocation());
            ambientcontroller.removeFile(stockambientinfo.getDestinationLocation());
            if (stockambientinfo.getSourceLocation() != null && stockambientinfo.getAppImageSourceLocation() != null && stockambientinfo.getDarkImageSourceLocation() != null)
            {
                File file = new File(stockambientinfo.getSourceLocation());
                if (file.exists())
                    file.delete();
                File file1 = new File(stockambientinfo.getDarkImageSourceLocation());
                if (file1.exists())
                    file1.delete();
                File file2 = new File(stockambientinfo.getAppImageSourceLocation());
                if (file2.exists())
                    file2.delete();
            }
        }
        break MISSING_BLOCK_LABEL_877;
_L5:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putBoolean("AmbientBackUp", false);
        editor.commit();
        mOldStockList = null;
        mOldWeatheList = null;
_L2:
        return;
_L12:
        j++;
          goto _L15
        i++;
          goto _L16
    }

    public static ToqConnectionHandlerImpl getConnectionHandler()
    {
        if (mInstance == null)
            mInstance = new ToqConnectionHandlerImpl();
        return mInstance;
    }

    private boolean isConnectedFirstTime(Context context1)
    {
        boolean flag = context1.getSharedPreferences("first_time_connected_pref", 0).getString("first_time_connected", "true").equals("true");
        boolean flag1 = false;
        if (flag)
            flag1 = true;
        return flag1;
    }

    private boolean isFirstTimeConnected(Context context1)
    {
        if (context1 != null)
        {
            SharedPreferences sharedpreferences = context1.getSharedPreferences("first_time_connected_pref", 0);
            if (sharedpreferences.getString("first_time_connected", "true").equals("true"))
            {
                deleteParentDirectoryContent("weather");
                deleteParentDirectoryContent("stock");
                Log.e("ToqConnectionHandlerImpl", "First time connected");
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putString("first_time_connected", "false");
                editor.commit();
                return true;
            } else
            {
                Log.e("ToqConnectionHandlerImpl", "Connected again..");
                return false;
            }
        } else
        {
            Log.e("ToqConnectionHandlerImpl", "Context is null in isFirstTimeConnected");
            return false;
        }
    }

    private void resetAmbientTimeStamps(Context context1)
    {
        if (context1 != null)
        {
            if (isConnectedFirstTime(context1))
            {
                AmbientUtils.resetAmbientLastFetchTimeStamp();
                return;
            } else
            {
                Log.e("ToqConnectionHandlerImpl", "Connected again..");
                return;
            }
        } else
        {
            Log.e("ToqConnectionHandlerImpl", "Context is null in isFirstTimeConnected");
            return;
        }
    }

    private void startSynchingStores()
    {
        Context context1 = connFactory.getContext();
        AmbientController ambientcontroller = AmbientController.getController("stock");
        AmbientController ambientcontroller1 = AmbientController.getController("weather");
        if (context1 != null)
        {
            if (ambientcontroller != null)
            {
                ambientcontroller.processAmbientTask(2);
                ambientcontroller.resetPollingTimer();
            }
            if (ambientcontroller1 != null)
            {
                ambientcontroller1.processAmbientTask(2);
                ambientcontroller1.resetPollingTimer();
            }
        }
        ContactController contactcontroller = ContactController.getContactController();
        AgendaController agendacontroller = AgendaController.getAgendaController();
        SMSController smscontroller = SMSController.getSMSController();
        CommHubController commhubcontroller = CommHubController.getCommHubController();
        ClockSettingsController clocksettingscontroller = ClockSettingsController.getClockSettingsController();
        FavoriteAppsController favoriteappscontroller = FavoriteAppsController.getFavoriteAppsController();
        UserSettingsController usersettingscontroller = UserSettingsController.getUserSettingsController();
        MusicController musiccontroller = MusicController.getMusicController();
        NotificationHandler.getInstance().syncApp();
        if (connFactory != null)
        {
            if (contactcontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching Contacts **");
                contactcontroller.bContactStoreCreation = true;
                contactcontroller.storePhoneContactsToFile();
            }
            if (agendacontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching Agenda **");
                agendacontroller.storeAgendaToFile(context1);
            }
            if (smscontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching Quick Reply **");
                smscontroller.storeQuickReplyToFile(context1);
            }
            if (commhubcontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching Recent Communication **");
                commhubcontroller.storeCommHubToFile();
            }
            if (clocksettingscontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching Clock Settings **");
                clocksettingscontroller.sendClockSettingsToWD(context1);
                clocksettingscontroller.sendClockAppsZipToWD(context1);
            }
            if (usersettingscontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching User Settings **");
                usersettingscontroller.sendUserSettingsToWD(context1);
            }
            if (favoriteappscontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching FavouriteApps **");
                favoriteappscontroller.sendFavoriteAppListToWD(context1);
            }
            if (musiccontroller != null)
            {
                Log.d("ToqConnectionHandlerImpl", "** Start Synching music playlist **");
                musiccontroller.sendPlaylistToWD();
            }
        }
    }

    public void deleteParentDirectoryContent(String s)
    {
        File file = AndroidUtils.getAmbientDirectory(s);
        Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("Deleting ").append(s).append(" files").toString());
        if (file != null)
            Utils.deleteFiles(file);
    }

    public void flushAmbientContents(Context context1)
    {
        if (context1 == null)
            break MISSING_BLOCK_LABEL_427;
        SharedPreferences sharedpreferences = context1.getSharedPreferences("ambient__pref", 0);
        Log.d("ToqConnectionHandlerImpl", "Flushing Ambient Contents from respective entries so next connection will fetch Updated data");
        ArrayList arraylist;
        int i;
        android.content.SharedPreferences.Editor editor;
        WeatherAmbientInfo weatherambientinfo;
        ArrayList arraylist1;
        int j;
        android.content.SharedPreferences.Editor editor1;
        StockAmbientInfo stockambientinfo;
        android.content.SharedPreferences.Editor editor2;
        WeatherAmbientInfo weatherambientinfo1;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_177;
        if (arraylist.size() <= 0)
            break MISSING_BLOCK_LABEL_177;
        i = 0;
_L2:
        if (i >= arraylist.size())
            break; /* Loop/switch isn't completed */
        weatherambientinfo1 = (WeatherAmbientInfo)(WeatherAmbientInfo)arraylist.get(i);
        weatherambientinfo1.setMaxTemp(0);
        weatherambientinfo1.setMinTemp(0);
        weatherambientinfo1.setHourTemp(0);
        weatherambientinfo1.setWeatherCondition(null);
        weatherambientinfo1.setIconNumber(-1);
        weatherambientinfo1.setPushImageType(null);
        arraylist.remove(i);
        arraylist.add(i, weatherambientinfo1);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        editor = sharedpreferences.edit();
        editor.putString("WeatherCities", ObjectSerializer.serialize(arraylist));
        editor.commit();
        weatherambientinfo = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        if (weatherambientinfo == null)
            break MISSING_BLOCK_LABEL_285;
        if (weatherambientinfo.getCityName() != null && (weatherambientinfo instanceof CurrentCityWeatherAmbientInfo))
        {
            weatherambientinfo.setMaxTemp(0);
            weatherambientinfo.setMinTemp(0);
            weatherambientinfo.setHourTemp(0);
            weatherambientinfo.setWeatherCondition(null);
            weatherambientinfo.setPushImageType(null);
            editor2 = sharedpreferences.edit();
            editor2.putString("WeatherCurrentCity", ObjectSerializer.serialize(weatherambientinfo));
            editor2.commit();
        }
        arraylist1 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbols", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist1 == null)
            break MISSING_BLOCK_LABEL_427;
        if (arraylist1.size() <= 0)
            break MISSING_BLOCK_LABEL_427;
        j = 0;
_L4:
        if (j >= arraylist1.size())
            break; /* Loop/switch isn't completed */
        stockambientinfo = (StockAmbientInfo)arraylist1.get(j);
        stockambientinfo.setLastValue(null);
        stockambientinfo.setChange(null);
        stockambientinfo.setPercentageChange(null);
        stockambientinfo.setPushImageType(null);
        arraylist1.remove(j);
        arraylist1.add(j, stockambientinfo);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        editor1 = sharedpreferences.edit();
        editor1.putString("StockSymbols", ObjectSerializer.serialize(arraylist1));
        editor1.commit();
    }

    public Context getContext()
    {
        if (context == null)
            context = ToqApplication.getAppContext();
        return context;
    }

    public IController getController(int i, int j)
    {
        Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("Dest appID = ").append(i).toString());
        Object obj;
        if (i == 0)
            obj = VersionController.getVersionController();
        else
        if (i == 1)
            obj = VoiceCallController.getVoiceCallController();
        else
        if (i == 3)
            obj = SMSController.getSMSController();
        else
        if (i == 5)
            obj = SystemController.getSystemController();
        else
        if (i == 7)
            obj = PopUpController.getPopUpController();
        else
        if (i == 9)
            obj = StorageServiceController.getStorageServiceController();
        else
        if (i == 17)
            obj = FMSController.getFmsController();
        else
        if (i == 24)
            obj = MusicController.getMusicController();
        else
        if (i == 26)
            obj = AppMessagingController.getAppMessagingController();
        else
        if (i == 34)
            obj = AppLoggingController.getAppLoggingController();
        else
        if (i == 28)
            obj = SpeechController.getSpeechController();
        else
        if (i == 30)
        {
            obj = ActivityMonitoringController.getActivityMonitoringController();
        } else
        {
            obj = null;
            if (i == 32)
                obj = FTSController.getFtsController();
        }
        if (obj == null)
            obj = super.getController(i, j);
        return ((IController) (obj));
    }

    public boolean getEndPointCheckCompatibilityMode(int i)
    {
        boolean flag = true;
        if (getContext() != null)
            flag = getContext().getSharedPreferences("app_pref", 0).getBoolean((new StringBuilder()).append("checkCompatibility").append(i).toString(), flag);
        return flag;
    }

    public boolean getEndPointEnableTFTPMode(int i)
    {
        if (getContext() != null)
        {
            boolean flag = getContext().getSharedPreferences("app_pref", 0).getBoolean((new StringBuilder()).append("enableTFTP").append(i).toString(), false);
            Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("getEndPointEnableTFTPMode endPointType = ").append(i).append(",  mode = ").append(flag).toString());
            return flag;
        } else
        {
            Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("getEndPointEnableTFTPMode endPointType = ").append(i).append(",  mode = false").toString());
            return false;
        }
    }

    public int getState(int i)
    {
        return super.getState(i);
    }

    public void handleControllerData(int i, int j, int k, Object obj, int l, int i1)
    {
        super.handleControllerData(i, j, k, obj, l, i1);
    }

    public void handleMessage(byte abyte0[], IEndPoint iendpoint)
    {
        super.handleMessage(abyte0, iendpoint);
    }

    public void initialSync()
    {
        HandlerThread handlerthread = new HandlerThread("ToqConnectionHandlerImpl");
        handlerthread.start();
        (new Handler(handlerthread.getLooper())).post(new Runnable() {

            final ToqConnectionHandlerImpl this$0;

            public void run()
            {
                Context context1 = ConnectionFactory.getConnectionFactory().getContext();
                if (context1 == null) goto _L2; else goto _L1
_L1:
                FMSController fmscontroller;
                deleteOutStandingWDAmbientFile(ConnectionFactory.getConnectionFactory().getContext());
                resetAmbientTimeStamps(context1);
                fmscontroller = FMSController.getFmsController();
                if (fmscontroller == null)
                    break MISSING_BLOCK_LABEL_233;
                int i = fmscontroller.fmsRemoveFile(1, "/packages/com.qualcomm.qce.androidnotifications/app.zip");
                if (i != 0) goto _L4; else goto _L3
_L3:
                Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("Forcefully- removed Notification app.zip via fms, wdFile: ").append("/packages/com.qualcomm.qce.androidnotifications/app.zip").append(", result: ").append(i).toString());
_L5:
                Exception exception1;
                try
                {
                    startSynchingStores();
                    if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 && isFirstTimeConnected(ConnectionFactory.getConnectionFactory().getContext()))
                    {
                        deleteParentDirectoryContent("stock");
                        deleteParentDirectoryContent("weather");
                    }
                }
                catch (Exception exception)
                {
                    Log.e("ToqConnectionHandlerImpl", "Exception in intial sync");
                    exception.printStackTrace();
                }
_L2:
                Looper.myLooper().quit();
                return;
_L4:
                Log.w("ToqConnectionHandlerImpl", (new StringBuilder()).append("Unable to- remove file via fms (problem?), wdFile: ").append("/packages/com.qualcomm.qce.androidnotifications/app.zip").append(", result: ").append(i).toString());
                  goto _L5
                exception1;
                Log.e("ToqConnectionHandlerImpl", (new StringBuilder()).append("An error occurred removing file via fms, wdFile: ").append("/packages/com.qualcomm.qce.androidnotifications/app.zip").toString(), exception1);
                  goto _L5
                Log.e("ToqConnectionHandlerImpl", "Couldn't get reference to FMS controller");
                  goto _L5
            }

            
            {
                this$0 = ToqConnectionHandlerImpl.this;
                super();
            }
        }
);
        AndroidUtils.getAndroidUtils().initBatteryMonitorTimer();
    }

    public void initiateConnectionMgr(Context context1, int i)
    {
        context = context1;
        dbAdapter = PHubDatabaseAdapter.getDatabaseAdapter(context);
        dbAdapter.open();
        ProjectConfig projectconfig = ProjectConfig.getProjectConfig();
        if (projectconfig.getTransferType().equals("TFTP"))
            setEndPointEnableTFTPMode(0, true);
        if (projectconfig.getConnectionType().equals("BLUETOOTH"))
            connManager = BTConnectionManager.getConnectionManager(context);
        else
        if (projectconfig.getConnectionType().equals("TCP"))
        {
            Log.d("ToqConnectionHandlerImpl", "ConnectionType TCP/IP");
            setEndPointCheckCompatibilityMode(0, false);
            connManager = TCPConnectionManager.getConnectionManager(context);
        }
        FMSController.getFmsController();
        boolean flag = PhubBluetoothDeviceBondInfo.getInstance().isWDBonded();
        Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("isWDBonded value in initiateConnectionMgr(): ").append(flag).toString());
        if (connManager != null)
        {
            ConnectionFactory.getConnectionFactory().setConnManager(connManager);
            HandleMessageService.COUNT_WD_CONNECT_ATTEMPT = 0;
            connManager.associatePhoneWD();
        }
    }

    public void setEndPointCheckCompatibilityMode(int i, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
        editor.putBoolean((new StringBuilder()).append("checkCompatibility").append(i).toString(), flag);
        editor.commit();
    }

    public void setEndPointEnableTFTPMode(int i, boolean flag)
    {
        Log.d("ToqConnectionHandlerImpl", (new StringBuilder()).append("setEndPointEnableTFTPMode endPointType = ").append(i).append(", mode = ").append(flag).toString());
        android.content.SharedPreferences.Editor editor = getContext().getSharedPreferences("app_pref", 0).edit();
        editor.putBoolean((new StringBuilder()).append("enableTFTP").append(i).toString(), flag);
        editor.commit();
    }

    public void updateState(int i, int j)
    {
        Context context1;
        super.updateState(i, j);
        context1 = ConnectionFactory.getConnectionFactory().getContext();
        if (i == 0)
            FMSController.getFmsController();
        if (i != 0) goto _L2; else goto _L1
_L1:
        if (j != 3) goto _L4; else goto _L3
_L3:
        Log.printUsageLog("ConnectionHandlerImpl", "WD State: connected");
        StateListenerFacade.getInstance().onWatchConnected();
        PhubFileTransferClient.isStopOPPPush = false;
        TFTPFiletransferClient.isStopTFTPPush = false;
        HandleMessageService.COUNT_WD_CONNECT_ATTEMPT = 0;
        FMSController.getFmsController().registerFMSReceiver();
        if (PopUpController.getPopUpController() != null && PopUpController.getPopUpController() != null)
            PopUpController.getPopUpController().unMapPopupAll();
        CalendarController.setController(null);
        PopUpController.setController(null);
        ContactController.setController(null);
        SMSController.getSMSController().updateSMSReceivedTime();
        if (CalendarController.DEFAULT_EVENTS != 0) goto _L6; else goto _L5
_L5:
        CalendarController.getCalendarController().readCalendar(context1);
_L9:
        Log.d("ToqConnectionHandlerImpl", "sendGetActivityInd() called when connected");
        ActivityMonitoringController.getActivityMonitoringController().sendActivityUpdateInd();
        ActivityMonitoringController.getActivityMonitoringController().initiateActivityOperation();
        Log.d("ToqConnectionHandlerImpl", "ACTION_PHONE_WD_CONNECTED broadcast sent");
        Intent intent1 = new Intent();
        intent1.setAction(Constants.ACTION_PHONE_WD_CONNECTED);
        context1.sendBroadcast(intent1);
_L2:
        return;
_L6:
        if (CalendarController.DEFAULT_EVENTS == 1)
            CalendarController.getCalendarController().readCalendarVer2(context1);
        continue; /* Loop/switch isn't completed */
_L4:
        if (j != 4 && j != 0) goto _L2; else goto _L7
_L7:
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (connectionfactory != null)
        {
            connectionfactory.setAppCurrentMode(1);
            AndroidUtils androidutils = AndroidUtils.getAndroidUtils();
            if (androidutils != null)
                androidutils.setCurrentRingerMode(((AudioManager)connectionfactory.getContext().getSystemService("audio")).getRingerMode());
        }
        PhubFileTransferClient.getPhubFileTransferClient(ToqApplication.getAppContext()).closeConnection();
        AndroidUtils.getAndroidUtils().cancelBatteryMonitorTimer();
        if (j == 4)
            Log.printUsageLog("ConnectionHandlerImpl", "WD State: disconnected");
        ActivityMonitoringController.getActivityMonitoringController().stopActivityOperation();
        StateListenerFacade.getInstance().onWatchDisconnected();
        PhubFileTransferClient.isStopOPPPush = true;
        TFTPFiletransferClient.isStopTFTPPush = true;
        ConnectionFactory.getConnectionFactory().setEndPointVersionState(0, 0);
        Log.d("ToqConnectionHandlerImpl", "ACTION_PHONE_WD_DISCONNECTED broadcast sent");
        Intent intent = new Intent();
        intent.setAction(Constants.ACTION_PHONE_WD_DISCONNECTED);
        context1.sendBroadcast(intent);
        createAmbientBackupList(context1);
        SystemController.getSystemController().setIsFindWdReqAllowed(true);
        try
        {
            if (PopUpController.getPopUpController() != null && PopUpController.getPopUpController() != null)
                PopUpController.getPopUpController().unMapPopupAll();
            VersionController.setController(null);
            ContactController.setController(null);
            SMSController.setController(null);
            PopUpController.setController(null);
            CalendarController.setController(null);
            AgendaController.setController(null);
            AmbientController.getController("stock").reSetController();
            AmbientController.getController("stock").reSetController();
            VoiceCallController.setController(null);
            SpeechController.setController(null);
            MusicControlUtils.setInstance(null);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.d("ToqConnectionHandlerImpl", exception.toString());
            return;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }




}
