// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.*;
import android.content.res.Resources;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.AmbientController;
import com.qualcomm.toq.smartwatch.service.AmbientIntentService;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.*;
import java.net.*;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            AmbientDataFactory, AmbientImageCreator, AmbientState, StockAmbientInfo, 
//            AmbientData, StockDataParser

public class StockController extends AmbientController
{

    private static AmbientController inst;
    private AmbientData ambientData;
    private AmbientImageCreator imageCreator;

    public StockController()
    {
        Log.d("Ambient", "StockController");
        ambientData = AmbientDataFactory.getInstance().getAmbientData("stock");
        imageCreator = new AmbientImageCreator("stock");
        isTimerPolling = false;
        TAG = "StockController--";
    }

    private void ambientStockImageReSyncIntent()
    {
        Log.d("Ambient", "StockController-ambientStockImageReSyncIntent");
        setState(AmbientState.DATA_SYNC_IN_PROGRESS);
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        intent.putExtra("service_task", "stock_resync_images_to_wd");
        intent.putExtra("requstNumber", fileSyncReuestNumber);
        ToqApplication.getAppContext().startService(intent);
    }

    private void ambientStockImageSyncIntent()
    {
        Log.d("Ambient", "StockController-ambientStockImageSyncIntent");
        setState(AmbientState.DATA_SYNC_IN_PROGRESS);
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        intent.putExtra("service_task", "sync_stock_data_to_wd");
        intent.putExtra("requstNumber", fileSyncReuestNumber);
        ToqApplication.getAppContext().startService(intent);
    }

    private void ambientStockTaskIntent()
    {
        Log.d("Ambient", "StockController-ambientStockTaskIntent");
        setState(AmbientState.DATA_FETCH_INPROGRESS);
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        Log.d("Ambient", "StockController-ambientStockTaskIntent called");
        intent.putExtra("service_task", "stock_polling_task");
        ToqApplication.getAppContext().startService(intent);
    }

