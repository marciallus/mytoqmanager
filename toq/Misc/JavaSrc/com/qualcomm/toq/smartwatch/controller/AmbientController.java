// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.ambient.*;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.LinkedBlockingQueue;

public abstract class AmbientController extends DefaultController
{
    private static class AmbientTask
    {

        private int taskId;

        public int getTaskId()
        {
            return taskId;
        }

        public AmbientTask(int i, long l)
        {
            taskId = i;
            Log.e("Ambient", (new StringBuilder()).append(" AmbientTask-addAmbientTask taskId=").append(i).toString());
        }
    }


    public static final String AMBIENT_AUTOCOMPLETE_TYPE = "stock";
    public static final String AMB_TAG = "Ambient";
    public static final int TASK_ADDED_TO_QUEUE = -99;
    public static final int TASK_FORCE_POLL = 2;
    public static final int TASK_RE_SYNC = 3;
    public static final int TASK_TIMER_POLL = 1;
    public static final String appName = "AMBIENT_CONTROLLER";
    public String TAG;
    protected long fileSyncReuestNumber;
    public boolean is;
    protected boolean isNetworkStateReciverActive;
    public boolean isTimerPolling;
    private LinkedBlockingQueue mQueue;
    protected AmbientState mState;
    BroadcastReceiver networkConnectionStatusReceiver;
    private Timer pollingTimer;
    protected ArrayList prefAmbientInfoList;
    private AmbientSyncer syncer;
    public int wdRemoveFileCount;

