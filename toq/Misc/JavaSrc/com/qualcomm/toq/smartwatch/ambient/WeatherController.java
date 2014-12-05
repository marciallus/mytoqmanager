// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.AmbientController;
import com.qualcomm.toq.smartwatch.service.AmbientIntentService;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.*;
import java.net.URLEncoder;
import java.util.*;
import java.util.concurrent.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            AmbientDataFactory, AmbientImageCreator, AmbientState, WeatherAmbientInfo, 
//            CurrentCityWeatherAmbientInfo, AmbientData, WeatherDataParser

public class WeatherController extends AmbientController
{

    private static AmbientController inst;
    private AmbientData ambientData;
    private WeatherAmbientInfo currentCityInfo;
    private AmbientImageCreator imageCreator;

    private WeatherController()
    {
        Log.d("Ambient", "WeatherController");
        ambientData = AmbientDataFactory.getInstance().getAmbientData("weather");
        imageCreator = new AmbientImageCreator("weather");
        TAG = "WeatherController--";
    }

    private void ambientWeatherImageReSyncIntent()
    {
        Log.d("Ambient", "WeatherController-ambientWeatherImageReSyncIntent");
        setState(AmbientState.DATA_SYNC_IN_PROGRESS);
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        Log.d("Ambient", "ambientWeatherImageReSyncIntent called");
        intent.putExtra("service_task", "weather_resync_images_to_wd");
        intent.putExtra("requstNumber", 0L);
        ToqApplication.getAppContext().startService(intent);
    }

    private void ambientWeatherImageSyncIntent()
    {
        Log.d("Ambient", "WeatherController-ambientWeatherImageSyncIntent");
        setState(AmbientState.DATA_SYNC_IN_PROGRESS);
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        Log.d("Ambient", "ambientWeatherImageSyncIntent called");
        intent.putExtra("service_task", "sync_weather_data_to_wd");
        intent.putExtra("requstNumber", fileSyncReuestNumber);
        ToqApplication.getAppContext().startService(intent);
    }

    private void ambientWeatherTaskIntent()
    {
        setState(AmbientState.DATA_FETCH_INPROGRESS);
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        Log.d("Ambient", "WeatherController-ambientWeatherTaskIntent");
        intent.putExtra("service_task", "weather_polling_task");
        ToqApplication.getAppContext().startService(intent);
    }

    private void currentCityFetchDataIntent(String s, String s1, String s2)
    {
        Log.d("Ambient", "WeatherController-currentCityFetchDataIntent");
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        Log.d("Ambient", "currentCityFetchDataIntent called");
        intent.putExtra("service_task", "currentcity_weather_polling_task");
        intent.putExtra("requstNumber", fileSyncReuestNumber);
        intent.putExtra("city_key", s);
        intent.putExtra("city_name", s1);
        intent.putExtra("city_area", s2);
        ToqApplication.getAppContext().startService(intent);
    }