    public static AmbientController getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/StockController;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new StockController();
        com/qualcomm/toq/smartwatch/ambient/StockController;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/StockController;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean isAnyDataErrorForStockData(ArrayList arraylist)
    {
        boolean flag = false;
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        int i;
        i = arraylist.size();
        flag = false;
        if (i > 5) goto _L2; else goto _L3
_L3:
        int j = 0;
_L8:
        int k;
        k = arraylist.size();
        flag = false;
        if (j >= k) goto _L2; else goto _L4
_L4:
        StockAmbientInfo stockambientinfo;
        String s;
        stockambientinfo = (StockAmbientInfo)arraylist.get(j);
        s = stockambientinfo.getCompanyName();
        Log.d("Ambient", (new StringBuilder()).append("StockController-isAnyDataErrorForStockData stock ").append(s).append(" img type=").append(stockambientinfo.getPushImageType()).toString());
        if ("push_online_image".equals(stockambientinfo.getPushImageType())) goto _L6; else goto _L5
_L5:
        flag = true;
        Log.d("Ambient", (new StringBuilder()).append("StockController-isAnyDataErrorForStockData Need to query for the Stock ").append(s).toString());
_L2:
        return flag;
_L6:
        j++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void cleanLocalAmbientFiles()
    {
        int i;
        Log.d("Ambient", "StockController-cleanLocalAmbientFiles");
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        ArrayList arraylist1;
        File file;
        StockAmbientInfo stockambientinfo;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
            arraylist1 = new ArrayList();
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
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        i = 0;
_L7:
        if (i >= arraylist.size()) goto _L4; else goto _L3
_L3:
        stockambientinfo = (StockAmbientInfo)arraylist.get(i);
        if (stockambientinfo.getAppImageSourceLocation() != null)
            arraylist1.add(stockambientinfo.getAppImageSourceLocation());
        if (stockambientinfo.getDarkImageSourceLocation() != null)
            arraylist1.add(stockambientinfo.getDarkImageSourceLocation());
        if (stockambientinfo.getSourceLocation() != null)
            arraylist1.add(stockambientinfo.getSourceLocation());
          goto _L5
_L2:
        Log.d("Ambient", "StockController-cleanLocalAmbientFiles empty stock list delete all local  fiels.");
_L4:
        file = AndroidUtils.getAmbientDirectory("stock");
        Log.d("Ambient", "StockController-cleanLocalAmbientFiles Deleting stock files");
        if (file == null)
            break MISSING_BLOCK_LABEL_176;
        deleteFiles(file, arraylist1);
        return;
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void currentCityDisabled()
    {
        Log.e("Ambient", "!!!StockController-currentCityDisabled No current city for stock!!!");
    }

    public void doAmbientPoll(boolean flag)
    {
        SharedPreferences sharedpreferences;
        long l;
        long l1;
        Log.d("Ambient", (new StringBuilder()).append("StockController-doManualPoll isTimerPolling:").append(flag).toString());
        isTimerPolling = flag;
        Log.d("Ambient", (new StringBuilder()).append("StockController-doManualPoll state:").append(mState.getState()).toString());
        if (getState() != AmbientState.IDLE_SATE)
            setState(AmbientState.IDLE_SATE);
        updateStockCopyFile();
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        l = Calendar.getInstance().getTimeInMillis();
        l1 = sharedpreferences.getLong("stock_last_update_time", 0L);
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3)
            break MISSING_BLOCK_LABEL_491;
        StringBuilder stringbuilder = (new StringBuilder()).append("StockController-doManualPoll Current time : ");
        Date date = new Date(l);
        Log.d("Ambient", stringbuilder.append(date).toString());
        StringBuilder stringbuilder1 = (new StringBuilder()).append("StockController-doManualPoll last fetch time : ");
        Date date1 = new Date(l1);
        Log.d("Ambient", stringbuilder1.append(date1).toString());
        StringBuilder stringbuilder2 = (new StringBuilder()).append(" Stock controller Current time : ");
        Date date2 = new Date(l);
        StringBuilder stringbuilder3 = stringbuilder2.append(date2).append(" Stock last Fetch: ");
        Date date3 = new Date(l1);
        Log.printUsageLog("Ambient", stringbuilder3.append(date3).toString());
        if (l1 <= l)
            break MISSING_BLOCK_LABEL_326;
        Log.d("Ambient", "StockController-doManualPoll Last Fetch Greater than current time resetting it for Stock");
        Log.printUsageLog("AmbientController", "!!! Last Fetch Greater than current time resetting it for Stock!!!");
        android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).edit();
        editor.putLong("stock_last_update_time", 0L);
        editor.commit();
        resetPreferenceAmbientInfoList();
        prefAmbientInfoList = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        if (prefAmbientInfoList == null || prefAmbientInfoList.size() > 5)
            break MISSING_BLOCK_LABEL_474;
        if (flag)
            try
            {
                if (Utils.isETradeDown() && !isAnyDataErrorForStockData(prefAmbientInfoList))
                {
                    Log.d("Ambient", "!!!StockController-doManualPoll STOCK MARKET IS CLOSED and last fetch for Stock was successful. !!!");
                    Log.printUsageLog("StockController", "!!! STOCK MARKET IS CLOSED and last fetch for Stock was successful. !!!");
                    setState(AmbientState.IDLE_SATE);
                    return;
                }
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return;
            }
        ambientData.updateAmbientDataList(prefAmbientInfoList);
        ambientStockTaskIntent();
        if (!Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
        {
            Log.e("Ambient", "StockController-doAmbientPoll there is no data connection registring for network change listener");
            Log.printUsageLog("Ambient", "StockController-doAmbientPoll there is no data connection registring for network change listener");
            registerNetWrokChangeReceiver();
            return;
        }
        break MISSING_BLOCK_LABEL_560;
        Log.e("Ambient", "!!!StockController-doManualPoll Empty stock data !!!");
        Log.printUsageLog("Ambient", "!!!StockController-doManualPoll Empty stock data!!!");
        return;
        boolean flag1;
        flag1 = Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext());
        Log.e("Ambient", (new StringBuilder()).append("!!!StockController-doAmbientPoll WD not connected or isDataConnectionAvailable=:").append(flag1).toString());
        Log.printUsageLog("Ambient", (new StringBuilder()).append("!!StockController-doAmbientPoll WD not connected or isDataConnectionAvailable:").append(flag1).toString());
        if (flag1)
            break MISSING_BLOCK_LABEL_560;
        registerNetWrokChangeReceiver();
    }