    protected AmbientController()
    {
        is = false;
        isNetworkStateReciverActive = false;
        isTimerPolling = false;
        wdRemoveFileCount = 0;
        prefAmbientInfoList = null;
        networkConnectionStatusReceiver = new BroadcastReceiver() {

            final AmbientController this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive Received Intent action : ").append(s).toString());
                Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Network connectivity state=").append(Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext())).toString());
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(s) && Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
                {
                    deRegisterNetWrokChangeReceiver();
                    onNetworkConnected();
                }
            }

            
            {
                this$0 = AmbientController.this;
                super();
            }
        }
;
        mState = new AmbientState();
        mState.setState(AmbientState.IDLE_SATE, AmbientState.IDLE_SATE);
        syncer = new AmbientSyncer();
        pollingTimer = new Timer();
        mQueue = new LinkedBlockingQueue();
        mQueue.clear();
        isTimerPolling = false;
    }

    private void addAmbientTask(int i)
    {
        Log.e("Ambient", (new StringBuilder()).append(TAG).append("addAmbientTask taskId=").append(i).toString());
        printTaskQueue();
        AmbientTask ambienttask = new AmbientTask(i, Calendar.getInstance().getTimeInMillis());
        try
        {
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("addAmbientTask add task to queue=").append(i).toString());
            mQueue.put(ambienttask);
        }
        catch (InterruptedException interruptedexception)
        {
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("!!!updateAmbientTaskQueue  exception while adding the task to queue taskId=").append(i).append(getState()).toString());
            interruptedexception.printStackTrace();
        }
        printTaskQueue();
    }

    public static AmbientController getController(String s)
    {
        return AmbientControllerFactory.getInstance().getAmbientController(s);
    }

    private void getNextTaskFromQueue()
    {
        int i = mQueue.size();
        Log.d("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue Queue size=").append(i).toString());
        printTaskQueue();
        byte byte0 = -99;
        for (int j = 0; j < i; j++)
        {
            AmbientTask ambienttask = (AmbientTask)mQueue.poll();
            if (ambienttask.getTaskId() != 2 && ambienttask.getTaskId() != 1)
            {
                if (ambienttask.getTaskId() == 3)
                    byte0 = 3;
                continue;
            }
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue just before clear queue").toString());
            printTaskQueue();
            if (ambienttask.getTaskId() == 2)
            {
                mQueue.clear();
                doAmbientPoll(false);
                return;
            }
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue got pll task timerPoll=").append(true).toString());
        }

        Log.e("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue just before clear queue after checking queue tasks").toString());
        printTaskQueue();
        mQueue.clear();
        if (byte0 == 3)
        {
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue got resync task").toString());
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue just before resycn image call").toString());
            printTaskQueue();
            reSyncImageFilesWithWd();
            return;
        }
        if (byte0 != 2 && byte0 != 1)
        {
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue just before no tasks found").toString());
            printTaskQueue();
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("getNextTaskFromQueue no task found nextTask=").append(byte0).toString());
            return;
        } else
        {
            doAmbientPoll(true);
            return;
        }
    }

    private void printTaskQueue()
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append("-------size=").append(mQueue.size()).toString());
        Object aobj[] = mQueue.toArray();
        for (int i = 0; i < aobj.length; i++)
        {
            AmbientTask ambienttask = (AmbientTask)aobj[i];
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("task id=").append(ambienttask.getTaskId()).toString());
        }

        Log.d("Ambient", (new StringBuilder()).append(TAG).append("printTaskQueue end -----------------------------").toString());
    }

    private int updateAmbientTaskQueue(int i)
    {
        Log.e("Ambient", (new StringBuilder()).append(TAG).append("updateAmbientTaskQueue task Id=").append(i).toString());
        Log.e("Ambient", (new StringBuilder()).append(TAG).append("updateAmbientTaskQueue beofre ").toString());
        printTaskQueue();
        if (getState() == AmbientState.IDLE_SATE)
        {
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("updateAmbientTaskQueue is in IdleState no need of queue").toString());
            return i;
        } else
        {
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("updateAmbientTaskQueue add taks to queue task:").append(i).toString());
            addAmbientTask(i);
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("updateAmbientTaskQueue after adding task ").toString());
            printTaskQueue();
            return -99;
        }
    }

    public void cancelPollingTimer()
    {
        if (pollingTimer != null)
        {
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("cancelPollingTimer").toString());
            pollingTimer.cancel();
            pollingTimer = null;
        }
    }

    public abstract void cleanLocalAmbientFiles();

    public abstract void currentCityDisabled();

    protected void deRegisterNetWrokChangeReceiver()
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Inside deRegisterNetWrokChangeReceiver isAlreadyDeRegistred:").append(isNetworkStateReciverActive).toString());
        if (isNetworkStateReciverActive)
            ConnectionFactory.getConnectionFactory().getContext().unregisterReceiver(networkConnectionStatusReceiver);
        isNetworkStateReciverActive = false;
        return;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        isNetworkStateReciverActive = false;
        return;
        Exception exception;
        exception;
        isNetworkStateReciverActive = false;
        throw exception;
    }

    public void deleteFiles(File file, ArrayList arraylist)
    {
        String as[] = file.list();
        if (as != null && as.length > 0)
        {
            for (int i = 0; i < as.length; i++)
            {
                Log.d("Ambient", (new StringBuilder()).append(TAG).append(" file: ").append(as[i]).toString());
                File file1 = new File((new StringBuilder()).append(file).append(File.separator).append(as[i]).toString());
                if (file1.isFile())
                {
                    if (!arraylist.contains(file1.getPath()))
                    {
                        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Deleting File: ").append(file1.getAbsolutePath()).toString());
                        file1.delete();
                    }
                    continue;
                }
                if (file1.isDirectory())
                    deleteFiles(file1, arraylist);
            }

        }
    }

    public abstract void doAmbientPoll(boolean flag);

    public abstract String getAutocompleteResponse(String s);

    public ArrayList getPreferenceAmbientInfoList()
    {
        return prefAmbientInfoList;
    }

    public int getState()
    {
        return mState.getState();
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public boolean isAmbientImageCreationSuccessful(IAmbientInfo iambientinfo, String s)
    {
        boolean flag1;
        if (s.equals("stock"))
        {
            boolean flag3 = iambientinfo instanceof StockAmbientInfo;
            flag1 = false;
            if (flag3)
                if (((StockAmbientInfo)iambientinfo).getSourceLocation() != null)
                    flag1 = true;
                else
                    flag1 = false;
        } else
        {
            boolean flag = s.equals("weather");
            flag1 = false;
            if (flag)
            {
                boolean flag2 = iambientinfo instanceof WeatherAmbientInfo;
                flag1 = false;
                if (flag2)
                {
                    WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
                    Log.d("Ambient", (new StringBuilder()).append(TAG).append(" isAmbientImageCreationSuccessful City name ").append(weatherambientinfo.getCityName()).append("END").toString());
                    Log.d("Ambient", (new StringBuilder()).append(TAG).append(" isAmbientImageCreationSuccessful Hour temp  ").append(weatherambientinfo.getHourTemp()).append("END").toString());
                    Log.d("Ambient", (new StringBuilder()).append(TAG).append(" isAmbientImageCreationSuccessfulMax temp  ").append(weatherambientinfo.getMaxTemp()).append("END").toString());
                    Log.d("Ambient", (new StringBuilder()).append(TAG).append(" isAmbientImageCreationSuccessful Min temp  ").append(weatherambientinfo.getMinTemp()).append("END").toString());
                    Log.d("Ambient", (new StringBuilder()).append(TAG).append(" isAmbientImageCreationSuccessful WeatherCondition  ").append(weatherambientinfo.getWeatherCondition()).append("END").toString());
                    if (weatherambientinfo.getSourceLocation() != null)
                        flag1 = true;
                    else
                        flag1 = false;
                }
            }
        }
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" isAmbientImageCreationSuccessful :").append(flag1).toString());
        return flag1;
    }

    public boolean isTimerPolling()
    {
        return isTimerPolling;
    }

    public abstract void onAmbientImageReSyncComplete(int i);

    public abstract void onAmbientImageSyncComplete(int i);

    public abstract void onAmbientInfoUpdated(int i, ArrayList arraylist);

    public abstract void onNetworkConnected();

    public abstract void parseAutocompleteResponse(String s, ArrayList arraylist, HashMap hashmap);

    public void processAmbientTask(int i)
    {
        Log.e("Ambient", (new StringBuilder()).append(TAG).append("---------processAmbientTask taskId=").append(i).toString());
        Log.e("Ambient", (new StringBuilder()).append(TAG).append("processAmbientTask").toString());
        printTaskQueue();
        int j = updateAmbientTaskQueue(i);
        Log.e("Ambient", (new StringBuilder()).append(TAG).append("processAmbientTask after queue update").toString());
        printTaskQueue();
        switch (j)
        {
        case -99: 
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("processAmbientTask  some other task is in progress this stored in queue state:").append(getState()).toString());
            if (mState.isResetState())
            {
                Log.e("Ambient", (new StringBuilder()).append(TAG).append(" Current state taking lot of time now resetting it to IDLE state.").toString());
                setState(AmbientState.IDLE_SATE);
                return;
            }
            break;

        case 3: // '\003'
            reSyncImageFilesWithWd();
            return;

        case 1: // '\001'
            doAmbientPoll(true);
            return;

        case 2: // '\002'
            doAmbientPoll(false);
            return;

        default:
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("!!! AmbientController-processAmbientTask invlid task id:").append(i).toString());
            break;
        }
    }

    public void pushTimeStampImage(final String ambientType)
    {
        Log.e("Ambient", (new StringBuilder()).append(TAG).append(" updateWeatherAppTimeStamp type:").append(ambientType).toString());
        (new Thread(new Runnable() {

            final AmbientController this$0;
            final String val$ambientType;

            public void run()
            {
                Context context = ConnectionFactory.getConnectionFactory().getContext();
                if (context == null) goto _L2; else goto _L1
_L1:
                AmbientNotificationDisplay ambientnotificationdisplay;
                android.graphics.Bitmap bitmap;
                ambientnotificationdisplay = new AmbientNotificationDisplay(context);
                bitmap = ambientnotificationdisplay.writeTimeStampOnBitmap(false, ambientType);
                if (bitmap == null) goto _L4; else goto _L3
_L3:
                byte abyte0[] = ambientnotificationdisplay.writeBitmapinIMGFormat(bitmap, true);
_L9:
                File file = AndroidUtils.getAmbientAppImageDirectory(ambientType);
                if (file == null) goto _L2; else goto _L5
_L5:
                File file1;
                file1 = new File((new StringBuilder()).append(file).append(File.separator).append("time_Stamp").append(".img").toString());
                Log.e("Ambient", (new StringBuilder()).append(TAG).append(" Source File Location for Time Stamp").append(file1.getAbsolutePath()).toString());
                file1.createNewFile();
                ambientnotificationdisplay.writeBytesToFile(abyte0, file1);
                String s;
                if ("stock".equals(ambientType))
                {
                    s = "/apps/stock/99.img";
                    break MISSING_BLOCK_LABEL_167;
                }
                  goto _L6
_L4:
                Log.e("Ambient", (new StringBuilder()).append(TAG).append(" Returning Bitmap is null File not written").toString());
                abyte0 = null;
                continue; /* Loop/switch isn't completed */
_L7:
                if (s != null)
                    try
                    {
                        syncFileToWd(file1.getAbsolutePath(), s);
                        return;
                    }
                    catch (Exception exception)
                    {
                        exception.printStackTrace();
                    }
                return;
_L6:
                boolean flag = "weather".equals(ambientType);
                s = null;
                if (flag)
                    s = "/apps/weather/99.img";
                if (true) goto _L7; else goto _L2
_L2:
                return;
                if (true) goto _L9; else goto _L8
_L8:
            }

            
            {
                this$0 = AmbientController.this;
                ambientType = s;
                super();
            }
        }
)).start();
    }

    public abstract void reSetController();

    public abstract void reSyncImageFilesWithWd();

    protected void registerNetWrokChangeReceiver()
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Inside registerNetWrokChangeReceiver isAlreadyRegistred:").append(isNetworkStateReciverActive).toString());
        if (!isNetworkStateReciverActive)
        {
            isNetworkStateReciverActive = true;
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            ConnectionFactory.getConnectionFactory().getContext().registerReceiver(networkConnectionStatusReceiver, intentfilter);
        }
    }

    public void removeFile(String s)
    {
        syncer.removeFile(1, s);
    }

    public void removeFilesFromWd(int i)
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" removeFilesFromWd count=").append(i).toString());
        if (i > 0 && PhubBluetoothDeviceBondInfo.getInstance().getWDState() == 3)
        {
            if (this instanceof WeatherController)
            {
                for (int k = 6; k > 6 - i; k--)
                {
                    Log.d("Ambient", (new StringBuilder()).append(TAG).append("removeFilesFromWd deleting fms entry: ").append("/ad/weather/").append(k).append(".img").toString());
                    String s3 = (new StringBuilder()).append("/apps/weather/").append(k).append(".img").toString();
                    syncer.removeFile(1, s3);
                }

            } else
            if (this instanceof StockController)
            {
                for (int j = 5; j > 5 - i; j--)
                {
                    String s = (new StringBuilder()).append("/apps/stock/").append(j).append(".img").toString();
                    String s1 = (new StringBuilder()).append("/ad/stock/").append(j).append("_A").append(".img").toString();
                    String s2 = (new StringBuilder()).append("/ad/stock/").append(j).append("_B").append(".img").toString();
                    Log.d("Ambient", (new StringBuilder()).append(TAG).append("removeFilesFromWd deleting Stock files:  ").append(s).append("\n").append(s1).append("\n").append(s2).toString());
                    syncer.removeFile(1, s);
                    syncer.removeFile(1, s1);
                    syncer.removeFile(1, s2);
                }

            } else
            {
                Log.e("Ambient", (new StringBuilder()).append(TAG).append("!!!AmbientController-removeFilesFromWd invlid controller type!!!").toString());
            }
            return;
        } else
        {
            Log.e("Ambient", (new StringBuilder()).append(TAG).append("removeFilesFromWd Disconnected or count=0").toString());
            return;
        }
    }

    public void removeFilesFromWd(ArrayList arraylist)
    {
        if (arraylist != null && arraylist.size() > 0)
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
            long l = Calendar.getInstance().getTimeInMillis();
            long l1 = sharedpreferences.getLong("stock_last_update_time", 0L);
            int i;
            if (l - sharedpreferences.getLong("weather_last_update_time", 0L) < 60000L || l - l1 < 60000L)
                try
                {
                    Thread.sleep(5000L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            for (i = 0; i < arraylist.size(); i++)
            {
                Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Removing File : ").append((String)arraylist.get(i)).toString());
                syncer.removeFile(1, (String)arraylist.get(i));
            }

        }
    }

    public abstract void removeTimeStampFromWD();

    public abstract void resetAmbientLastFetchTimeStamp();

    public void resetPollingTimer()
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" resetPollingTimer called ").append(new Date()).toString());
        if (pollingTimer != null)
        {
            pollingTimer.cancel();
            pollingTimer.purge();
            pollingTimer = null;
        }
        pollingTimer = new Timer();
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" resetStockTimer stockTimerIntervalInMilliSec").append(new Date()).toString());
        pollingTimer.schedule(new PollingTimerTask(this), 0xdbba0L, 0xdbba0L);
    }

    protected void resetPreferenceAmbientInfoList()
    {
        if (prefAmbientInfoList != null && !prefAmbientInfoList.isEmpty())
            prefAmbientInfoList.clear();
        prefAmbientInfoList = null;
    }

    public void setState(int i)
    {
        long l = Calendar.getInstance().getTimeInMillis();
        mState.setState(i, l);
        Log.d("Ambient", (new StringBuilder()).append(TAG).append("-setState:").append(i).toString());
        if (i == AmbientState.IDLE_SATE)
        {
            resetPreferenceAmbientInfoList();
            fileSyncReuestNumber = 0L;
            getNextTaskFromQueue();
        } else
        if (i == AmbientState.DATA_SYNC_COMPLETED)
        {
            cleanLocalAmbientFiles();
            return;
        }
    }

    public abstract void syncAmbientImages();

    public void syncFileToWd(String s, String s1)
    {
        syncer.syncFile(s, s1, -1);
    }

    public void syncFileToWd(String s, String s1, int i)
    {
        syncer.syncFile(s, s1, i);
    }

    public void syncImages(IAmbientInfo iambientinfo, String s)
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" AmbientController-SendStockImage").toString());
        syncer.pushAmbientImage(s, iambientinfo);
    }

    public boolean synchCurrentCityImage(Context context)
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Get Current City data").toString());
        CurrentCityProvider.getInstance(context).getCurrentCityName();
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("ambient__pref", 0).edit();
        editor.putBoolean("WeatherCurrentCityUpdate", true);
        editor.commit();
        return true;
    }

    public boolean updateSharedPreference(Context context, IAmbientInfo iambientinfo)
    {
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" updateSharedPreference").toString());
        if (context == null) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences;
        android.content.SharedPreferences.Editor editor;
        sharedpreferences = context.getSharedPreferences("ambient__pref", 0);
        editor = sharedpreferences.edit();
        if (!(iambientinfo instanceof StockAmbientInfo)) goto _L4; else goto _L3