    public static AmbientController getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/ambient/WeatherController;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new WeatherController();
        com/qualcomm/toq/smartwatch/ambient/WeatherController;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/ambient/WeatherController;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void startClocksTask()
    {
        Log.d("Ambient", "WeatherListActivity startClocksTask");
        String s = ClockUtils.getClockUtils().getClockInfo("World Time", "packageName");
        Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        intent.putExtra("service_task", "generate_world_clock_file");
        intent.putExtra("clock_type", "World Time");
        intent.putExtra("clock_package_name", s);
        ToqApplication.getAppContext().startService(intent);
        String s1 = ClockUtils.getClockUtils().getClockInfo("Degrees", "packageName");
        Intent intent1 = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/service/AmbientIntentService);
        intent1.putExtra("service_task", "generate_world_clock_file");
        intent1.putExtra("clock_type", "Degrees");
        intent.putExtra("clock_package_name", s1);
        ToqApplication.getAppContext().startService(intent1);
        Log.d("Ambient", "WeatherListActivity AmbientIntentService intnet called for world clock");
    }

    private String updateWeatherDestinationLocation(String s, int i)
    {
        String s1 = s;
        if (s != null)
            s = s.replaceAll(s1.substring(1 + s.lastIndexOf("/"), s.lastIndexOf(".")), String.valueOf(i + 2));
        return s;
    }

    public void cleanLocalAmbientFiles()
    {
        int i;
        Log.d("Ambient", "WeatherController-cleanLocalAmbientFiles");
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        ArrayList arraylist1;
        File file;
        WeatherAmbientInfo weatherambientinfo;
        WeatherAmbientInfo weatherambientinfo1;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
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
_L6:
        if (i >= arraylist.size()) goto _L2; else goto _L3
_L3:
        weatherambientinfo1 = (WeatherAmbientInfo)arraylist.get(i);
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-cleanLocalAmbientFiles city=").append(weatherambientinfo1.getCityName()).append(" key=").append(weatherambientinfo1.getKey()).toString());
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-cleanLocalAmbientFiles src loc city=").append(weatherambientinfo1.getAppImageSourceLocation()).toString());
        if (weatherambientinfo1.getAppImageSourceLocation() != null)
            arraylist1.add(weatherambientinfo1.getAppImageSourceLocation());
        if (weatherambientinfo1.getSourceLocation() != null)
            arraylist1.add(weatherambientinfo1.getSourceLocation());
          goto _L4
_L2:
        if (!sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false))
            break MISSING_BLOCK_LABEL_300;
        weatherambientinfo = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
        if (weatherambientinfo == null)
            break MISSING_BLOCK_LABEL_300;
        if (weatherambientinfo.getAppImageSourceLocation() != null)
            arraylist1.add(weatherambientinfo.getAppImageSourceLocation());
        if (weatherambientinfo.getSourceLocation() != null)
            arraylist1.add(weatherambientinfo.getSourceLocation());
        if (((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation() != null)
            arraylist1.add(((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation());
        file = AndroidUtils.getAmbientDirectory("weather");
        Log.d("Ambient", "weatherController-cleanLocalAmbientFiles Deleting Weather files");
        if (file == null)
            break MISSING_BLOCK_LABEL_328;
        deleteFiles(file, arraylist1);
        return;
_L4:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void currentCityDisabled()
    {
        Log.d("Ambient", "WeatherController-currentCityDisabled");
        startClocksTask();
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        WeatherAmbientInfo weatherambientinfo;
        File file;
        File file1;
        android.content.SharedPreferences.Editor editor;
        try
        {
            if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3)
                break MISSING_BLOCK_LABEL_380;
            weatherambientinfo = (WeatherAmbientInfo)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCurrentCity", ObjectSerializer.serialize(new CurrentCityWeatherAmbientInfo())));
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
        catch (Exception exception)
        {
            Log.d("Ambient", (new StringBuilder()).append("WeatherController-currentCityDisabled exception:").append(exception.toString()).toString());
            return;
        }
        if (weatherambientinfo == null)
            break MISSING_BLOCK_LABEL_380;
        if (weatherambientinfo.getCityName() != null && (weatherambientinfo instanceof CurrentCityWeatherAmbientInfo))
        {
            if (weatherambientinfo.getAppImageSourceLocation() != null)
            {
                file = new File(weatherambientinfo.getAppImageSourceLocation());
                if (file.exists())
                    file.delete();
            }
            if (((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation() != null)
            {
                file1 = new File(((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipSourceLocation());
                if (file1.exists())
                    file1.delete();
            }
            if (weatherambientinfo.getDestinationLocation() != null && weatherambientinfo.getAppImageDestinationLocation() != null && ((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipDestinationLocation() != null)
            {
                Log.d("Ambient", (new StringBuilder()).append("WeatherController-currentCityDisabled Removing File  ").append(weatherambientinfo.getDestinationLocation()).toString());
                Log.d("Ambient", (new StringBuilder()).append("WeatherController-currentCityDisabled Removing File  ").append(weatherambientinfo.getAppImageDestinationLocation()).toString());
                removeFile(weatherambientinfo.getAppImageDestinationLocation());
                removeFile(((CurrentCityWeatherAmbientInfo)weatherambientinfo).getClockZipDestinationLocation());
            }
            weatherambientinfo.setCityName(null);
            weatherambientinfo.setKey(null);
            weatherambientinfo.setMaxTemp(0);
            weatherambientinfo.setMinTemp(0);
            weatherambientinfo.setHourTemp(0);
            weatherambientinfo.setWeatherCondition(null);
            weatherambientinfo.setPushImageType(null);
            weatherambientinfo.setAppImageDestinationLocation(null);
            weatherambientinfo.setAppImageSourceLocation(null);
            weatherambientinfo.setIconNumber(-1);
            editor = sharedpreferences.edit();
            editor.putString("WeatherCurrentCity", ObjectSerializer.serialize(weatherambientinfo));
            editor.putBoolean("WeatherCurrentCityUpdate", false);
            editor.putLong("current_city_last_update_time", 0L);
            editor.commit();
        }
    }

    public void doAmbientPoll(boolean flag)
    {
        SharedPreferences sharedpreferences;
        long l;
        long l1;
        long l2;
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-doAmbientPoll isTimerPoll:").append(flag).toString());
        isTimerPolling = flag;
        if (getState() != AmbientState.IDLE_SATE)
        {
            resetPreferenceAmbientInfoList();
            fileSyncReuestNumber = 0L;
            mState.setState(AmbientState.IDLE_SATE, AmbientState.IDLE_SATE);
        }
        updateWeatherCopyFile();
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        l = Calendar.getInstance().getTimeInMillis();
        l1 = sharedpreferences.getLong("weather_last_update_time", 0L);
        l2 = sharedpreferences.getLong("current_city_last_update_time", 0L);
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder = (new StringBuilder()).append("WeatherController-doAmbientPoll Current time : ");
        Date date = new Date(l);
        StringBuilder stringbuilder1 = stringbuilder.append(date).append(" Weather last Fetch: ");
        Date date1 = new Date(l1);
        Log.d("Ambient", stringbuilder1.append(date1).toString());
        StringBuilder stringbuilder2 = (new StringBuilder()).append("WeatherController-doAmbientPoll  Current time : ");
        Date date2 = new Date(l);
        StringBuilder stringbuilder3 = stringbuilder2.append(date2).append("  Weather last Fetch: ");
        Date date3 = new Date(l1);
        Log.printUsageLog("AmbientController", stringbuilder3.append(date3).toString());
        if (l1 > l || l2 > l)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            Log.d("Ambient", "WeatherController-doAmbientPoll Last Fetch Greater than current time resetting it for Weather");
            Log.printUsageLog("AmbientController", "WeatherController-doAmbientPoll Last Fetch Greater than current time resetting it for Weather!!!");
            editor.putLong("weather_last_update_time", 0L);
            editor.putLong("current_city_last_update_time", 0L);
            editor.commit();
        }
        boolean flag1 = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false);
        long l3 = sharedpreferences.getLong("weather_timer_interval", 0x2932e0L);
        long l4 = sharedpreferences.getLong("cc_weather_timer_interval", 0x2932e0L);
        Log.d("Ambient", (new StringBuilder()).append("isCurrentCityUpdateEnabled =").append(flag1).toString());
        Log.d("Ambient", (new StringBuilder()).append("currentTimeMilli =").append(l).append(" lastFetchCurrentCity=").append(l2).append(" ccPollingInterval=").append(l4).toString());
        StringBuilder stringbuilder4 = (new StringBuilder()).append(" cc polling check=");
        boolean flag2;
        IOException ioexception;
        ClassNotFoundException classnotfoundexception;
        ArrayList arraylist;
        boolean flag3;
        if (flag1 && l - l2 > l4)
            flag2 = true;
        else
            flag2 = false;
        Log.d("Ambient", stringbuilder4.append(flag2).toString());
        arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
        if (!isTimerPolling) goto _L4; else goto _L3
_L3:
        if (l - l1 <= l3 - 0x1d4c0L) goto _L6; else goto _L5
_L5:
        if (arraylist.size() > 0) goto _L7; else goto _L6
_L4:
        if (isTimerPolling) goto _L8; else goto _L7
_L7:
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-doAmbientPoll -Weather polling happening at : ").append(new Date()).toString());
        Log.printUsageLog("AmbientController", (new StringBuilder()).append("WeatherController-doAmbientPoll polling happening at : ").append(new Date()).toString());
        resetPreferenceAmbientInfoList();
        prefAmbientInfoList = arraylist;
        ambientData.updateAmbientDataList(prefAmbientInfoList);
        ambientWeatherTaskIntent();
        flag3 = Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext());
        Log.e("Ambient", "StockController-doAmbientPoll there is no data connection registring for network change listener");
        Log.printUsageLog("Ambient", "StockController-doAmbientPoll there is no data connection registring for network change listener");
          goto _L9
_L8:
        Log.d("Ambient", "WeatherController-doAmbientPoll Weather polling not happening now waiting");
        return;
_L9:
        if (!flag3)
            try
            {
                registerNetWrokChangeReceiver();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        return;
_L6:
        if (flag1 && l - l2 > l4) goto _L7; else goto _L4
_L2:
    }

    public AmbientData getAmbientData()
    {
        return ambientData;
    }

    public String getAutocompleteResponse(String s)
    {
        ExecutorService executorservice;
        String s3;
        String s1;
        String s2;
        String s4;
        if (AndroidUtils.isStringContainsChineseCharacters(s))
            s1 = ToqApplication.getAppContext().getString(0x7f0a004d);
        else
            s1 = ToqApplication.getAppContext().getString(0x7f0a004c);
        try
        {
            s4 = String.format(s1, new Object[] {
                URLEncoder.encode(s, "UTF-8"), "9fc4b35acecc407e95143c14579a2d84"
            });
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            unsupportedencodingexception.printStackTrace();
            s2 = null;
            continue; /* Loop/switch isn't completed */
        }
        s2 = s4;
_L4:
        executorservice = Executors.newSingleThreadExecutor();
        s3 = (String)executorservice.submit(new DataServer(s2)).get();
        executorservice.shutdown();
_L2:
        return s3;
        InterruptedException interruptedexception;
        interruptedexception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity InterruptedException in setAmbientDisplaysWithInfo ").append(interruptedexception.toString()).toString());
        executorservice.shutdown();
        return null;
        ExecutionException executionexception;
        executionexception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity ExecutionException in setAmbientDisplaysWithInfo ").append(executionexception.toString()).toString());
        executorservice.shutdown();
        return null;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        executorservice.shutdown();
        s3 = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        executorservice.shutdown();
        throw exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public WeatherAmbientInfo getCurrentCityInfoObj()
    {
        return currentCityInfo;
    }

    public AmbientImageCreator getImageCreator()
    {
        return imageCreator;
    }

    public void onAmbientCurrentCitySyncCompleted(int i)
    {
        Log.d("Ambient", "WeatherController-onAmbientCurrentCitySyncComplete");
        if (!ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getBoolean("WeatherCurrentCityUpdate", true))
            currentCityDisabled();
        startClocksTask();
        setState(AmbientState.DATA_SYNC_COMPLETED);
        setState(AmbientState.IDLE_SATE);
    }

    public void onAmbientImageReSyncComplete(int i)
    {
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-onAmbientImageReSyncComplete error_code=").append(i).toString());
        boolean flag = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getBoolean("WeatherCurrentCityUpdate", false);
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-onAmbientImageReSyncComplete  isCurrentCityUpdateEnabled=").append(flag).toString());
        if (!flag)
            currentCityDisabled();
        Log.d("Ambient", "WeatherController-onAmbientImageReSyncComplete  About to start timer sync for the world clock");
        startClocksTask();
        setState(AmbientState.DATA_SYNC_COMPLETED);
        setState(AmbientState.IDLE_SATE);
    }

    public void onAmbientImageSyncComplete(int i)
    {
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-onAmbientImageSyncComplete error_code=").append(i).toString());
        if (getState() != AmbientState.DATA_SYNC_IN_PROGRESS)
        {
            Log.e("Ambient", "WeatherController-onAmbientImageSyncComplete Ignore this is call back either state is not proper or request and response nubmer are different.");
            return;
        }
        boolean flag = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).getBoolean("WeatherCurrentCityUpdate", false);
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-onAmbientImageSyncComplete  isCurrentCityUpdateEnabled=").append(flag).toString());
        if (flag)
        {
            synchCurrentCityImage(ToqApplication.getAppContext());
            return;
        } else
        {
            Log.d("Ambient", "WeatherController-onAmbientImageSyncComplete  About to start timer sync for the world clock");
            startClocksTask();
            setState(AmbientState.DATA_SYNC_COMPLETED);
            setState(AmbientState.IDLE_SATE);
            return;
        }
    }

    public void onAmbientInfoUpdated(int i, ArrayList arraylist)
    {
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-onAmbientInfoUpdated error_code=").append(i).toString());
        if (getState() != AmbientState.DATA_FETCH_INPROGRESS)
        {
            Log.e("Ambient", "WeatherController-onAmbientInfoUpdated Ignore this is call back either state is not proper or request and response nubmer are different.");
            return;
        } else
        {
            setState(AmbientState.DATA_FETCH_COMPLETED);
            ambientData.updateAmbientDataList(arraylist);
            ambientWeatherImageSyncIntent();
            return;
        }
    }

    public void onCurrencityNameReceived(String s, String s1, String s2)
    {
        Log.d("Ambient", "WeatherController-onCurrencityNameReceived");
        Log.d("Ambient", (new StringBuilder()).append("city=").append(s1).append(" AdminAreay=").append(s2).append(" Key=").append(s).toString());
        currentCityFetchDataIntent(s, s1, s2);
    }

    public void onNetworkConnected()
    {
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() == 3)
        {
            long l = Calendar.getInstance().getTimeInMillis();
            SharedPreferences sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("ambient__pref", 0);
            long l1 = sharedpreferences.getLong("weather_last_update_time", 0L);
            long l2 = sharedpreferences.getLong("current_city_last_update_time", 0L);
            long l3 = sharedpreferences.getLong("weather_timer_interval", 0x2932e0L);
            long l4 = sharedpreferences.getLong("cc_weather_timer_interval", 0x2932e0L);
            boolean flag = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false);
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive (lastFetchCurrentCity)=").append(l2).toString());
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive (currentTimeMilli)=").append(l).toString());
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive (lastFetchWeather)=").append(l1).toString());
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive (currentTimeMilli - lastFetchWeather)=").append(l - l1).toString());
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive (currentTimeMilli - lastFetchCurrentCity)=").append(l - l2).toString());
            if ((l1 <= 0L || l - l1 <= l3) && (!flag || l - l2 <= l4 || l2 <= 0L))
            {
                Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive Network connected but weather IDLE threshold value not reached.").toString());
                return;
            } else
            {
                Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive Network state changed to connected state, do manual pool").toString());
                Log.printUsageLog("AmbientController", "onReceive Network connected, Do manual pool");
                processAmbientTask(2);
                return;
            }
        } else
        {
            Log.d("Ambient", (new StringBuilder()).append(TAG).append("onReceive network chaqnge listener onReceive WD is not connected ").toString());
            return;
        }
    }

    public void parseAutocompleteResponse(String s, ArrayList arraylist, HashMap hashmap)
    {
        (new WeatherDataParser()).parseAutocompleteResponse(s, arraylist, hashmap);
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
        updateWeatherCopyFile();
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        try
        {
            resetPreferenceAmbientInfoList();
            prefAmbientInfoList = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
            ambientData.updateAmbientDataList(prefAmbientInfoList);
            ambientWeatherImageReSyncIntent();
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
        Log.d("Ambient", "weatherController-removeTimeStampFromWD");
        File file = AndroidUtils.getAmbientAppImageDirectory("weather");
        if ("/apps/weather/99.img" != null && file != null)
        {
            File file1 = new File((new StringBuilder()).append(file).append(File.separator).append("time_Stamp").append(".img").toString());
            if ("/apps/weather/99.img" != null)
            {
                Log.d("Ambient", (new StringBuilder()).append("weatherController-removeTimeStampFromWD removing time stamp file").append("/apps/weather/99.img").toString());
                removeFile("/apps/weather/99.img");
            }
            if (file1 != null && file1.exists())
            {
                file1.delete();
                Log.d("Ambient", (new StringBuilder()).append("weatherController-removeTimeStampFromWD deleting time stamp fire").append(file1.getAbsolutePath()).toString());
            }
        }
    }

    public void resetAmbientLastFetchTimeStamp()
    {
        android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0).edit();
        editor.putLong("weather_last_update_time", 0L);
        editor.putLong("current_city_last_update_time", 0L);
        editor.commit();
    }

    public void sendCurrentCityWeatherImage(WeatherAmbientInfo weatherambientinfo, boolean flag)
        throws IOException
    {
        if (weatherambientinfo != null)
        {
            Log.d("Ambient", (new StringBuilder()).append("WeatherController-sendCurrentCityWeatherImage Image created successfully for ").append(weatherambientinfo.getCityName()).toString());
            Log.d("Ambient", (new StringBuilder()).append("WeatherController-sendCurrentCityWeatherImage setDestinationLocation() 2: ").append("/ad/weather/1.img").toString());
            weatherambientinfo.setDestinationLocation("/ad/weather/1.img");
            weatherambientinfo.setAppImageDestinationLocation("/apps/weather/1.img");
            Log.d("Ambient", "WeatherController-sendCurrentCityWeatherImage Setting Destination location for the Clock images");
            ((CurrentCityWeatherAmbientInfo)weatherambientinfo).setClockZipDestinationLocation("/res/apps/ClockThree.zip");
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("WeatherCurrentCity", ObjectSerializer.serialize(weatherambientinfo));
            editor.commit();
            syncImages(weatherambientinfo, "weather");
            Log.d("Ambient", "AmbientIntentService-sendCurrentCityWeatherImage Pushing Timestamp Image to WD for Weather");
            if (flag)
                updateWeatherAppTimeStamp(ToqApplication.getAppContext(), sharedpreferences);
            return;
        } else
        {
            Log.d("Ambient", "!!! WeatherController-sendCurrentCityWeatherImage ambientInfo = NULL !!!");
            return;
        }
    }

    public void syncAmbientImages()
    {
        Log.d("Ambient", "WeatherController-syncAmbientImages");
        ambientWeatherImageSyncIntent();
    }

    public void updateLastFetchWeather(SharedPreferences sharedpreferences, long l)
    {
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putLong("weather_last_update_time", l);
        editor.commit();
    }

    public void updateWeatherCopyFile()
    {
        SharedPreferences sharedpreferences;
        Log.d("Ambient", "WeatherController-updateWeatherCopyFile");
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        ArrayList arraylist1;
        arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
        arraylist1 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
        int i = 0;
_L12:
        if (i >= arraylist1.size()) goto _L2; else goto _L1
_L1:
        WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)arraylist1.get(i);
        int j = 0;
_L13:
        if (j >= arraylist.size()) goto _L4; else goto _L3
_L3:
        WeatherAmbientInfo weatherambientinfo1;
        weatherambientinfo1 = (WeatherAmbientInfo)arraylist.get(j);
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-updateWeatherCopy city Name =").append(weatherambientinfo1.getCityName()).append(" copy cityName=").append(weatherambientinfo.getCityName()).append(" i=").append(i).append(" j=").append(j).toString());
        if (weatherambientinfo1.getKey() == null || weatherambientinfo.getKey() == null || !weatherambientinfo1.getKey().equals(weatherambientinfo.getKey())) goto _L6; else goto _L5
_L5:
        if (weatherambientinfo1.getStateName() == null || "--".equals(weatherambientinfo1.getStateName()))
        {
            weatherambientinfo1.setStateName(weatherambientinfo.getStateName());
            if (weatherambientinfo.getCityName() != null)
                weatherambientinfo1.setCityName(weatherambientinfo.getCityName().split(",")[0]);
        }
        if (weatherambientinfo1.getCountryName() == null || "--".equals(weatherambientinfo1.getCountryName()))
            weatherambientinfo1.setCountryName(weatherambientinfo.getCountryName());
        Log.d("Ambient", (new StringBuilder()).append("WeatherController- destination Location: ").append(weatherambientinfo1.getCityName()).append(",").append(weatherambientinfo1.getStateName()).append("has  ").append(weatherambientinfo1.getAppImageDestinationLocation()).append("and source: ").append(weatherambientinfo1.getSourceLocation()).toString());
        if (weatherambientinfo1.getAppImageDestinationLocation() == null || weatherambientinfo1.getDestinationLocation() == null) goto _L8; else goto _L7
_L7:
        String s = weatherambientinfo1.getAppImageDestinationLocation();
        String s1 = weatherambientinfo1.getDestinationLocation();
        String s2 = updateWeatherDestinationLocation(s, i);
        String s3 = updateWeatherDestinationLocation(s1, i);
        weatherambientinfo1.setAppImageDestinationLocation(s2);
        weatherambientinfo1.setDestinationLocation(s3);
        Log.d("Ambient", (new StringBuilder()).append("WeatherController- updated destination location: ").append(s2).append(" cityName=").append(weatherambientinfo1.getCityName()).toString());
        arraylist1.remove(i);
        arraylist1.add(i, weatherambientinfo1);
          goto _L4
_L8:
        Log.e("Ambient", "WeatherController-updateWeatherCopyFile destination location is NULL");
        break MISSING_BLOCK_LABEL_745;
_L6:
        IOException ioexception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherController-updateWeatherCopyFile not adding this city actualInfo.getKey():").append(weatherambientinfo1.getKey()).append(" copyInfo.getKey():").append(weatherambientinfo.getKey()).toString());
        break MISSING_BLOCK_LABEL_745;
_L10:
        return;
_L2:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("WeatherCitiesBackGround", ObjectSerializer.serialize(arraylist1));
_L11:
        boolean flag;
        ArrayList arraylist2;
        editor.commit();
        flag = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", false);
        arraylist2 = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesBackGround", ObjectSerializer.serialize(new ArrayList())));
        Log.d("Ambient", (new StringBuilder()).append("WeatherController-updateWeatherCopyFile before delete count=").append(arraylist2.size()).append(" currentCityState=").append(flag).toString());
        if (5 - arraylist2.size() <= 0)
            continue; /* Loop/switch isn't completed */
        if (arraylist2.size() != 0 || flag)
            break MISSING_BLOCK_LABEL_702;
        removeTimeStampFromWD();
        removeFilesFromWd(5 - arraylist2.size());
        if (flag) goto _L10; else goto _L9
_L9:
        try
        {
            currentCityDisabled();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
          goto _L10
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
          goto _L11
_L4:
        i++;
          goto _L12
        j++;
          goto _L13
    }
}