    public AmbientData getAmbientData()
    {
        return ambientData;
    }

    public String getAutocompleteResponse(String s)
    {
        HttpURLConnection httpurlconnection;
        StringBuilder stringbuilder;
        String s1;
        httpurlconnection = null;
        stringbuilder = new StringBuilder();
        s1 = String.format(ToqApplication.getAppContext().getResources().getString(0x7f0a004e), new Object[] {
            s
        });
        Log.d("Ambient", (new StringBuilder()).append("StockListActivityStock Auto Complete URL: ").append(s1).toString());
        InputStreamReader inputstreamreader;
        char ac[];
        Log.i("Ambient", "StockListActivityautocomplete ---------");
        httpurlconnection = (HttpURLConnection)(new URL(s1)).openConnection();
        httpurlconnection.setRequestMethod("GET");
        httpurlconnection.addRequestProperty("ConsumerKey", "f9269f0dbe43320e8143305cd0afdcfa");
        inputstreamreader = new InputStreamReader(httpurlconnection.getInputStream());
        ac = new char[1024];
_L1:
        int i = inputstreamreader.read(ac);
        if (i == -1)
            break MISSING_BLOCK_LABEL_172;
        stringbuilder.append(ac, 0, i);
          goto _L1
        MalformedURLException malformedurlexception;
        malformedurlexception;
        Log.e("Ambient", "StockListActivityError processing Stock API URL", malformedurlexception);
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        return null;
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        return stringbuilder.toString();
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Log.e("Ambient", "StockListActivityNot able to retreive file through Stock API", filenotfoundexception);
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        return null;
        IOException ioexception;
        ioexception;
        Log.e("Ambient", "StockListActivityError connecting to Stock API", ioexception);
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        return null;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        return null;
        Exception exception;
        exception;
        if (httpurlconnection != null)
            httpurlconnection.disconnect();
        throw exception;
    }

    public AmbientImageCreator getImageCreator()
    {
        return imageCreator;
    }

    public void onAmbientImageReSyncComplete(int i)
    {
        Log.d("Ambient", (new StringBuilder()).append("StockController-onAmbientImageReSyncComplete error_code=").append(i).toString());
        if (getState() != AmbientState.DATA_SYNC_IN_PROGRESS)
        {
            Log.e("Ambient", "StockController-onAmbientImageReSyncComplete Ignore this is call back either state is not proper or request and response nubmer are different.");
            return;
        } else
        {
            setState(AmbientState.DATA_SYNC_COMPLETED);
            setState(AmbientState.IDLE_SATE);
            return;
        }
    }

    public void onAmbientImageSyncComplete(int i)
    {
        Log.d("Ambient", "StockController-onAmbientImageSyncComplete ");
        if (getState() != AmbientState.DATA_SYNC_IN_PROGRESS)
        {
            Log.e("Ambient", "StockController-onAmbientInfoUpdated Ignore this is call back either state is not proper or request and response nubmer are different.");
            return;
        }
        if (i != -2)
        {
            setState(AmbientState.DATA_SYNC_COMPLETED);
            setState(AmbientState.IDLE_SATE);
            return;
        } else
        {
            setState(AmbientState.DATA_SYNC_COMPLETED);
            setState(AmbientState.IDLE_SATE);
            Log.e("Ambient", "!!!StockController-onAmbientImageSyncComplete not able to construnct ambient info object.!!!");
            Log.printUsageLog("Ambient", "!!!StockController-onAmbientImageSyncComplete not able to construnct ambient info object.!!!");
            return;
        }
    }