_L3:
        ArrayList arraylist1;
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" updateSharedPreference STOCK").toString());
        arraylist1 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        int k = 0;
_L14:
        if (k >= arraylist1.size()) goto _L6; else goto _L5
_L5:
        StockAmbientInfo stockambientinfo = (StockAmbientInfo)arraylist1.get(k);
        if (stockambientinfo == null) goto _L8; else goto _L7
_L7:
        if (!stockambientinfo.getCompanySymbol().equals(((StockAmbientInfo)iambientinfo).getCompanySymbol())) goto _L8; else goto _L9
_L9:
        int l = k + 1;
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Image ").append(stockambientinfo.getCompanyName()).append(" Number").append(l).toString());
        String s1 = (new StringBuilder()).append("/ad/stock/").append(l).append("_A").append(".img").toString();
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" setDestinationLocation() 3: ").append(s1).toString());
        iambientinfo.setDestinationLocation(s1);
        String s2 = (new StringBuilder()).append("/ad/stock/").append(l).append("_B").append(".img").toString();
        ((StockAmbientInfo)iambientinfo).setDarkImageDestinationLocation(s2);
        iambientinfo.setAppImageDestinationLocation((new StringBuilder()).append("/apps/stock/").append(l).append(".img").toString());
        arraylist1.remove(k);
        arraylist1.add(k, iambientinfo);