    public void onAmbientInfoUpdated(int i, ArrayList arraylist)
    {
        Log.d("Ambient", (new StringBuilder()).append("StockController-onAmbientInfoUpdated error_code=").append(i).toString());
        if (getState() != AmbientState.DATA_FETCH_INPROGRESS)
        {
            Log.e("Ambient", "StockController-onAmbientInfoUpdated Ignore this is call back either state is not proper or request and response nubmer are different.");
            return;
        }
        if (i != -2)
        {
            setState(AmbientState.DATA_FETCH_COMPLETED);
            ambientData.updateAmbientDataList(arraylist);
            ambientStockImageSyncIntent();
            return;
        } else
        {
            setState(AmbientState.IDLE_SATE);
            Log.e("Ambient", "!!!StockController-onAmbientInfoUpdated not able to construnct ambient info object.!!!");
            Log.printUsageLog("Ambient", "!!!StockController-onAmbientInfoUpdated not able to construnct ambient info object.!!!");
            return;
        }
    }

    public void onNetworkConnected()
    {
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() == 3)
        {
            long l = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getLong("stock_last_update_time", 0L);
            long l1 = Calendar.getInstance().getTimeInMillis();
            if (l > 0L && l1 - l > 0xdbba0L && !Utils.isETradeDown())
            {
                Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive Network state changed to connected state, do manual pool").toString());
                Log.printUsageLog("AmbientController", "onReceive Network connected, Do manual pool");
                processAmbientTask(2);
            }
        }
    }

    public void parseAutocompleteResponse(String s, ArrayList arraylist, HashMap hashmap)
    {
        (new StockDataParser()).parseAutocompleteResponse(s, arraylist);
    }

    public void reSetController()
    {
        if (inst != null)
        {
            inst.cancelPollingTimer();
            inst = null;
        }
    }

    public void reSyncImageFilesWithWd()
    {
        setState(AmbientState.DATA_FETCH_INPROGRESS);
        setState(AmbientState.DATA_FETCH_COMPLETED);
        updateStockCopyFile();
        try
        {
            ambientStockImageReSyncIntent();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        Log.d("Ambient", "!!!WeatherController-reSyncImageFilesWithWd Exception in Ambient BackGround Sync");
        setState(AmbientState.IDLE_SATE);
    }

    public void removeTimeStampFromWD()
    {
        Log.d("Ambient", "StockController-removeTimeStampFromWD");
        File file = AndroidUtils.getAmbientAppImageDirectory("stock");
        if ("/apps/stock/99.img" != null && file != null)
        {
            File file1 = new File((new StringBuilder()).append(file).append(File.separator).append("time_Stamp").append(".img").toString());
            if ("/apps/stock/99.img" != null)
            {
                Log.d("Ambient", (new StringBuilder()).append("StockController-removeTimeStampFromWD removing time stamp file").append("/apps/stock/99.img").toString());
                removeFile("/apps/stock/99.img");
            }
            if (file1 != null && file1.exists())
            {
                file1.delete();
                Log.d("Ambient", (new StringBuilder()).append("StockController-removeTimeStampFromWD deleting time stamp fire").append(file1.getAbsolutePath()).toString());
            }
        }
    }

    public void resetAmbientLastFetchTimeStamp()
    {
        android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).edit();
        editor.putLong("stock_last_update_time", 0L);
        editor.commit();
    }

    public void syncAmbientImages()
    {
        SharedPreferences sharedpreferences;
        Log.d("Ambient", (new StringBuilder()).append("StockController-syncAmbientImages state").append(getState()).toString());
        updateStockCopyFile();
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3)
            break MISSING_BLOCK_LABEL_148;
        resetPreferenceAmbientInfoList();
        prefAmbientInfoList = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        if (prefAmbientInfoList != null && prefAmbientInfoList.size() <= 5)
        {
            setState(AmbientState.DATA_FETCH_COMPLETED);
            ambientData.updateAmbientDataList(prefAmbientInfoList);
            ambientStockImageSyncIntent();
            return;
        }
        try
        {
            Log.e("Ambient", "!!!StockController-syncAmbientImages Empty stock data!!!");
            Log.printUsageLog("Ambient", "!!!StockController-syncAmbientImages Empty stock data!!!");
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return;
        Log.e("Ambient", "!!!StockController-syncAmbientImages WD not connected!!!");
        Log.printUsageLog("Ambient", "!!!StockController-syncAmbientImages WD not connected!!!");
        return;
    }

    public void updateStockCopyFile()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        ArrayList arraylist1;
        arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        arraylist1 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbols", ObjectSerializer.serialize(new ArrayList())));
        int i = 0;