_L6:
        editor.putString("StockSymbolsBackGround", ObjectSerializer.serialize(arraylist1));
        editor.commit();
        return true;
_L4:
        ArrayList arraylist;
        if (!(iambientinfo instanceof WeatherAmbientInfo))
            break MISSING_BLOCK_LABEL_762;
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" updateSharedPreference WEATHER").toString());
        arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
        int i = 0;
_L11:
        WeatherAmbientInfo weatherambientinfo;
        if (i >= arraylist.size())
            break MISSING_BLOCK_LABEL_723;
        weatherambientinfo = (WeatherAmbientInfo)arraylist.get(i);
        if (weatherambientinfo == null)
            break MISSING_BLOCK_LABEL_749;
        if (weatherambientinfo.getCityName() == null || !weatherambientinfo.getCityName().equals(((WeatherAmbientInfo)iambientinfo).getCityName()) || weatherambientinfo.getKey() == null || !weatherambientinfo.getKey().equals(((WeatherAmbientInfo)iambientinfo).getKey()))
            break MISSING_BLOCK_LABEL_749;
        int j = i + 2;
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" Image ").append(weatherambientinfo.getCityName()).append(" Number").append(j).toString());
        String s = (new StringBuilder()).append("/ad/weather/").append(j).append(".img").toString();
        Log.d("Ambient", (new StringBuilder()).append(TAG).append(" setDestinationLocation() 4: ").append(s).toString());
        iambientinfo.setDestinationLocation(s);
        iambientinfo.setAppImageDestinationLocation((new StringBuilder()).append("/apps/weather/").append(j).append(".img").toString());
        arraylist.remove(i);
        arraylist.add(i, iambientinfo);
        editor.putString("WeatherCitiesBackGround", ObjectSerializer.serialize(arraylist));
        editor.commit();
        return true;
        i++;
        if (true) goto _L11; else goto _L10
_L10:
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
_L12:
        return false;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        exception.printStackTrace();
        continue; /* Loop/switch isn't completed */
_L2:
        Log.e("Ambient", (new StringBuilder()).append(TAG).append(" Context is null").toString());
        if (true) goto _L12; else goto _L8
_L8:
        k++;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public String updateStockDestinationLocation(String s, int i)
    {
        String s1;
label0:
        {
            s1 = s;
            if (s != null)
            {
                if (!s.contains("_"))
                    break label0;
                s = s.replaceAll(s1.substring(1 + s.lastIndexOf("/"), s.lastIndexOf("_")), String.valueOf(i + 1));
            }
            return s;
        }
        return s.replaceAll(s1.substring(1 + s.lastIndexOf("/"), s.lastIndexOf(".")), String.valueOf(i + 1));
    }

    public void updateWeatherAppTimeStamp(Context context, SharedPreferences sharedpreferences)
    {
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_261;
        ArrayList arraylist;
        boolean flag;
        File file;
        File file1;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
            flag = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false);
            Log.e("Ambient", (new StringBuilder()).append(TAG).append(" updateWeatherAppTimeStamp").toString());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_92;
        if (arraylist.size() > 0)
        {
            pushTimeStampImage("weather");
            return;
        }
        if (flag)
            break MISSING_BLOCK_LABEL_254;
        file = AndroidUtils.getAmbientAppImageDirectory("weather");
        file1 = new File((new StringBuilder()).append(file).append(File.separator).append("time_Stamp").append(".img").toString());
        if (file1 == null)
            break MISSING_BLOCK_LABEL_261;
        if (file1.exists())
        {
            Log.d("Ambient", (new StringBuilder()).append(TAG).append(" deleting time stamp file").append(file1.getAbsolutePath()).toString());
            file1.delete();
            Log.d("Ambient", (new StringBuilder()).append(TAG).append(" removing time stamp file").append("/apps/weather/99.img").toString());
            syncer.removeFile(1, "/apps/weather/99.img");
            return;
        }
        break MISSING_BLOCK_LABEL_261;
        pushTimeStampImage("weather");
    }
}