_L12:
        if (i >= arraylist1.size()) goto _L2; else goto _L1
_L1:
        StockAmbientInfo stockambientinfo = (StockAmbientInfo)arraylist1.get(i);
        int j = 0;
_L10:
        if (j >= arraylist.size()) goto _L4; else goto _L3
_L3:
        StockAmbientInfo stockambientinfo1 = (StockAmbientInfo)arraylist.get(j);
        if (!stockambientinfo.getCompanySymbol().equals(stockambientinfo1.getCompanySymbol())) goto _L6; else goto _L5
_L5:
        String s;
        String s1;
        String s2;
        Log.d("Ambient", (new StringBuilder()).append("StockController-updateStockCopyFile Location: ").append(stockambientinfo1.getCompanySymbol()).append("has  ").append(stockambientinfo1.getAppImageDestinationLocation()).append("and source: ").append(stockambientinfo1.getSourceLocation()).toString());
        s = stockambientinfo1.getDestinationLocation();
        s1 = stockambientinfo1.getAppImageDestinationLocation();
        s2 = stockambientinfo1.getDarkImageDestinationLocation();
        if (s == null || s1 == null) goto _L6; else goto _L7
_L7:
        String s3 = updateStockDestinationLocation(s, i);
        String s4 = updateStockDestinationLocation(s1, i);
        String s5 = updateStockDestinationLocation(s2, i);
        Log.d("Ambient", (new StringBuilder()).append("StockController-updateStockCopyFile Destination location is ").append(s3).toString());
        stockambientinfo1.setDestinationLocation(s3);
        stockambientinfo1.setDarkImageDestinationLocation(s5);
        stockambientinfo1.setAppImageDestinationLocation(s4);
        arraylist1.remove(i);
        arraylist1.add(i, stockambientinfo1);
          goto _L4
_L2:
        android.content.SharedPreferences.Editor editor;
        IOException ioexception1;
        try
        {
            editor = sharedpreferences.edit();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        editor.putString("StockSymbolsBackGround", ObjectSerializer.serialize(arraylist1));
_L8:
        editor.commit();
        ArrayList arraylist2 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsBackGround", ObjectSerializer.serialize(new ArrayList())));
        Log.d("Ambient", (new StringBuilder()).append("StockController-updateStockCopyFile before delete count=").append(arraylist2.size()).toString());
        if (5 - arraylist2.size() > 0)
        {
            if (arraylist2.size() == 0)
                removeTimeStampFromWD();
            removeFilesFromWd(5 - arraylist2.size());
            return;
        }
        break; /* Loop/switch isn't completed */
        ioexception1;
        ioexception1.printStackTrace();
          goto _L8
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
        return;
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L6:
        j++;
        if (true) goto _L10; else goto _L9
_L9:
        return;
        if (true) goto _L12; else goto _L11
_L11:
    }
}
